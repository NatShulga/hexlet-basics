import React, { Suspense } from "react";
import { usePage } from "@inertiajs/react";
import { getKeyForStoringLessonCode } from "@/lib/utils.ts";
import useLocalStorageState from "use-local-storage-state";

import { neededPreview } from "@/lib/utils.ts";
import { useAppSelector } from "../slices/index.ts";
import type { LessonSharedProps } from "../types.ts";
import ControlBox from "./ControlBox.tsx";
import TabsBox from "./TabsBox.tsx";

// or window is not defined in ssr mode
const HTMLPreview = React.lazy(() => import("./HTMLPreview.tsx"));

function App() {
  const { course, lesson } = usePage<LessonSharedProps>().props;

  // const content = useAppSelector((state) => state.content);
  const currentTab = useAppSelector((state) => state.currentTab);

  const [code, setCode, { removeItem }] = useLocalStorageState<string>(
    getKeyForStoringLessonCode(lesson),
    { defaultValue: lesson.prepared_code || "" },
  );

  const renderHtmlPreview = () => {
    if (currentTab !== "editor") {
      return null;
    }
    if (!neededPreview(course.slug!)) {
      return null;
    }

    return (
      <Suspense fallback={<div>Loading...</div>}>
        <HTMLPreview html={code} />
      </Suspense>
    );
  };

  return (
    <>
      <TabsBox code={code} setCode={setCode} />
      {renderHtmlPreview()}
      <ControlBox removeItem={removeItem} />
    </>
  );
}

export default App;

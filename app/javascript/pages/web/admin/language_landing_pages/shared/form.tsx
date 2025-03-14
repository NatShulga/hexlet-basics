import { useTranslation } from "react-i18next";

import {
  XCheck,
  XForm,
  XInput,
  XSelect,
  XStateEvent,
} from "@/components/forms";
import { type HTTPVerb, Submit } from "use-inertia-form";

import type { SharedProps } from "@/types";
import type { LanguageLandingPageCrud } from "@/types/serializers";
import { usePage } from "@inertiajs/react";

type Props = {
  data: LanguageLandingPageCrud;
  url: string;
  method?: HTTPVerb;
};

// const locales = [
//   { name: "Russian", code: "ru" },
//   { name: "English", code: "en" },
// ];

export default function Form({ data, url, method }: Props) {
  const { t } = useTranslation();
  const { courseCategories, landingPagesForLists } =
    usePage<SharedProps>().props;
  const { t: tHelpers } = useTranslation("helpers");
  // const { t: tEnums } = useTranslation("enumerize");
  // const languageProgressEnum = tEnums("language.progress", {
  //   returnObjects: true,
  // });
  // const languageProgressEnumOptions = enumToOptions(languageProgressEnum);
  //
  // const languageLearnAsEnum = tEnums("language.learn_as", {
  //   returnObjects: true,
  // });
  // const languageLearnAsEnumOptions = enumToOptions(languageLearnAsEnum);

  return (
    <XForm method={method} model="language_landing_page" data={data} to={url}>
      <XCheck name="main" />
      <XCheck name="listed" />
      <XStateEvent fieldName="state" />
      <XSelect
        name="language_category_id"
        labelField="name"
        valueField="id"
        items={courseCategories}
      />
      <XSelect
        name="language_id"
        labelField="header"
        valueField="language_id"
        items={landingPagesForLists}
      />
      <XInput name="slug" />
      <XInput name="order" />
      <XInput name="meta_title" />
      <XInput
        as="textarea"
        style={{ height: "150px" }}
        name="meta_description"
      />
      <XInput name="header" />
      <XInput as="textarea" style={{ height: "150px" }} name="description" />

      <XInput name="used_in_header" />
      <XInput
        as="textarea"
        style={{ height: "150px" }}
        name="used_in_description"
      />

      <XInput name="outcomes_header" />
      <XInput
        as="textarea"
        style={{ height: "150px" }}
        name="outcomes_description"
      />

      <Submit className="btn w-100 btn-lg btn-primary mb-3">
        {tHelpers("submit.save")}
      </Submit>
    </XForm>
  );
}

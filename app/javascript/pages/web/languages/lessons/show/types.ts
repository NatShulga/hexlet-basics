import type { SharedProps } from "@/types";
import type {
  Language,
  LanguageCategory,
  LanguageLesson,
  LanguageLessonMember,
} from "@/types/serializers";

export type LessonSharedProps = SharedProps & {
  courseCategory: LanguageCategory;
  course: Language;
  prevLesson?: LanguageLesson;
  nextLesson?: LanguageLesson;
  lessonMember?: LanguageLessonMember;
  lesson: LanguageLesson;
  lessons: LanguageLesson[];
};

export type CheckingResult = "error" | "passed" | "failed" | "failed-infinity" | null

export interface RootState {
  processState: "checked" | "unchecked" | "checking";
  currentTab: "editor" | "output" | "tests" | "solution";
  finished: boolean;
  result: CheckingResult
  resetsCount: number;
  defaultCode: string;
  output: string;
  passed: boolean;
  content: string;
  focusesCount: number;
  startTime: number;
  solutionState: "shown" | "canBeShown" | "notAllowedToBeShown";
}

export interface CheckingResponse {
  result: CheckingResult;
  output: string;
  passed: boolean;
}

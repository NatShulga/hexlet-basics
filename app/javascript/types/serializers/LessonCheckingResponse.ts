// Typelizer digest 12aadb8b64c842f5cd7b58b6a56ac5f4
//
// DO NOT MODIFY: This file was automatically generated by Typelizer.

type LessonCheckingResponse = {
  passed: boolean;
  output: string;
  result: "passed" | "failed" | "failed-infinity";
  status: number;
  lesson_has_been_finished: boolean;
  language_has_been_finished: boolean;
}

export default LessonCheckingResponse;

import type { PropsWithChildren } from "react";
import { Container } from "react-bootstrap";

import { useTranslation } from "react-i18next";

import ApplicationLayout from "@/pages/layouts/ApplicationLayout";
import type { Language, LanguageCategory, User } from "@/types/serializers";

import CourseBlock from "@/components/CourseBlock";
import * as Routes from "@/routes.js";

type Props = PropsWithChildren & {
  categoryCourses: Language[];
  courses: Language[];
  courseCategory: LanguageCategory;
  user: User;
};

export default function New({ courseCategory, categoryCourses }: Props) {
  const { t } = useTranslation();

  const header = t("language_categories.show.header", {
    name: courseCategory.name!,
  });

  const items = [
    {
      name: header,
      url: Routes.language_category_path(courseCategory.slug!),
    },
  ];

  return (
    <ApplicationLayout
      items={items}
      header={header}
    >
      <Container>
        <div className="row row-cols-2 row-cols-md-3 row-cols-lg-4">
          {categoryCourses.map((course) => (
            <div className="col mb-3" key={course.id}>
              <CourseBlock course={course} />
            </div>
          ))}
        </div>
      </Container>
    </ApplicationLayout>
  );
}

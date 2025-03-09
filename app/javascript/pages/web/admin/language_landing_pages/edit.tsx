import AdminLayout from "@/pages/layouts/AdminLayout";
import * as Routes from "@/routes.js";
import type { LanguageLandingPageCrud } from "@/types/serializers";
import { useTranslation } from "react-i18next";

import Form from "./shared/form";
import { Menu } from "./shared/menu";

type Props = {
  landingPageDto: LanguageLandingPageCrud;
  // courseVersions: LanguageVersion[];
};

export default function Edit({ landingPageDto }: Props) {
  const { t } = useTranslation();

  return (
    <AdminLayout
      header={t("admin.language_landing_pages.edit.header", {
        id: landingPageDto.language_landing_page.header,
      })}
    >
      <Menu data={landingPageDto} />
      <Form
        method="patch"
        data={landingPageDto}
        url={Routes.admin_language_landing_page_path(
          landingPageDto.language_landing_page.id,
        )}
      />
    </AdminLayout>
  );
}

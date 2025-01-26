import { Nav } from "react-bootstrap";
import { useTranslation } from "react-i18next";

import { url } from "@/lib/utils";
import * as Routes from "@/routes.js";
import type { User } from "@/types/serializers";

type Props = {
  data?: User;
};

export function Menu({ data }: Props) {
  const { t: tHelpers } = useTranslation("helpers");
  return (
    <Nav variant="tabs" className="mb-4" activeKey={url({ onlyPath: true })}>
      <Nav.Item>
        <Nav.Link
          className="link-body-emphasis"
          href={Routes.admin_management_users_path()}
        >
          {tHelpers("crud.list")}
        </Nav.Link>
      </Nav.Item>
      {data && (
        <Nav.Item>
          <Nav.Link
            className="link-body-emphasis"
            href={Routes.edit_admin_management_user_path(data.id)}
          >
            {tHelpers("crud.editing")}
          </Nav.Link>
        </Nav.Item>
      )}
    </Nav>
  );
}


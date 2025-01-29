import { useTranslation } from "react-i18next";

import { XEditor, XFile, XForm, XInput, XSelect, XStateEvent } from "@/components/forms";
import type { BlogPost } from "@/types/serializers";
import { Col, Row } from "react-bootstrap";
import { type HTTPVerb, Submit } from "use-inertia-form";

import * as Routes from "@/routes.js";

type Props = {
  data: BlogPost;
  url: string;
  method?: HTTPVerb;
};

const locales = [
  { name: "Russian", code: "ru" },
  { name: "English", code: "en" },
];

export default function Form({ data, url, method }: Props) {
  const { t } = useTranslation();
  const { t: tHelpers } = useTranslation("helpers");

  return (
    <Row>
      <Col className="col-7">
        <XForm
          method={method}
          model="blog_post"
          data={{ blog_post: data }}
          to={url}
        >
          <XStateEvent
            fieldName="state"
          />
          <XSelect
            name="locale"
            labelField="name"
            valueField="code"
            items={locales}
          />
          <XInput name="name" />
          <XFile fieldName="cover_thumb_variant" name="cover" />
          <XInput name="state" />
          <XInput name="slug" />
          <XInput name="description" as="textarea" style={{ height: "100px" }} />
          <XInput name="body" as="textarea" style={{ height: "500px" }} />
          <Submit className="btn w-100 btn-lg btn-primary mb-3">
            {tHelpers("submit.save")}
          </Submit>
        </XForm>
      </Col>
    </Row>
  );
}

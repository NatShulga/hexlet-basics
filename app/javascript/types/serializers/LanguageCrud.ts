// Typelizer digest 8d8af181519a6e8ffcbed0edfd466d81
//
// DO NOT MODIFY: This file was automatically generated by Typelizer.

type LanguageCrudData = {
  id: number;
  progress: "completed" | "in_development" | "draft" | null;
  learn_as: "first_language" | "second_language" | null;
  slug: string | null;
}

type LanguageCrud = {
  language: LanguageCrudData;
  meta: { cover_signed_id: string, cover_thumb_url: string, repository_url: string, slug: string };
}

export default LanguageCrud;

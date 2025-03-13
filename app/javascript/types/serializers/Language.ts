// Typelizer digest 8eaf80fe8a8bd8a2e6cdddd833dd61a5
//
// DO NOT MODIFY: This file was automatically generated by Typelizer.
import type {LanguageVersion} from '@/types'

type Language = {
  id: number;
  slug: string | null;
  learn_as: "first_language" | "second_language" | null;
  progress: "completed" | "in_development" | "draft" | null;
  category_id: number | null;
  current_version_id: number | null;
  current_version: LanguageVersion;
  repository_url: string | null;
  main_landing_slug: string | null;
  cover_list_variant: string;
  cover_thumb_variant: string;
  rating_count: number;
  rating_value: number;
}

export default Language;

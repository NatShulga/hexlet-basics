// Typelizer digest a8a37117b1fede16342124fe36fb9dce
//
// DO NOT MODIFY: This file was automatically generated by Typelizer.
import type {User} from '@/types'

type BlogPost = {
  creator: User;
  id: number;
  name: string | null;
  slug: string | null;
  description: string | null;
  body: string | null;
  state: string | null;
  locale: string | null;
  created_at: string;
  cover_thumb_variant: string | null;
  cover_list_variant: string | null;
  cover_main_variant: string | null;
  reading_time: number;
  likes_count: number;
}

export default BlogPost;

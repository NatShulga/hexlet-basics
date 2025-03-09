// Typelizer digest 37b1bafebef47c998555e537fd55bc50
//
// DO NOT MODIFY: This file was automatically generated by Typelizer.

type BlogPostCrudData = {
  id: number;
  name: string | null;
  slug: string | null;
  description: string | null;
  body: string | null;
}

type BlogPostCrud = {
  blog_post: BlogPostCrudData;
  meta: { state_events: Array<[string, string]>};
}

export default BlogPostCrud;

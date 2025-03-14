import type { Locale, SharedProps } from "@/types";
import type { PropsWithChildren } from "react";
import React from "react";
import { useState } from "react";
import { useTranslation } from "react-i18next";

import * as Routes from "@/routes.js";
import type {
  LanguageSitemapLandingPage,
  LanguageSitemapLesson,
  SitemapBlogPost,
} from "@/types/serializers";

import ApplicationLayout from "@/pages/layouts/ApplicationLayout";
import { Collapse, Container } from "react-bootstrap";

type Props = PropsWithChildren & {
  title: string;
  orderedLocales: Locale[];
  landingPagesByLocale: Record<Locale, LanguageSitemapLandingPage[]>;
  lessonsByLocaleAndLanguageId: Record<
    Locale,
    Record<number, LanguageSitemapLesson[]>
  >;
  blogPostsByLocale: Record<Locale, SitemapBlogPost[]>;
};

type LandingPagesBlockProps = {
  locale: Locale;
  landingPages: LanguageSitemapLandingPage[];
  lessonsByLocaleAndLanguageId: Props["lessonsByLocaleAndLanguageId"];
};

type LessonsBlockProps = {
  lessons: LanguageSitemapLesson[];
  landingPage: LanguageSitemapLandingPage;
};

type BlogPostsBlockProps = {
  posts: SitemapBlogPost[];
  opened: boolean;
};

const getSuffix = (locale: Locale) => (locale === "en" ? null : locale);

function LessonsBlock({ lessons, landingPage }: LessonsBlockProps) {
  return (
    <ul className="m-0 ms-3 list-unstyled pb-2">
      {lessons.map((lesson) => (
        <li key={`${landingPage.id}-${lesson.id}`}>
          <a
            className="text-decoration-none"
            href={Routes.language_lesson_path(landingPage.slug, lesson.slug, {
              suffix: getSuffix(lesson.locale),
            })}
          >
            <span className="me-1">{lesson.natural_order}.</span>
            {lesson.name}
          </a>
        </li>
      ))}
    </ul>
  );
}

function LadingPagesBlock({
  landingPages,
  lessonsByLocaleAndLanguageId,
}: LandingPagesBlockProps) {
  const filteredLandingPages = landingPages.filter(
    (landingPage) =>
      lessonsByLocaleAndLanguageId[landingPage.locale][landingPage.language_id],
  );

  const [activeLandingPageIdx, setActiveLandingPageIdx] = useState<
    number | null
  >(null);

  return (
    <div className="ms-3">
      {filteredLandingPages.map((landingPage, index) => {
        const landingPageOpened = index === activeLandingPageIdx;

        return (
          <div key={landingPage.id}>
            <a
              className="text-decoration-none text-body"
              href={Routes.language_path(landingPage.slug, {
                suffix: getSuffix(landingPage.locale),
              })}
            >
              {landingPage.header}
            </a>
            <button
              type="button"
              onClick={() =>
                setActiveLandingPageIdx(landingPageOpened ? null : index)
              }
              aria-controls={String(index)}
              className="btn btn-link py-0 shadow-none"
            >
              <span
                className={`bi ${landingPageOpened ? "bi-chevron-up" : "bi-chevron-down"}`}
              />
            </button>
            <Collapse in={landingPageOpened}>
              <div id={String(index)}>
                <LessonsBlock
                  landingPage={landingPage}
                  lessons={
                    lessonsByLocaleAndLanguageId[landingPage.locale][
                      landingPage.language_id
                    ]
                  }
                />
              </div>
            </Collapse>
          </div>
        );
      })}
    </div>
  );
}

function BlogPostsBlock({ posts, opened }: BlogPostsBlockProps) {
  return (
    <Collapse in={opened}>
      <ul className="m-0 ms-3 list-unstyled" id="blog-collapse">
        {posts.map((post) => (
          <li key={post.id}>
            <a
              className="text-decoration-none"
              href={Routes.blog_post_path(post.slug, {
                suffix: getSuffix(post.locale),
              })}
            >
              {post.name}
            </a>
          </li>
        ))}
      </ul>
    </Collapse>
  );
}

// NOTE для карты сайта выводим ссылки для всех локалей
export default function SiteMap({
  title,
  orderedLocales,
  landingPagesByLocale,
  lessonsByLocaleAndLanguageId,
  blogPostsByLocale,
}: Props) {
  const { t } = useTranslation();

  return (
    <ApplicationLayout header={title}>
      {orderedLocales.map((locale) => {
        const [blogOpened, setBlogOpened] = useState(false);

        return (
          <Container key={locale} className="mb-5">
            <h2 className="h5 mb-3">
              <a
                id={`main-${locale}`}
                className="text-decoration-none link-body-emphasis"
                href={Routes.root_path({ suffix: getSuffix(locale) })}
              >
                {t("home.sitemap.home", { lng: locale })}
              </a>
            </h2>
            <h2 className="h5 mb-3">
              <a
                id={`courses-${locale}`}
                className="text-decoration-none link-body-emphasis"
                href={`#courses-${locale}`}
              >
                {t("home.languages.courses", { lng: locale })}
              </a>
            </h2>
            <LadingPagesBlock
              locale={locale}
              landingPages={landingPagesByLocale[locale]}
              lessonsByLocaleAndLanguageId={lessonsByLocaleAndLanguageId}
            />

            <h2 className="h5 my-3">
              <a
                id={`blog-${locale}`}
                className="text-decoration-none link-body-emphasis"
                href={`#blog-${locale}`}
              >
                {t("blog_posts.index.header", { lng: locale })}
              </a>
              <button
                type="button"
                onClick={() => setBlogOpened(!blogOpened)}
                aria-controls="blog-collapse"
                className="btn btn-link py-0 shadow-none"
              >
                <span
                  className={`bi ${blogOpened ? "bi-chevron-up" : "bi-chevron-down"}`}
                />
              </button>
            </h2>
            <BlogPostsBlock
              posts={blogPostsByLocale[locale]}
              opened={blogOpened}
            />
          </Container>
        );
      })}
    </ApplicationLayout>
  );
}

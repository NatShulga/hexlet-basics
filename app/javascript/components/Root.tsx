import { PrimeReactProvider } from "primereact/api";
import * as Routes from "@/routes.js";
import pt from "@/primereact.ts";

import "react-bootstrap";

import type { SharedProps } from "@/types";
import i18next from "i18next";
import { initReactI18next } from "react-i18next";
import locales from "../locales.json";
import type { SetupOptions } from "node_modules/@inertiajs/react/types/createInertiaApp";
import type { PropsWithChildren } from "react";

const resources = locales;
const defaultNS = "web";

i18next.use(initReactI18next);
i18next.init({
  resources,
  defaultNS,
  ns: Object.keys(resources.ru),
  // lng: locale,
  interpolation: {
    prefix: "%{",
    suffix: "}",
    escapeValue: false, // react already safes from xss => https://www.i18next.com/translation-function/interpolation#unescape
  },
});

export default function Root(
  props: SetupOptions<HTMLElement, SharedProps>["props"] & PropsWithChildren,
) {
  // const { locale, suffix } = usePage<SharedProps>().props;
  const { locale, suffix } = props.initialPage.props;

  // useEffect?
  i18next.changeLanguage(locale);
  Routes.configure({ default_url_options: { suffix } });

  return (
    <PrimeReactProvider value={{ pt, unstyled: true }}>
      {props.children}
    </PrimeReactProvider>
  );
}

import path from "node:path";
import react from "@vitejs/plugin-react";
import { defineConfig, loadEnv } from "vite";
import ViteRails from "vite-plugin-rails";
import { sentryVitePlugin } from "@sentry/vite-plugin";

export default defineConfig(({ mode }) => {
  const env = loadEnv(mode, process.cwd(), "VITE_");

  return {
    build: {
      sourcemap: "hidden",
    },
    plugins: [
      react(),
      ViteRails({
        compress: mode !== "test",
      }),
      sentryVitePlugin({
        org: env.VITE_SENTRY_ORG,
        project: env.VITE_SENTRY_PROJECT,
        authToken: env.VITE_SENTRY_AUTH_TOKEN,
        release: {
          name: env.VITE_RELEASE_VERSION,
        },
        sourcemaps: {
          filesToDeleteAfterUpload: ["**/*.js.map"],
        },
        telemetry: false,
      }),
    ],
    server: {
      allowedHosts: [env.VITE_APP_HOST],
      hmr: {
        clientPort: 443,
      },
    },
    ssr: {
      noExternal: [
        "lowlight",
        "highlight.js",
        "react-syntax-highlighter",
        "use-inertia-form",
        "lodash",
        "monaco-editor",
        "primereact",
        "posthog-js",
        "react-timer-hook",
        "@monaco-editor/react",
        "react-use",
      ], // Ensure it's handled correctly
    },
    resolve: {
      alias: {
        // "~bootstrap": path.resolve(__dirname, "node_modules/bootstrap"),
        "@": path.resolve(__dirname, "./app/javascript"),
      },
    },
  };
});

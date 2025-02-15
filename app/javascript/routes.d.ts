/**
 * @file Generated by js-routes 2.3.5. Based on Rails 8.0.1 routes of HexletBasics::Application.
 * @version 116dcd1bd5b145be4fd32f74b5f5f111b8feac96ec1a167b6bd8af6a08832add
 * @see https://github.com/railsware/js-routes
 */
declare type Optional<T> = {
    [P in keyof T]?: T[P] | null;
};
declare type Collection<T> = Record<string, T>;
declare type BaseRouteParameter = string | boolean | Date | number | bigint;
declare type MethodRouteParameter = BaseRouteParameter | (() => BaseRouteParameter);
declare type ModelRouteParameter = {
    id: MethodRouteParameter;
} | {
    to_param: MethodRouteParameter;
} | {
    toParam: MethodRouteParameter;
};
declare type RequiredRouteParameter = BaseRouteParameter | ModelRouteParameter;
declare type OptionalRouteParameter = undefined | null | RequiredRouteParameter;
declare type QueryRouteParameter = OptionalRouteParameter | QueryRouteParameter[] | {
    [k: string]: QueryRouteParameter;
};
declare type RouteParameters = Collection<QueryRouteParameter>;
declare type Serializable = Collection<unknown>;
declare type Serializer = (value: Serializable) => string;
declare type RouteHelperExtras = {
    requiredParams(): string[];
    toString(): string;
};
declare type RequiredParameters<T extends number> = T extends 1 ? [RequiredRouteParameter] : T extends 2 ? [RequiredRouteParameter, RequiredRouteParameter] : T extends 3 ? [RequiredRouteParameter, RequiredRouteParameter, RequiredRouteParameter] : T extends 4 ? [
    RequiredRouteParameter,
    RequiredRouteParameter,
    RequiredRouteParameter,
    RequiredRouteParameter
] : RequiredRouteParameter[];
declare type RouteHelperOptions = RouteOptions & Collection<OptionalRouteParameter>;
declare type RouteHelper<T extends number = number> = ((...args: [...RequiredParameters<T>, RouteHelperOptions]) => string) & RouteHelperExtras;
declare type RouteHelpers = Collection<RouteHelper>;
declare type Configuration = {
    prefix: string;
    default_url_options: RouteParameters;
    special_options_key: string;
    serializer: Serializer;
};
interface RouterExposedMethods {
    config(): Configuration;
    configure(arg: Partial<Configuration>): Configuration;
    serialize: Serializer;
}
declare type KeywordUrlOptions = Optional<{
    host: string;
    protocol: string;
    subdomain: string;
    port: string | number;
    anchor: string;
    trailing_slash: boolean;
    script_name: string;
    params: RouteParameters;
}>;
declare type RouteOptions = KeywordUrlOptions & RouteParameters;
declare type PartsTable = Collection<{
    r?: boolean;
    d?: OptionalRouteParameter;
}>;
declare type ModuleType = "CJS" | "AMD" | "UMD" | "ESM" | "DTS" | "NIL";
declare const RubyVariables: {
    PREFIX: string;
    DEPRECATED_FALSE_PARAMETER_BEHAVIOR: boolean;
    SPECIAL_OPTIONS_KEY: string;
    DEFAULT_URL_OPTIONS: RouteParameters;
    SERIALIZER: Serializer;
    ROUTES_OBJECT: RouteHelpers;
    MODULE_TYPE: ModuleType;
    WRAPPER: <T>(callback: T) => T;
};
declare const define: undefined | (((arg: unknown[], callback: () => unknown) => void) & {
    amd?: unknown;
});
declare const module: {
    exports: unknown;
} | undefined;
export const configure: RouterExposedMethods['configure'];

export const config: RouterExposedMethods['config'];

export const serialize: RouterExposedMethods['serialize'];

/**
 * Generates rails route to
 * (/:suffix)/account/profile(.:format)
 * @param {object | undefined} options
 * @returns {string} route path
 */
export const account_profile_path: ((
  options?: {suffix?: OptionalRouteParameter, format?: OptionalRouteParameter} & RouteOptions
) => string) & RouteHelperExtras;

/**
 * Generates rails route to
 * (/:suffix)/admin/api/users/:id(.:format)
 * @param {any} id
 * @param {object | undefined} options
 * @returns {string} route path
 */
export const admin_api_user_path: ((
  id: RequiredRouteParameter,
  options?: {suffix?: OptionalRouteParameter, format?: OptionalRouteParameter} & RouteOptions
) => string) & RouteHelperExtras;

/**
 * Generates rails route to
 * (/:suffix)/admin/api/users(.:format)
 * @param {object | undefined} options
 * @returns {string} route path
 */
export const admin_api_users_path: ((
  options?: {suffix?: OptionalRouteParameter, format?: OptionalRouteParameter} & RouteOptions
) => string) & RouteHelperExtras;

/**
 * Generates rails route to
 * (/:suffix)/admin/blog_posts/:id(.:format)
 * @param {any} id
 * @param {object | undefined} options
 * @returns {string} route path
 */
export const admin_blog_post_path: ((
  id: RequiredRouteParameter,
  options?: {suffix?: OptionalRouteParameter, format?: OptionalRouteParameter} & RouteOptions
) => string) & RouteHelperExtras;

/**
 * Generates rails route to
 * (/:suffix)/admin/blog_posts(.:format)
 * @param {object | undefined} options
 * @returns {string} route path
 */
export const admin_blog_posts_path: ((
  options?: {suffix?: OptionalRouteParameter, format?: OptionalRouteParameter} & RouteOptions
) => string) & RouteHelperExtras;

/**
 * Generates rails route to
 * (/:suffix)/admin/languages/:id(.:format)
 * @param {any} id
 * @param {object | undefined} options
 * @returns {string} route path
 */
export const admin_language_path: ((
  id: RequiredRouteParameter,
  options?: {suffix?: OptionalRouteParameter, format?: OptionalRouteParameter} & RouteOptions
) => string) & RouteHelperExtras;

/**
 * Generates rails route to
 * (/:suffix)/admin/languages/:language_id/versions(.:format)
 * @param {any} language_id
 * @param {object | undefined} options
 * @returns {string} route path
 */
export const admin_language_versions_path: ((
  language_id: RequiredRouteParameter,
  options?: {suffix?: OptionalRouteParameter, format?: OptionalRouteParameter} & RouteOptions
) => string) & RouteHelperExtras;

/**
 * Generates rails route to
 * (/:suffix)/admin/languages(.:format)
 * @param {object | undefined} options
 * @returns {string} route path
 */
export const admin_languages_path: ((
  options?: {suffix?: OptionalRouteParameter, format?: OptionalRouteParameter} & RouteOptions
) => string) & RouteHelperExtras;

/**
 * Generates rails route to
 * (/:suffix)/admin/management/users/:id(.:format)
 * @param {any} id
 * @param {object | undefined} options
 * @returns {string} route path
 */
export const admin_management_user_path: ((
  id: RequiredRouteParameter,
  options?: {suffix?: OptionalRouteParameter, format?: OptionalRouteParameter} & RouteOptions
) => string) & RouteHelperExtras;

/**
 * Generates rails route to
 * (/:suffix)/admin/management/users(.:format)
 * @param {object | undefined} options
 * @returns {string} route path
 */
export const admin_management_users_path: ((
  options?: {suffix?: OptionalRouteParameter, format?: OptionalRouteParameter} & RouteOptions
) => string) & RouteHelperExtras;

/**
 * Generates rails route to
 * (/:suffix)/admin/reviews/:id(.:format)
 * @param {any} id
 * @param {object | undefined} options
 * @returns {string} route path
 */
export const admin_review_path: ((
  id: RequiredRouteParameter,
  options?: {suffix?: OptionalRouteParameter, format?: OptionalRouteParameter} & RouteOptions
) => string) & RouteHelperExtras;

/**
 * Generates rails route to
 * (/:suffix)/admin/reviews(.:format)
 * @param {object | undefined} options
 * @returns {string} route path
 */
export const admin_reviews_path: ((
  options?: {suffix?: OptionalRouteParameter, format?: OptionalRouteParameter} & RouteOptions
) => string) & RouteHelperExtras;

/**
 * Generates rails route to
 * (/:suffix)/admin(.:format)
 * @param {object | undefined} options
 * @returns {string} route path
 */
export const admin_root_path: ((
  options?: {suffix?: OptionalRouteParameter, format?: OptionalRouteParameter} & RouteOptions
) => string) & RouteHelperExtras;

/**
 * Generates rails route to
 * (/:suffix)/api/languages/:id(.:format)
 * @param {any} id
 * @param {object | undefined} options
 * @returns {string} route path
 */
export const api_language_path: ((
  id: RequiredRouteParameter,
  options?: {suffix?: OptionalRouteParameter, format?: OptionalRouteParameter} & RouteOptions
) => string) & RouteHelperExtras;

/**
 * Generates rails route to
 * (/:suffix)/api/languages/:language_id/lessons/:id(.:format)
 * @param {any} language_id
 * @param {any} id
 * @param {object | undefined} options
 * @returns {string} route path
 */
export const api_language_lesson_path: ((
  language_id: RequiredRouteParameter,
  id: RequiredRouteParameter,
  options?: {suffix?: OptionalRouteParameter, format?: OptionalRouteParameter} & RouteOptions
) => string) & RouteHelperExtras;

/**
 * Generates rails route to
 * (/:suffix)/api/languages/:language_id/lessons(.:format)
 * @param {any} language_id
 * @param {object | undefined} options
 * @returns {string} route path
 */
export const api_language_lessons_path: ((
  language_id: RequiredRouteParameter,
  options?: {suffix?: OptionalRouteParameter, format?: OptionalRouteParameter} & RouteOptions
) => string) & RouteHelperExtras;

/**
 * Generates rails route to
 * (/:suffix)/api/languages(.:format)
 * @param {object | undefined} options
 * @returns {string} route path
 */
export const api_languages_path: ((
  options?: {suffix?: OptionalRouteParameter, format?: OptionalRouteParameter} & RouteOptions
) => string) & RouteHelperExtras;

/**
 * Generates rails route to
 * (/:suffix)/api/partners/yandex_market/languages(.:format)
 * @param {object | undefined} options
 * @returns {string} route path
 */
export const api_partners_yandex_market_languages_path: ((
  options?: {suffix?: OptionalRouteParameter, format?: OptionalRouteParameter} & RouteOptions
) => string) & RouteHelperExtras;

/**
 * Generates rails route to
 * (/:suffix)/blog_posts/:id(.:format)
 * @param {any} id
 * @param {object | undefined} options
 * @returns {string} route path
 */
export const blog_post_path: ((
  id: RequiredRouteParameter,
  options?: {suffix?: OptionalRouteParameter, format?: OptionalRouteParameter} & RouteOptions
) => string) & RouteHelperExtras;

/**
 * Generates rails route to
 * (/:suffix)/blog_posts(.:format)
 * @param {object | undefined} options
 * @returns {string} route path
 */
export const blog_posts_path: ((
  options?: {suffix?: OptionalRouteParameter, format?: OptionalRouteParameter} & RouteOptions
) => string) & RouteHelperExtras;

/**
 * Generates rails route to
 * (/:suffix)/api/lessons/:id/check(.:format)
 * @param {any} id
 * @param {object | undefined} options
 * @returns {string} route path
 */
export const check_api_lesson_path: ((
  id: RequiredRouteParameter,
  options?: {suffix?: OptionalRouteParameter, format?: OptionalRouteParameter} & RouteOptions
) => string) & RouteHelperExtras;

/**
 * Generates rails route to
 * (/:suffix)/account/profile/edit(.:format)
 * @param {object | undefined} options
 * @returns {string} route path
 */
export const edit_account_profile_path: ((
  options?: {suffix?: OptionalRouteParameter, format?: OptionalRouteParameter} & RouteOptions
) => string) & RouteHelperExtras;

/**
 * Generates rails route to
 * (/:suffix)/admin/api/users/:id/edit(.:format)
 * @param {any} id
 * @param {object | undefined} options
 * @returns {string} route path
 */
export const edit_admin_api_user_path: ((
  id: RequiredRouteParameter,
  options?: {suffix?: OptionalRouteParameter, format?: OptionalRouteParameter} & RouteOptions
) => string) & RouteHelperExtras;

/**
 * Generates rails route to
 * (/:suffix)/admin/blog_posts/:id/edit(.:format)
 * @param {any} id
 * @param {object | undefined} options
 * @returns {string} route path
 */
export const edit_admin_blog_post_path: ((
  id: RequiredRouteParameter,
  options?: {suffix?: OptionalRouteParameter, format?: OptionalRouteParameter} & RouteOptions
) => string) & RouteHelperExtras;

/**
 * Generates rails route to
 * (/:suffix)/admin/languages/:id/edit(.:format)
 * @param {any} id
 * @param {object | undefined} options
 * @returns {string} route path
 */
export const edit_admin_language_path: ((
  id: RequiredRouteParameter,
  options?: {suffix?: OptionalRouteParameter, format?: OptionalRouteParameter} & RouteOptions
) => string) & RouteHelperExtras;

/**
 * Generates rails route to
 * (/:suffix)/admin/management/users/:id/edit(.:format)
 * @param {any} id
 * @param {object | undefined} options
 * @returns {string} route path
 */
export const edit_admin_management_user_path: ((
  id: RequiredRouteParameter,
  options?: {suffix?: OptionalRouteParameter, format?: OptionalRouteParameter} & RouteOptions
) => string) & RouteHelperExtras;

/**
 * Generates rails route to
 * (/:suffix)/admin/reviews/:id/edit(.:format)
 * @param {any} id
 * @param {object | undefined} options
 * @returns {string} route path
 */
export const edit_admin_review_path: ((
  id: RequiredRouteParameter,
  options?: {suffix?: OptionalRouteParameter, format?: OptionalRouteParameter} & RouteOptions
) => string) & RouteHelperExtras;

/**
 * Generates rails route to
 * (/:suffix)/password/edit(.:format)
 * @param {object | undefined} options
 * @returns {string} route path
 */
export const edit_password_path: ((
  options?: {suffix?: OptionalRouteParameter, format?: OptionalRouteParameter} & RouteOptions
) => string) & RouteHelperExtras;

/**
 * Generates rails route to
 * (/:suffix)/languages/:id(.:format)
 * @param {any} id
 * @param {object | undefined} options
 * @returns {string} route path
 */
export const language_path: ((
  id: RequiredRouteParameter,
  options?: {suffix?: OptionalRouteParameter, format?: OptionalRouteParameter} & RouteOptions
) => string) & RouteHelperExtras;

/**
 * Generates rails route to
 * (/:suffix)/language_categories(.:format)
 * @param {object | undefined} options
 * @returns {string} route path
 */
export const language_categories_path: ((
  options?: {suffix?: OptionalRouteParameter, format?: OptionalRouteParameter} & RouteOptions
) => string) & RouteHelperExtras;

/**
 * Generates rails route to
 * (/:suffix)/language_categories/:id(.:format)
 * @param {any} id
 * @param {object | undefined} options
 * @returns {string} route path
 */
export const language_category_path: ((
  id: RequiredRouteParameter,
  options?: {suffix?: OptionalRouteParameter, format?: OptionalRouteParameter} & RouteOptions
) => string) & RouteHelperExtras;

/**
 * Generates rails route to
 * (/:suffix)/languages/:language_id/lessons/:id(.:format)
 * @param {any} language_id
 * @param {any} id
 * @param {object | undefined} options
 * @returns {string} route path
 */
export const language_lesson_path: ((
  language_id: RequiredRouteParameter,
  id: RequiredRouteParameter,
  options?: {suffix?: OptionalRouteParameter, format?: OptionalRouteParameter} & RouteOptions
) => string) & RouteHelperExtras;

/**
 * Generates rails route to
 * (/:suffix)/admin/api/users/new(.:format)
 * @param {object | undefined} options
 * @returns {string} route path
 */
export const new_admin_api_user_path: ((
  options?: {suffix?: OptionalRouteParameter, format?: OptionalRouteParameter} & RouteOptions
) => string) & RouteHelperExtras;

/**
 * Generates rails route to
 * (/:suffix)/admin/blog_posts/new(.:format)
 * @param {object | undefined} options
 * @returns {string} route path
 */
export const new_admin_blog_post_path: ((
  options?: {suffix?: OptionalRouteParameter, format?: OptionalRouteParameter} & RouteOptions
) => string) & RouteHelperExtras;

/**
 * Generates rails route to
 * (/:suffix)/admin/languages/new(.:format)
 * @param {object | undefined} options
 * @returns {string} route path
 */
export const new_admin_language_path: ((
  options?: {suffix?: OptionalRouteParameter, format?: OptionalRouteParameter} & RouteOptions
) => string) & RouteHelperExtras;

/**
 * Generates rails route to
 * (/:suffix)/admin/reviews/new(.:format)
 * @param {object | undefined} options
 * @returns {string} route path
 */
export const new_admin_review_path: ((
  options?: {suffix?: OptionalRouteParameter, format?: OptionalRouteParameter} & RouteOptions
) => string) & RouteHelperExtras;

/**
 * Generates rails route to
 * /rails/conductor/action_mailbox/inbound_emails/new(.:format)
 * @param {object | undefined} options
 * @returns {string} route path
 */
export const new_rails_conductor_inbound_email_path: ((
  options?: {format?: OptionalRouteParameter} & RouteOptions
) => string) & RouteHelperExtras;

/**
 * Generates rails route to
 * /rails/conductor/action_mailbox/inbound_emails/sources/new(.:format)
 * @param {object | undefined} options
 * @returns {string} route path
 */
export const new_rails_conductor_inbound_email_source_path: ((
  options?: {format?: OptionalRouteParameter} & RouteOptions
) => string) & RouteHelperExtras;

/**
 * Generates rails route to
 * (/:suffix)/remind_password/new(.:format)
 * @param {object | undefined} options
 * @returns {string} route path
 */
export const new_remind_password_path: ((
  options?: {suffix?: OptionalRouteParameter, format?: OptionalRouteParameter} & RouteOptions
) => string) & RouteHelperExtras;

/**
 * Generates rails route to
 * (/:suffix)/session/new(.:format)
 * @param {object | undefined} options
 * @returns {string} route path
 */
export const new_session_path: ((
  options?: {suffix?: OptionalRouteParameter, format?: OptionalRouteParameter} & RouteOptions
) => string) & RouteHelperExtras;

/**
 * Generates rails route to
 * (/:suffix)/users/new(.:format)
 * @param {object | undefined} options
 * @returns {string} route path
 */
export const new_user_path: ((
  options?: {suffix?: OptionalRouteParameter, format?: OptionalRouteParameter} & RouteOptions
) => string) & RouteHelperExtras;

/**
 * Generates rails route to
 * (/:suffix)/languages/:language_id/lessons/:id/next_lesson(.:format)
 * @param {any} language_id
 * @param {any} id
 * @param {object | undefined} options
 * @returns {string} route path
 */
export const next_lesson_language_lesson_path: ((
  language_id: RequiredRouteParameter,
  id: RequiredRouteParameter,
  options?: {suffix?: OptionalRouteParameter, format?: OptionalRouteParameter} & RouteOptions
) => string) & RouteHelperExtras;

/**
 * Generates rails route to
 * (/:suffix)/pages/:id(.:format)
 * @param {any} id
 * @param {object | undefined} options
 * @returns {string} route path
 */
export const page_path: ((
  id: RequiredRouteParameter,
  options?: {suffix?: OptionalRouteParameter, format?: OptionalRouteParameter} & RouteOptions
) => string) & RouteHelperExtras;

/**
 * Generates rails route to
 * (/:suffix)/password(.:format)
 * @param {object | undefined} options
 * @returns {string} route path
 */
export const password_path: ((
  options?: {suffix?: OptionalRouteParameter, format?: OptionalRouteParameter} & RouteOptions
) => string) & RouteHelperExtras;

/**
 * Generates rails route to
 * (/:suffix)/languages/:language_id/lessons/:id/prev_lesson(.:format)
 * @param {any} language_id
 * @param {any} id
 * @param {object | undefined} options
 * @returns {string} route path
 */
export const prev_lesson_language_lesson_path: ((
  language_id: RequiredRouteParameter,
  id: RequiredRouteParameter,
  options?: {suffix?: OptionalRouteParameter, format?: OptionalRouteParameter} & RouteOptions
) => string) & RouteHelperExtras;

/**
 * Generates rails route to
 * /rails/active_storage/representations/redirect/:signed_blob_id/:variation_key/*filename(.:format)
 * @param {any} signed_blob_id
 * @param {any} variation_key
 * @param {any} filename
 * @param {object | undefined} options
 * @returns {string} route path
 */
export const rails_blob_representation_path: ((
  signed_blob_id: RequiredRouteParameter,
  variation_key: RequiredRouteParameter,
  filename: RequiredRouteParameter,
  options?: {format?: OptionalRouteParameter} & RouteOptions
) => string) & RouteHelperExtras;

/**
 * Generates rails route to
 * /rails/active_storage/representations/proxy/:signed_blob_id/:variation_key/*filename(.:format)
 * @param {any} signed_blob_id
 * @param {any} variation_key
 * @param {any} filename
 * @param {object | undefined} options
 * @returns {string} route path
 */
export const rails_blob_representation_proxy_path: ((
  signed_blob_id: RequiredRouteParameter,
  variation_key: RequiredRouteParameter,
  filename: RequiredRouteParameter,
  options?: {format?: OptionalRouteParameter} & RouteOptions
) => string) & RouteHelperExtras;

/**
 * Generates rails route to
 * /rails/conductor/action_mailbox/inbound_emails/:id(.:format)
 * @param {any} id
 * @param {object | undefined} options
 * @returns {string} route path
 */
export const rails_conductor_inbound_email_path: ((
  id: RequiredRouteParameter,
  options?: {format?: OptionalRouteParameter} & RouteOptions
) => string) & RouteHelperExtras;

/**
 * Generates rails route to
 * /rails/conductor/action_mailbox/:inbound_email_id/incinerate(.:format)
 * @param {any} inbound_email_id
 * @param {object | undefined} options
 * @returns {string} route path
 */
export const rails_conductor_inbound_email_incinerate_path: ((
  inbound_email_id: RequiredRouteParameter,
  options?: {format?: OptionalRouteParameter} & RouteOptions
) => string) & RouteHelperExtras;

/**
 * Generates rails route to
 * /rails/conductor/action_mailbox/:inbound_email_id/reroute(.:format)
 * @param {any} inbound_email_id
 * @param {object | undefined} options
 * @returns {string} route path
 */
export const rails_conductor_inbound_email_reroute_path: ((
  inbound_email_id: RequiredRouteParameter,
  options?: {format?: OptionalRouteParameter} & RouteOptions
) => string) & RouteHelperExtras;

/**
 * Generates rails route to
 * /rails/conductor/action_mailbox/inbound_emails/sources(.:format)
 * @param {object | undefined} options
 * @returns {string} route path
 */
export const rails_conductor_inbound_email_sources_path: ((
  options?: {format?: OptionalRouteParameter} & RouteOptions
) => string) & RouteHelperExtras;

/**
 * Generates rails route to
 * /rails/conductor/action_mailbox/inbound_emails(.:format)
 * @param {object | undefined} options
 * @returns {string} route path
 */
export const rails_conductor_inbound_emails_path: ((
  options?: {format?: OptionalRouteParameter} & RouteOptions
) => string) & RouteHelperExtras;

/**
 * Generates rails route to
 * /rails/active_storage/direct_uploads(.:format)
 * @param {object | undefined} options
 * @returns {string} route path
 */
export const rails_direct_uploads_path: ((
  options?: {format?: OptionalRouteParameter} & RouteOptions
) => string) & RouteHelperExtras;

/**
 * Generates rails route to
 * /rails/active_storage/disk/:encoded_key/*filename(.:format)
 * @param {any} encoded_key
 * @param {any} filename
 * @param {object | undefined} options
 * @returns {string} route path
 */
export const rails_disk_service_path: ((
  encoded_key: RequiredRouteParameter,
  filename: RequiredRouteParameter,
  options?: {format?: OptionalRouteParameter} & RouteOptions
) => string) & RouteHelperExtras;

/**
 * Generates rails route to
 * /up(.:format)
 * @param {object | undefined} options
 * @returns {string} route path
 */
export const rails_health_check_path: ((
  options?: {format?: OptionalRouteParameter} & RouteOptions
) => string) & RouteHelperExtras;

/**
 * Generates rails route to
 * /rails/info(.:format)
 * @param {object | undefined} options
 * @returns {string} route path
 */
export const rails_info_path: ((
  options?: {format?: OptionalRouteParameter} & RouteOptions
) => string) & RouteHelperExtras;

/**
 * Generates rails route to
 * /rails/info/notes(.:format)
 * @param {object | undefined} options
 * @returns {string} route path
 */
export const rails_info_notes_path: ((
  options?: {format?: OptionalRouteParameter} & RouteOptions
) => string) & RouteHelperExtras;

/**
 * Generates rails route to
 * /rails/info/properties(.:format)
 * @param {object | undefined} options
 * @returns {string} route path
 */
export const rails_info_properties_path: ((
  options?: {format?: OptionalRouteParameter} & RouteOptions
) => string) & RouteHelperExtras;

/**
 * Generates rails route to
 * /rails/info/routes(.:format)
 * @param {object | undefined} options
 * @returns {string} route path
 */
export const rails_info_routes_path: ((
  options?: {format?: OptionalRouteParameter} & RouteOptions
) => string) & RouteHelperExtras;

/**
 * Generates rails route to
 * /rails/mailers(.:format)
 * @param {object | undefined} options
 * @returns {string} route path
 */
export const rails_mailers_path: ((
  options?: {format?: OptionalRouteParameter} & RouteOptions
) => string) & RouteHelperExtras;

/**
 * Generates rails route to
 * /rails/action_mailbox/mailgun/inbound_emails/mime(.:format)
 * @param {object | undefined} options
 * @returns {string} route path
 */
export const rails_mailgun_inbound_emails_path: ((
  options?: {format?: OptionalRouteParameter} & RouteOptions
) => string) & RouteHelperExtras;

/**
 * Generates rails route to
 * /rails/action_mailbox/mandrill/inbound_emails(.:format)
 * @param {object | undefined} options
 * @returns {string} route path
 */
export const rails_mandrill_inbound_emails_path: ((
  options?: {format?: OptionalRouteParameter} & RouteOptions
) => string) & RouteHelperExtras;

/**
 * Generates rails route to
 * /rails/action_mailbox/mandrill/inbound_emails(.:format)
 * @param {object | undefined} options
 * @returns {string} route path
 */
export const rails_mandrill_inbound_health_check_path: ((
  options?: {format?: OptionalRouteParameter} & RouteOptions
) => string) & RouteHelperExtras;

/**
 * Generates rails route to
 * /rails/action_mailbox/postmark/inbound_emails(.:format)
 * @param {object | undefined} options
 * @returns {string} route path
 */
export const rails_postmark_inbound_emails_path: ((
  options?: {format?: OptionalRouteParameter} & RouteOptions
) => string) & RouteHelperExtras;

/**
 * Generates rails route to
 * /rails/action_mailbox/relay/inbound_emails(.:format)
 * @param {object | undefined} options
 * @returns {string} route path
 */
export const rails_relay_inbound_emails_path: ((
  options?: {format?: OptionalRouteParameter} & RouteOptions
) => string) & RouteHelperExtras;

/**
 * Generates rails route to
 * /rails/action_mailbox/sendgrid/inbound_emails(.:format)
 * @param {object | undefined} options
 * @returns {string} route path
 */
export const rails_sendgrid_inbound_emails_path: ((
  options?: {format?: OptionalRouteParameter} & RouteOptions
) => string) & RouteHelperExtras;

/**
 * Generates rails route to
 * /rails/active_storage/blobs/redirect/:signed_id/*filename(.:format)
 * @param {any} signed_id
 * @param {any} filename
 * @param {object | undefined} options
 * @returns {string} route path
 */
export const rails_service_blob_path: ((
  signed_id: RequiredRouteParameter,
  filename: RequiredRouteParameter,
  options?: {format?: OptionalRouteParameter} & RouteOptions
) => string) & RouteHelperExtras;

/**
 * Generates rails route to
 * /rails/active_storage/blobs/proxy/:signed_id/*filename(.:format)
 * @param {any} signed_id
 * @param {any} filename
 * @param {object | undefined} options
 * @returns {string} route path
 */
export const rails_service_blob_proxy_path: ((
  signed_id: RequiredRouteParameter,
  filename: RequiredRouteParameter,
  options?: {format?: OptionalRouteParameter} & RouteOptions
) => string) & RouteHelperExtras;

/**
 * Generates rails route to
 * (/:suffix)/remind_password(.:format)
 * @param {object | undefined} options
 * @returns {string} route path
 */
export const remind_password_path: ((
  options?: {suffix?: OptionalRouteParameter, format?: OptionalRouteParameter} & RouteOptions
) => string) & RouteHelperExtras;

/**
 * Generates rails route to
 * (/:suffix)/reviews(.:format)
 * @param {object | undefined} options
 * @returns {string} route path
 */
export const reviews_path: ((
  options?: {suffix?: OptionalRouteParameter, format?: OptionalRouteParameter} & RouteOptions
) => string) & RouteHelperExtras;

/**
 * Generates rails route to
 * (/:suffix)/robots.:format
 * @param {any} format
 * @param {object | undefined} options
 * @returns {string} route path
 */
export const robots_path: ((
  format: RequiredRouteParameter,
  options?: {suffix?: OptionalRouteParameter} & RouteOptions
) => string) & RouteHelperExtras;

/**
 * Generates rails route to
 * /(:suffix)(.:format)
 * @param {object | undefined} options
 * @returns {string} route path
 */
export const root_path: ((
  options?: {suffix?: OptionalRouteParameter, format?: OptionalRouteParameter} & RouteOptions
) => string) & RouteHelperExtras;

/**
 * Generates rails route to
 * /res
 * @param {object | undefined} options
 * @returns {string} route path
 */
export const ruby_event_store_browser_app_path: ((
  options?: RouteOptions
) => string) & RouteHelperExtras;

/**
 * Generates rails route to
 * (/:suffix)/admin/api/users/search(.:format)
 * @param {object | undefined} options
 * @returns {string} route path
 */
export const search_admin_api_users_path: ((
  options?: {suffix?: OptionalRouteParameter, format?: OptionalRouteParameter} & RouteOptions
) => string) & RouteHelperExtras;

/**
 * Generates rails route to
 * (/:suffix)/session(.:format)
 * @param {object | undefined} options
 * @returns {string} route path
 */
export const session_path: ((
  options?: {suffix?: OptionalRouteParameter, format?: OptionalRouteParameter} & RouteOptions
) => string) & RouteHelperExtras;

/**
 * Generates rails route to
 * (/:suffix)/locale/switch(.:format)
 * @param {object | undefined} options
 * @returns {string} route path
 */
export const switch_locale_path: ((
  options?: {suffix?: OptionalRouteParameter, format?: OptionalRouteParameter} & RouteOptions
) => string) & RouteHelperExtras;

/**
 * Generates rails route to
 * /rails/active_storage/disk/:encoded_token(.:format)
 * @param {any} encoded_token
 * @param {object | undefined} options
 * @returns {string} route path
 */
export const update_rails_disk_service_path: ((
  encoded_token: RequiredRouteParameter,
  options?: {format?: OptionalRouteParameter} & RouteOptions
) => string) & RouteHelperExtras;

/**
 * Generates rails route to
 * (/:suffix)/users(.:format)
 * @param {object | undefined} options
 * @returns {string} route path
 */
export const users_path: ((
  options?: {suffix?: OptionalRouteParameter, format?: OptionalRouteParameter} & RouteOptions
) => string) & RouteHelperExtras;

// By some reason this line prevents all types in a file
// from being automatically exported
export {};

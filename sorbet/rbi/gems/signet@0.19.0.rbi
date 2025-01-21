# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `signet` gem.
# Please instead update this file by running `bin/tapioca gem signet`.


# source://signet//lib/signet/version.rb#15
module Signet
  class << self
    # source://signet//lib/signet.rb#18
    def parse_auth_param_list(auth_param_string); end
  end
end

# An error indicating the remote server refused to authorize the client.
#
# source://signet//lib/signet/errors.rb#49
class Signet::AuthorizationError < ::StandardError
  # Creates a new authentication error.
  #
  # @param message [String] A message describing the error.
  # @param options [Hash] The configuration parameters for the request.
  #   - <code>:request</code> -
  #   A Faraday::Request object.  Optional.
  #   - <code>:response</code> -
  #   A Faraday::Response object.  Optional.
  #   - <code>:code</code> -
  #   An error code.
  #   - <code>:description</code> -
  #   Human-readable text intended to be used to assist in resolving the
  #   error condition.
  #   - <code>:uri</code> -
  #   A URI identifying a human-readable web page with additional
  #   information about the error, indended for the resource owner.
  # @return [AuthorizationError] a new instance of AuthorizationError
  #
  # source://signet//lib/signet/errors.rb#69
  def initialize(message, options = T.unsafe(nil)); end

  # The HTTP request that triggered this authentication error.
  #
  # @return [Array] A tuple of method, uri, headers, and body.
  #
  # source://signet//lib/signet/errors.rb#83
  def request; end

  # The HTTP response that triggered this authentication error.
  #
  # @return [Array] A tuple of status, headers, and body.
  #
  # source://signet//lib/signet/errors.rb#89
  def response; end
end

# An error indicating that the server considers the Authorization header to
# be malformed(missing/unsupported/invalid parameters), and the request
# should be considered invalid.
#
# source://signet//lib/signet/errors.rb#33
class Signet::MalformedAuthorizationError < ::StandardError; end

# An implementation of http://tools.ietf.org/html/draft-ietf-oauth-v2-10
#
# This module will be updated periodically to support newer drafts of the
# specification, as they become widely deployed.
#
# source://signet//lib/signet/oauth_2.rb#25
module Signet::OAuth2
  class << self
    # Appends the necessary OAuth parameters to
    # the base authorization endpoint URI.
    #
    # @param authorization_uri [Addressable::URI, String, #to_str] The base authorization endpoint URI.
    # @return [String] The authorization URI to redirect the user to.
    #
    # source://signet//lib/signet/oauth_2.rb#137
    def generate_authorization_uri(authorization_uri, parameters = T.unsafe(nil)); end

    # Generates a Basic Authorization header from a client identifier and a
    # client password.
    #
    # @param client_id [String] The client identifier.
    # @param client_password [String] The client password.
    # @return [String] The value for the HTTP Basic Authorization header.
    #
    # source://signet//lib/signet/oauth_2.rb#98
    def generate_basic_authorization_header(client_id, client_password); end

    # Generates an authorization header for an access token
    #
    # @param access_token [String] The access token.
    # @param auth_params [Hash] Additional parameters to be encoded in the header
    # @return [String] The value for the HTTP Basic Authorization header.
    #
    # source://signet//lib/signet/oauth_2.rb#117
    def generate_bearer_authorization_header(access_token, auth_params = T.unsafe(nil)); end

    # source://signet//lib/signet/oauth_2.rb#26
    def parse_authorization_header(field_value); end

    # source://signet//lib/signet/oauth_2.rb#53
    def parse_basic_credentials(credential_string); end

    # source://signet//lib/signet/oauth_2.rb#59
    def parse_bearer_credentials(credential_string); end

    # @raise [TypeError]
    #
    # source://signet//lib/signet/oauth_2.rb#75
    def parse_credentials(body, content_type); end

    # source://signet//lib/signet/oauth_2.rb#71
    def parse_oauth_challenge(challenge_string); end

    # source://signet//lib/signet/oauth_2.rb#41
    def parse_www_authenticate_header(field_value); end
  end
end

# source://signet//lib/signet/oauth_2/client.rb#27
class Signet::OAuth2::Client
  # Creates an OAuth 2.0 client.
  #
  # @example
  #   client = Signet::OAuth2::Client.new(
  #   :authorization_uri =>
  #   'https://example.server.com/authorization',
  #   :token_credential_uri =>
  #   'https://example.server.com/token',
  #   :client_id => 'anonymous',
  #   :client_secret => 'anonymous',
  #   :scope => 'example',
  #   :redirect_uri => 'https://example.client.com/oauth'
  #   )
  # @param options [Hash] The configuration parameters for the client.
  #   - `:authorization_uri` -
  #   The authorization server's HTTP endpoint capable of
  #   authenticating the end-user and obtaining authorization.
  #   - `:token_credential_uri` -
  #   The authorization server's HTTP endpoint capable of issuing
  #   tokens and refreshing expired tokens.
  #   - `:client_id` -
  #   A unique identifier issued to the client to identify itself to the
  #   authorization server.
  #   - `:client_secret` -
  #   A shared symmetric secret issued by the authorization server,
  #   which is used to authenticate the client.
  #   - `:scope` -
  #   The scope of the access request, expressed either as an Array
  #   or as a space-delimited String.
  #   - `:target_audience` -
  #   The final target audience for ID tokens fetched by this client,
  #   as a String.
  #   - `:state` -
  #   An arbitrary string designed to allow the client to maintain state.
  #   - `:code` -
  #   The authorization code received from the authorization server.
  #   - `:redirect_uri` -
  #   The redirection URI used in the initial request.
  #   - `:username` -
  #   The resource owner's username.
  #   - `:password` -
  #   The resource owner's password.
  #   - `:issuer` -
  #   Issuer ID when using assertion profile
  #   - `:person` -
  #   Target user for assertions
  #   - `:expiry` -
  #   Number of seconds assertions are valid for
  #   - `:signing_key` -
  #   Signing key when using assertion profile
  #   - `:refresh_token` -
  #   The refresh token associated with the access token
  #   to be refreshed.
  #   - `:access_token` -
  #   The current access token for this client.
  #   - `:id_token` -
  #   The current ID token for this client.
  #   - `:extension_parameters` -
  #   When using an extension grant type, this the set of parameters used
  #   by that extension.
  #   - `:granted_scopes` -
  #   All scopes granted by authorization server.
  # @return [Client] a new instance of Client
  # @see Signet::OAuth2::Client#update!
  #
  # source://signet//lib/signet/oauth_2/client.rb#97
  def initialize(options = T.unsafe(nil)); end

  # Returns the access token associated with this client.
  #
  # @return [String] The access token.
  #
  # source://signet//lib/signet/oauth_2/client.rb#715
  def access_token; end

  # Sets the access token associated with this client.
  #
  # @param new_access_token [String] The access token.
  #
  # source://signet//lib/signet/oauth_2/client.rb#724
  def access_token=(new_access_token); end

  # Returns the current access type parameter for #authorization_uri.
  #
  # @return [String, Symbol] The current access type.
  #
  # source://signet//lib/signet/oauth_2/client.rb#342
  def access_type; end

  # Sets the current access type parameter for #authorization_uri.
  #
  # @param new_access_type [String, Symbol] The current access type.
  #
  # source://signet//lib/signet/oauth_2/client.rb#351
  def access_type=(new_access_type); end

  # Returns the set of additional (non standard) parameters to be used by the client.
  #
  # @return [Hash] The pass through parameters.
  #
  # source://signet//lib/signet/oauth_2/client.rb#676
  def additional_parameters; end

  # Sets additional (non standard) parameters to be used by the client.
  #
  # @param new_additional_parameters [Hash] The parameters.
  #
  # source://signet//lib/signet/oauth_2/client.rb#685
  def additional_parameters=(new_additional_parameters); end

  # Returns the target audience ID when issuing assertions.
  # Used only by the assertion grant type.
  #
  # @return [String] Target audience ID.
  #
  # source://signet//lib/signet/oauth_2/client.rb#561
  def audience; end

  # Sets the target audience ID when issuing assertions.
  # Used only by the assertion grant type.
  #
  # @param new_audience [String] Target audience ID
  #
  # source://signet//lib/signet/oauth_2/client.rb#571
  def audience=(new_audience); end

  # Returns the authorization URI that the user should be redirected to.
  #
  # @raise [ArgumentError]
  # @return [Addressable::URI] The authorization URI.
  # @see Signet::OAuth2.generate_authorization_uri
  #
  # source://signet//lib/signet/oauth_2/client.rb#271
  def authorization_uri(options = T.unsafe(nil)); end

  # Sets the authorization URI for this client.
  #
  # @param new_authorization_uri [Addressable::URI, Hash, String, #to_str] The authorization URI.
  #
  # source://signet//lib/signet/oauth_2/client.rb#307
  def authorization_uri=(new_authorization_uri); end

  # source://googleauth/1.12.2/lib/googleauth/signet.rb#86
  def build_default_connection; end

  # Removes all credentials from the client.
  #
  # source://signet//lib/signet/oauth_2/client.rb#883
  def clear_credentials!; end

  # Returns the client identifier for this client.
  #
  # @return [String] The client identifier.
  #
  # source://signet//lib/signet/oauth_2/client.rb#359
  def client_id; end

  # Sets the client identifier for this client.
  #
  # @param new_client_id [String] The client identifier.
  #
  # source://signet//lib/signet/oauth_2/client.rb#368
  def client_id=(new_client_id); end

  # Returns the client secret for this client.
  #
  # @return [String] The client secret.
  #
  # source://signet//lib/signet/oauth_2/client.rb#376
  def client_secret; end

  # Sets the client secret for this client.
  #
  # @param new_client_secret [String] The client secret.
  #
  # source://signet//lib/signet/oauth_2/client.rb#385
  def client_secret=(new_client_secret); end

  # Returns the authorization code issued to this client.
  # Used only by the authorization code access grant type.
  #
  # @return [String] The authorization code.
  #
  # source://signet//lib/signet/oauth_2/client.rb#462
  def code; end

  # Sets the authorization code issued to this client.
  # Used only by the authorization code access grant type.
  #
  # @param new_code [String] The authorization code.
  #
  # source://signet//lib/signet/oauth_2/client.rb#472
  def code=(new_code); end

  # Addressable expects URIs formatted as hashes to come in with symbols as keys.
  # Returns nil implicitly for the nil case.
  #
  # source://signet//lib/signet/oauth_2/client.rb#330
  def coerce_uri(incoming_uri); end

  # source://googleauth/1.12.2/lib/googleauth/signet.rb#41
  def configure_connection(options); end

  # Returns the decoded ID token associated with this client.
  #
  # @param public_key [OpenSSL::PKey::RSA, Object] The public key to use to verify the ID token. Skips verification if
  #   omitted.
  # @raise [Signet::UnsafeOperationError]
  # @return [String] The decoded ID token.
  #
  # source://signet//lib/signet/oauth_2/client.rb#753
  def decoded_id_token(public_key = T.unsafe(nil), options = T.unsafe(nil), &keyfinder); end

  # Returns true if the access token has expired.
  # Returns false if the token has not expired or has an nil @expires_at.
  #
  # @return [TrueClass, FalseClass] The expiration state of the access token.
  #
  # source://signet//lib/signet/oauth_2/client.rb#864
  def expired?; end

  # Returns the timestamp the access token will expire at.
  # Returns nil if the token does not expire.
  #
  # @return [Time, nil] The access token lifetime.
  #
  # source://signet//lib/signet/oauth_2/client.rb#817
  def expires_at; end

  # Limits the lifetime of the access token as number of seconds since
  # the Epoch. Nil values will be treated as though the token does
  # not expire.
  #
  # @param new_expires_at [String, Integer, Time, nil] The access token expiration time.
  #
  # source://signet//lib/signet/oauth_2/client.rb#827
  def expires_at=(new_expires_at); end

  # Returns the lifetime of the access token in seconds.
  # Returns nil if the token does not expire.
  #
  # @return [Integer, nil] The access token lifetime.
  #
  # source://signet//lib/signet/oauth_2/client.rb#770
  def expires_in; end

  # Sets the lifetime of the access token in seconds.  Resets the issued_at
  # timestamp. Nil values will be treated as though the token does
  # not expire.
  #
  # @param new_expires_in [String, Integer, nil] The access token lifetime.
  #
  # source://signet//lib/signet/oauth_2/client.rb#785
  def expires_in=(new_expires_in); end

  # Returns true if the access token has expired or expires within
  # the next n seconds. Returns false for tokens with a nil @expires_at.
  #
  # @param sec [Integer] Max number of seconds from now where a token is still considered
  #   expired.
  # @return [TrueClass, FalseClass] The expiration state of the access token.
  #
  # source://signet//lib/signet/oauth_2/client.rb#877
  def expires_within?(sec); end

  # Returns the number of seconds assertions are valid for
  # Used only by the assertion grant type.
  #
  # @return [Integer] Assertion expiry, in seconds
  #
  # source://signet//lib/signet/oauth_2/client.rb#608
  def expiry; end

  # Sets the number of seconds assertions are valid for
  # Used only by the assertion grant type.
  #
  # @param new_expiry [Integer, String] Assertion expiry, in seconds
  #
  # source://signet//lib/signet/oauth_2/client.rb#618
  def expiry=(new_expiry); end

  # Returns the set of extension parameters used by the client.
  # Used only by extension access grant types.
  #
  # @return [Hash] The extension parameters.
  #
  # source://signet//lib/signet/oauth_2/client.rb#653
  def extension_parameters; end

  # Sets extension parameters used by the client.
  # Used only by extension access grant types.
  #
  # @param new_extension_parameters [Hash] The parameters.
  #
  # source://signet//lib/signet/oauth_2/client.rb#663
  def extension_parameters=(new_extension_parameters); end

  # @raise [ArgumentError]
  #
  # source://signet//lib/signet/oauth_2/client.rb#1022
  def fetch_access_token(options = T.unsafe(nil)); end

  # source://googleauth/1.12.2/lib/googleauth/signet.rb#56
  def fetch_access_token!(options = T.unsafe(nil)); end

  # Transmits a request for a protected resource.
  #
  # @example
  #   # Using Net::HTTP
  #   response = client.fetch_protected_resource(
  #   :uri => 'http://www.example.com/protected/resource'
  #   )
  # @param options [Hash] The configuration parameters for the request.
  #   - <code>:request</code> -
  #   A pre-constructed request.  An OAuth 2 Authorization header
  #   will be added to it, as well as an explicit Cache-Control
  #   `no-store` directive.
  #   - <code>:method</code> -
  #   The HTTP method for the request.  Defaults to 'GET'.
  #   - <code>:uri</code> -
  #   The URI for the request.
  #   - <code>:headers</code> -
  #   The HTTP headers for the request.
  #   - <code>:body</code> -
  #   The HTTP body for the request.
  #   - <code>:realm</code> -
  #   The Authorization realm.  See RFC 2617.
  #   - <code>:connection</code> -
  #   The HTTP connection to use.
  #   Must be of type <code>Faraday::Connection</code>.
  # @raise [::Signet::AuthorizationError]
  # @return [Array] The response object.
  #
  # source://signet//lib/signet/oauth_2/client.rb#1190
  def fetch_protected_resource(options = T.unsafe(nil)); end

  # Generates a request for token credentials.
  #
  # @param options [Hash] The configuration parameters for the request.
  #   - <code>:code</code> -
  #   The authorization code.
  # @private
  # @return [Array] The request object.
  #
  # source://googleauth/1.12.2/lib/googleauth/signet.rb#69
  def generate_access_token_request(options = T.unsafe(nil)); end

  # Generates an authenticated request for protected resources.
  #
  # @param options [Hash] The configuration parameters for the request.
  #   - <code>:request</code> -
  #   A pre-constructed request.  An OAuth 2 Authorization header
  #   will be added to it, as well as an explicit Cache-Control
  #   `no-store` directive.
  #   - <code>:method</code> -
  #   The HTTP method for the request.  Defaults to 'GET'.
  #   - <code>:uri</code> -
  #   The URI for the request.
  #   - <code>:headers</code> -
  #   The HTTP headers for the request.
  #   - <code>:body</code> -
  #   The HTTP body for the request.
  #   - <code>:realm</code> -
  #   The Authorization realm.  See RFC 2617.
  # @raise [ArgumentError]
  # @return [Faraday::Request] The request object.
  #
  # source://signet//lib/signet/oauth_2/client.rb#1114
  def generate_authenticated_request(options = T.unsafe(nil)); end

  # source://signet//lib/signet/oauth_2/client.rb#987
  def googleauth_orig_generate_access_token_request(options = T.unsafe(nil)); end

  # Returns the inferred grant type, based on the current state of the
  # client object.  Returns `"none"` if the client has insufficient
  # information to make an in-band authorization request.
  #
  # @return [String] The inferred grant type.
  #
  # source://signet//lib/signet/oauth_2/client.rb#902
  def grant_type; end

  # source://signet//lib/signet/oauth_2/client.rb#916
  def grant_type=(new_grant_type); end

  # Returns the scopes granted by the authorization server.
  #
  # @return [Array, nil] The scope of access returned by the authorization server.
  #
  # source://signet//lib/signet/oauth_2/client.rb#835
  def granted_scopes; end

  # Sets the scopes returned by authorization server for this client.
  #
  # @param new_granted_scopes [String, Array, nil] The scope of access returned by authorization server. This will
  #   ideally be expressed as space-delimited String.
  #
  # source://signet//lib/signet/oauth_2/client.rb#845
  def granted_scopes=(new_granted_scopes); end

  # Returns the ID token associated with this client.
  #
  # @return [String] The ID token.
  #
  # source://signet//lib/signet/oauth_2/client.rb#732
  def id_token; end

  # Sets the ID token associated with this client.
  #
  # @param new_id_token [String] The ID token.
  #
  # source://signet//lib/signet/oauth_2/client.rb#741
  def id_token=(new_id_token); end

  # Returns the timestamp the access token was issued at.
  #
  # @return [Time, nil] The access token issuance time.
  #
  # source://signet//lib/signet/oauth_2/client.rb#799
  def issued_at; end

  # Sets the timestamp the access token was issued at.
  #
  # @param new_issued_at [String, Integer, Time] The access token issuance time.
  #
  # source://signet//lib/signet/oauth_2/client.rb#808
  def issued_at=(new_issued_at); end

  # Returns the issuer ID associated with this client.
  # Used only by the assertion grant type.
  #
  # @return [String] Issuer id.
  #
  # source://signet//lib/signet/oauth_2/client.rb#542
  def issuer; end

  # Sets the issuer ID associated with this client.
  # Used only by the assertion grant type.
  #
  # @param new_issuer [String] Issuer ID (typical in email adddress form).
  #
  # source://signet//lib/signet/oauth_2/client.rb#552
  def issuer=(new_issuer); end

  # source://signet//lib/signet/oauth_2/client.rb#1075
  def orig_fetch_access_token!(options = T.unsafe(nil)); end

  # Returns the password associated with this client.
  # Used only by the resource owner password credential access grant type.
  #
  # @return [String] The password.
  #
  # source://signet//lib/signet/oauth_2/client.rb#523
  def password; end

  # Sets the password associated with this client.
  # Used only by the resource owner password credential access grant type.
  #
  # @param new_password [String] The password.
  #
  # source://signet//lib/signet/oauth_2/client.rb#533
  def password=(new_password); end

  # Returns the target resource owner for impersonation.
  # Used only by the assertion grant type.
  #
  # @return [String] Target user for impersonation.
  #
  # source://signet//lib/signet/oauth_2/client.rb#580
  def person; end

  # Sets the target resource owner for impersonation.
  # Used only by the assertion grant type.
  #
  # @param new_person [String] Target user for impersonation
  #
  # source://signet//lib/signet/oauth_2/client.rb#590
  def person=(new_person); end

  # Returns the target resource owner for impersonation.
  # Used only by the assertion grant type.
  #
  # @return [String] Target user for impersonation.
  #
  # source://signet//lib/signet/oauth_2/client.rb#580
  def principal; end

  # Sets the target resource owner for impersonation.
  # Used only by the assertion grant type.
  #
  # @param new_person [String] Target user for impersonation
  #
  # source://signet//lib/signet/oauth_2/client.rb#590
  def principal=(new_person); end

  # Returns the redirect URI for this client.
  #
  # @return [String] The redirect URI.
  #
  # source://signet//lib/signet/oauth_2/client.rb#480
  def redirect_uri; end

  # Sets the redirect URI for this client.
  #
  # @param new_redirect_uri [String] The redirect URI.
  #
  # source://signet//lib/signet/oauth_2/client.rb#489
  def redirect_uri=(new_redirect_uri); end

  # Refresh the access token, if possible
  #
  # source://signet//lib/signet/oauth_2/client.rb#1090
  def refresh!(options = T.unsafe(nil)); end

  # Returns the refresh token associated with this client.
  #
  # @return [String] The refresh token.
  #
  # source://signet//lib/signet/oauth_2/client.rb#698
  def refresh_token; end

  # Sets the refresh token associated with this client.
  #
  # @param new_refresh_token [String] The refresh token.
  #
  # source://signet//lib/signet/oauth_2/client.rb#707
  def refresh_token=(new_refresh_token); end

  # source://googleauth/1.12.2/lib/googleauth/signet.rb#96
  def retry_with_error(max_retry_count = T.unsafe(nil)); end

  # Returns the scope for this client.  Scope is a list of access ranges
  # defined by the authorization server.
  #
  # @return [Array] The scope of access the client is requesting.
  #
  # source://signet//lib/signet/oauth_2/client.rb#394
  def scope; end

  # Sets the scope for this client.
  #
  # @param new_scope [Array, String] The scope of access the client is requesting.  This may be
  #   expressed as either an Array of String objects or as a
  #   space-delimited String.
  #
  # source://signet//lib/signet/oauth_2/client.rb#405
  def scope=(new_scope); end

  # Algorithm used for signing JWTs
  #
  # @return [String] Signing algorithm
  #
  # source://signet//lib/signet/oauth_2/client.rb#644
  def signing_algorithm; end

  # Returns the signing key associated with this client.
  # Used only by the assertion grant type.
  #
  # @return [String, OpenSSL::PKey] Signing key
  #
  # source://signet//lib/signet/oauth_2/client.rb#627
  def signing_key; end

  # Sets the signing key when issuing assertions.
  # Used only by the assertion grant type.
  #
  # @param new_key [String, OpenSSL::Pkey] Signing key. Either private key for RSA or string for HMAC algorithm
  #
  # source://signet//lib/signet/oauth_2/client.rb#637
  def signing_key=(new_key); end

  # Returns the client's current state value.
  #
  # @return [String] The state value.
  #
  # source://signet//lib/signet/oauth_2/client.rb#444
  def state; end

  # Sets the client's current state value.
  #
  # @param new_state [String] The state value.
  #
  # source://signet//lib/signet/oauth_2/client.rb#453
  def state=(new_state); end

  # The target "sub" when issuing assertions.
  # Used in some Admin SDK APIs.
  #
  # source://signet//lib/signet/oauth_2/client.rb#601
  def sub; end

  # The target "sub" when issuing assertions.
  # Used in some Admin SDK APIs.
  #
  # source://signet//lib/signet/oauth_2/client.rb#601
  def sub=(_arg0); end

  # Returns the final target audience for ID tokens fetched by this client.
  #
  # @return [String] The target audience.
  #
  # source://signet//lib/signet/oauth_2/client.rb#428
  def target_audience; end

  # Sets the final target audience for ID tokens fetched by this client.
  #
  # @param new_target_audience [String] The new target audience.
  #
  # source://signet//lib/signet/oauth_2/client.rb#436
  def target_audience=(new_target_audience); end

  # Serialize the client object to JSON.
  #
  # @note A serialized client contains sensitive information. Persist or transmit with care.
  # @return [String] A serialized JSON representation of the client.
  #
  # source://signet//lib/signet/oauth_2/client.rb#950
  def to_json(*_args); end

  # source://signet//lib/signet/oauth_2/client.rb#926
  def to_jwt(options = T.unsafe(nil)); end

  # Returns the token credential URI for this client.
  #
  # @return [Addressable::URI] The token credential URI.
  #
  # source://signet//lib/signet/oauth_2/client.rb#315
  def token_credential_uri; end

  # Sets the token credential URI for this client.
  #
  # @param new_token_credential_uri [Addressable::URI, Hash, String, #to_str] The token credential URI.
  #
  # source://signet//lib/signet/oauth_2/client.rb#324
  def token_credential_uri=(new_token_credential_uri); end

  # source://googleauth/1.12.2/lib/googleauth/signet.rb#48
  def token_type; end

  # source://googleauth/1.12.2/lib/googleauth/signet.rb#53
  def universe_domain; end

  # source://googleauth/1.12.2/lib/googleauth/signet.rb#53
  def universe_domain=(_arg0); end

  # Updates an OAuth 2.0 client.
  #
  # @example
  #   client.update!(
  #   :code => 'i1WsRn1uB1',
  #   :access_token => 'FJQbwq9',
  #   :expires_in => 3600
  #   )
  # @param options [Hash] The configuration parameters for the client.
  #   - `:authorization_uri` -
  #   The authorization server's HTTP endpoint capable of
  #   authenticating the end-user and obtaining authorization.
  #   - `:token_credential_uri` -
  #   The authorization server's HTTP endpoint capable of issuing
  #   tokens and refreshing expired tokens.
  #   - `:client_id` -
  #   A unique identifier issued to the client to identify itself to the
  #   authorization server.
  #   - `:client_secret` -
  #   A shared symmetric secret issued by the authorization server,
  #   which is used to authenticate the client.
  #   - `:scope` -
  #   The scope of the access request, expressed either as an Array
  #   or as a space-delimited String.
  #   - `:target_audience` -
  #   The final target audience for ID tokens fetched by this client,
  #   as a String.
  #   - `:state` -
  #   An arbitrary string designed to allow the client to maintain state.
  #   - `:code` -
  #   The authorization code received from the authorization server.
  #   - `:redirect_uri` -
  #   The redirection URI used in the initial request.
  #   - `:username` -
  #   The resource owner's username.
  #   - `:password` -
  #   The resource owner's password.
  #   - `:issuer` -
  #   Issuer ID when using assertion profile
  #   - `:audience` -
  #   Target audience for assertions
  #   - `:person` -
  #   Target user for assertions
  #   - `:expiry` -
  #   Number of seconds assertions are valid for
  #   - `:signing_key` -
  #   Signing key when using assertion profile
  #   - `:refresh_token` -
  #   The refresh token associated with the access token
  #   to be refreshed.
  #   - `:access_token` -
  #   The current access token for this client.
  #   - `:access_type` -
  #   The current access type parameter for #authorization_uri.
  #   - `:id_token` -
  #   The current ID token for this client.
  #   - `:extension_parameters` -
  #   When using an extension grant type, this is the set of parameters used
  #   by that extension.
  #   - `:granted_scopes` -
  #   All scopes granted by authorization server.
  # @see Signet::OAuth2::Client#initialize
  # @see Signet::OAuth2::Client#update_token!
  #
  # source://signet//lib/signet/oauth_2/client.rb#185
  def update!(options = T.unsafe(nil)); end

  # Updates an OAuth 2.0 client.
  #
  # @example
  #   client.update!(
  #   :refresh_token => 'n4E9O119d',
  #   :access_token => 'FJQbwq9',
  #   :expires_in => 3600
  #   )
  # @param options [Hash] The configuration parameters related to the token.
  #   - <code>:refresh_token</code> -
  #   The refresh token associated with the access token
  #   to be refreshed.
  #   - <code>:access_token</code> -
  #   The current access token for this client.
  #   - <code>:id_token</code> -
  #   The current ID token for this client.
  #   - <code>:expires_in</code> -
  #   The time in seconds until access token expiration.
  #   - <code>:expires_at</code> -
  #   The time as an integer number of seconds since the Epoch
  #   - <code>:issued_at</code> -
  #   The timestamp that the token was issued at.
  # @see Signet::OAuth2::Client#initialize
  # @see Signet::OAuth2::Client#update!
  #
  # source://googleauth/1.12.2/lib/googleauth/signet.rb#32
  def update_token!(options = T.unsafe(nil)); end

  # source://signet//lib/signet/oauth_2/client.rb#241
  def update_token_signet_base(options = T.unsafe(nil)); end

  # Returns the username associated with this client.
  # Used only by the resource owner password credential access grant type.
  #
  # @return [String] The username.
  #
  # source://signet//lib/signet/oauth_2/client.rb#504
  def username; end

  # Sets the username associated with this client.
  # Used only by the resource owner password credential access grant type.
  #
  # @param new_username [String] The username.
  #
  # source://signet//lib/signet/oauth_2/client.rb#514
  def username=(new_username); end

  private

  # source://signet//lib/signet/oauth_2/client.rb#1233
  def deep_hash_normalize(old_hash); end

  # source://googleauth/1.12.2/lib/googleauth/signet.rb#122
  def expires_at_from_id_token(id_token); end

  # source://googleauth/1.12.2/lib/googleauth/signet.rb#149
  def log_auth_error(err); end

  # source://googleauth/1.12.2/lib/googleauth/signet.rb#133
  def log_response(token_response); end

  # source://googleauth/1.12.2/lib/googleauth/signet.rb#167
  def log_retries_exhausted(err); end

  # source://googleauth/1.12.2/lib/googleauth/signet.rb#158
  def log_transient_error(err); end

  # source://signet//lib/signet/oauth_2/client.rb#1239
  def normalize_timestamp(time); end

  # Convert all keys in this hash (nested) to symbols for uniform retrieval
  #
  # source://signet//lib/signet/oauth_2/client.rb#1225
  def recursive_hash_normalize_keys(val); end

  # source://signet//lib/signet/oauth_2/client.rb#1256
  def set_relative_expires_at(issued_at, expires_in); end

  # Check if the URI is a out-of-band
  #
  # @private
  # @return [Boolean]
  #
  # source://signet//lib/signet/oauth_2/client.rb#1220
  def uri_is_oob?(uri); end

  # Check if URI is Google's postmessage flow (not a valid redirect_uri by spec, but allowed)
  #
  # @private
  # @return [Boolean]
  #
  # source://signet//lib/signet/oauth_2/client.rb#1213
  def uri_is_postmessage?(uri); end
end

# source://signet//lib/signet/oauth_2/client.rb#28
Signet::OAuth2::Client::OOB_MODES = T.let(T.unsafe(nil), Array)

# An error indicating the client failed to parse a value.
#
# source://signet//lib/signet/errors.rb#26
class Signet::ParseError < ::StandardError; end

# An error indicating that the server failed at processing the request
# due to a internal error
#
# source://signet//lib/signet/errors.rb#39
class Signet::RemoteServerError < ::StandardError; end

# An error indicating that the server sent an unexpected http status
#
# source://signet//lib/signet/errors.rb#44
class Signet::UnexpectedStatusError < ::StandardError; end

# An error indicating that the client has aborted an operation that
# would have been unsafe to perform.
#
# source://signet//lib/signet/errors.rb#21
class Signet::UnsafeOperationError < ::StandardError; end

# source://signet//lib/signet/version.rb#16
Signet::VERSION = T.let(T.unsafe(nil), String)

# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `alba` gem.
# Please instead update this file by running `bin/tapioca gem alba`.


# Core module
#
# source://alba//lib/alba/version.rb#3
module Alba
  class << self
    # Returns the value of attribute backend.
    #
    # source://alba//lib/alba.rb#14
    def backend; end

    # Set the backend, which actually serializes object into JSON
    #
    # @param backend [#to_sym, nil] the name of the backend
    #   Possible values are `oj`, `active_support`, `default`, `json` and nil
    # @raise [Alba::UnsupportedBackend] if backend is not supported
    # @return [Proc] the proc to encode object into JSON
    #
    # source://alba//lib/alba.rb#25
    def backend=(backend); end

    # Detect if object is a collection or not.
    # When object is a Struct, it's Enumerable but not a collection
    #
    # @api private
    # @return [Boolean]
    #
    # source://alba//lib/alba.rb#81
    def collection?(object); end

    # Disable inference for key and resource name
    #
    # @deprecated Use {.inflector=} instead
    #
    # source://alba//lib/alba.rb#100
    def disable_inference!; end

    # Enable inference for key and resource name
    #
    # @deprecated Use {.inflector=} instead
    # @param with [Symbol, Class, Module] inflector
    #   When it's a Symbol, it sets inflector with given name
    #   When it's a Class or a Module, it sets given object to inflector
    #
    # source://alba//lib/alba.rb#91
    def enable_inference!(with:); end

    # Returns the value of attribute encoder.
    #
    # source://alba//lib/alba.rb#14
    def encoder; end

    # Set encoder, a Proc object that accepts an object and generates JSON from it
    # Set backend as `:custom` which indicates no preset encoder is used
    #
    # @param encoder [Proc]
    # @raise [ArgumentError] if given encoder is not a Proc or its arity is not one
    #
    # source://alba//lib/alba.rb#35
    def encoder=(encoder); end

    # Find type by name
    #
    # @return [Alba::Type]
    #
    # source://alba//lib/alba.rb#203
    def find_type(name); end

    # Hashify the object with inline definitions
    #
    # @param object [Object] the object to be serialized
    # @param with [:inference, Proc, Class<Alba::Resource>] determines how to get resource class for each object
    # @param root_key [Symbol, nil, true]
    # @param block [Block] resource block
    # @raise [ArgumentError] if block is absent or `with` argument's type is wrong
    # @return [String] serialized JSON string
    #
    # source://alba//lib/alba.rb#68
    def hashify(object = T.unsafe(nil), with: T.unsafe(nil), root_key: T.unsafe(nil), &block); end

    # @param name [String] a String Alba infers resource name with
    # @param nesting [String, nil] namespace Alba tries to find resource class in
    # @raise [Alba::Error]
    # @return [Class<Alba::Resource>] resource class
    #
    # source://alba//lib/alba.rb#135
    def infer_resource_class(name, nesting: T.unsafe(nil)); end

    # @deprecated Use {.inflector} instead
    # @return [Boolean] whether inference is enabled or not
    #
    # source://alba//lib/alba.rb#108
    def inferring; end

    # Getter for inflector, a module responsible for inflecting strings
    #
    # source://alba//lib/alba.rb#17
    def inflector; end

    # Set an inflector
    #
    # @param inflector [Symbol, Class, Module] inflector
    #   When it's a Symbol, it accepts `:default`, `:active_support` or `:dry`
    #   When it's a Class or a Module, it should have some methods, see {Alba::DefaultInflector}
    #
    # source://alba//lib/alba.rb#118
    def inflector=(inflector); end

    # Register types, used for both builtin and custom types
    #
    # @return [void]
    # @see Alba::Type
    #
    # source://alba//lib/alba.rb#196
    def register_type(name, check: T.unsafe(nil), converter: T.unsafe(nil), auto_convert: T.unsafe(nil)); end

    # Regularize key to be either Symbol or String depending on @symbolize_keys
    # Returns nil if key is nil
    #
    # @param key [String, Symbol, nil]
    # @return [Symbol, String, nil]
    #
    # source://alba//lib/alba.rb#163
    def regularize_key(key); end

    # Reset config variables
    # Useful for test cleanup
    #
    # source://alba//lib/alba.rb#211
    def reset!; end

    # @param block [Block] resource body
    # @return [Class<Alba::Resource>] resource class
    #
    # source://alba//lib/alba.rb#125
    def resource_class(&block); end

    # Get a resource object from arguments
    # If block is given, it creates a resource class with the block
    # Otherwise, it infers resource class from the object's class name
    #
    # @ param object [Object] the object whose class name is used for inferring resource class
    #
    # source://alba//lib/alba.rb#226
    def resource_with(object, &block); end

    # Serialize the object with inline definitions
    #
    # @param object [Object] the object to be serialized
    # @param with [:inference, Proc, Class<Alba::Resource>] determines how to get resource class for each object
    # @param root_key [Symbol, nil, true]
    # @param block [Block] resource block
    # @raise [ArgumentError] if block is absent or `with` argument's type is wrong
    # @return [String] serialized JSON string
    #
    # source://alba//lib/alba.rb#50
    def serialize(object = T.unsafe(nil), with: T.unsafe(nil), root_key: T.unsafe(nil), &block); end

    # Configure Alba to stringify (not symbolize) keys
    #
    # source://alba//lib/alba.rb#153
    def stringify_keys!; end

    # Configure Alba to symbolize keys
    #
    # source://alba//lib/alba.rb#147
    def symbolize_keys!; end

    # Transform a key with given transform_type
    #
    # @param key [String] a target key
    # @param transform_type [Symbol] a transform type, either one of `camel`, `lower_camel`, `dash` or `snake`
    # @raise [Alba::Error]
    # @return [String]
    #
    # source://alba//lib/alba.rb#174
    def transform_key(key, transform_type:); end

    private

    # source://alba//lib/alba.rb#280
    def default_encoder; end

    # source://alba//lib/alba.rb#286
    def hashify_collection(collection, with, &block); end

    # source://alba//lib/alba.rb#234
    def inflector_from(name_or_module); end

    # source://alba//lib/alba.rb#316
    def register_default_types; end

    # source://alba//lib/alba.rb#312
    def reset_transform_keys; end

    # source://alba//lib/alba.rb#247
    def set_encoder_from_backend; end

    # source://alba//lib/alba.rb#272
    def try_active_support; end

    # source://alba//lib/alba.rb#259
    def try_oj(mode:); end

    # source://alba//lib/alba.rb#304
    def validate_inflector(inflector); end
  end
end

# Representing association
#
# @api private
#
# source://alba//lib/alba/association.rb#6
class Alba::Association
  # @api private
  # @param name [Symbol, String] name of the method to fetch association
  # @param condition [Proc, nil] a proc filtering data
  # @param resource [Class<Alba::Resource>, Proc, String, Symbol, nil] a resource class for the association, a proc returning a resource class or a name of the resource
  # @param params [Hash] params override for the association
  # @param nesting [String] a namespace where source class is inferred with
  # @param key_transformation [Symbol] key transformation type
  # @param helper [Module] helper module to include
  # @param block [Block] used to define resource when resource arg is absent
  # @return [Association] a new instance of Association
  #
  # source://alba//lib/alba/association.rb#24
  def initialize(name:, condition: T.unsafe(nil), resource: T.unsafe(nil), params: T.unsafe(nil), nesting: T.unsafe(nil), key_transformation: T.unsafe(nil), helper: T.unsafe(nil), &block); end

  # This is the same API in `NestedAttribute`
  #
  # @api private
  #
  # source://alba//lib/alba/association.rb#35
  def key_transformation=(type); end

  # @api private
  #
  # source://alba//lib/alba/association.rb#13
  def name; end

  # Recursively converts an object into a Hash
  #
  # @api private
  # @param target [Object] the object having an association method
  # @param within [Hash] determines what associations to be serialized. If not set, it serializes all associations.
  # @param params [Hash] user-given Hash for arbitrary data
  # @return [Hash]
  #
  # source://alba//lib/alba/association.rb#45
  def to_h(target, within: T.unsafe(nil), params: T.unsafe(nil)); end

  private

  # @api private
  #
  # source://alba//lib/alba/association.rb#75
  def assign_resource(nesting, key_transformation, block, helper); end

  # @api private
  #
  # source://alba//lib/alba/association.rb#85
  def charged_resource_class(helper, key_transformation, block); end

  # @api private
  #
  # source://alba//lib/alba/association.rb#62
  def constantize(resource); end

  # @api private
  #
  # source://alba//lib/alba/association.rb#99
  def to_h_with_constantize_resource(object, within, params); end

  # @api private
  #
  # source://alba//lib/alba/association.rb#93
  def to_h_with_each_resource(object, within, params); end

  class << self
    # cache for `const_get`
    #
    # @api private
    #
    # source://alba//lib/alba/association.rb#10
    def const_cache; end
  end
end

# Represents attribute with `if` option
#
# @api private
#
# source://alba//lib/alba/conditional_attribute.rb#10
class Alba::ConditionalAttribute
  # @api private
  # @param body [Symbol, Proc, Alba::Association, Alba::TypedAttribute] real attribute wrapped with condition
  # @param condition [Symbol, Proc] condition to check
  # @return [ConditionalAttribute] a new instance of ConditionalAttribute
  #
  # source://alba//lib/alba/conditional_attribute.rb#13
  def initialize(body:, condition:); end

  # Returns attribute body if condition passes
  #
  # @api private
  # @param resource [Alba::Resource]
  # @param object [Object] needed for collection, each object from collection
  # @return [Alba::REMOVE_KEY, Object] REMOVE_KEY if condition is unmet, fetched attribute otherwise
  #
  # source://alba//lib/alba/conditional_attribute.rb#23
  def with_passing_condition(resource:, object: T.unsafe(nil)); end

  private

  # @api private
  # @return [Boolean]
  #
  # source://alba//lib/alba/conditional_attribute.rb#36
  def condition_passes?(resource, object); end

  # OpenStruct is used as a simple solution for converting Hash or Array of Hash into an object
  # Using OpenStruct is not good in general, but in this case there's no other solution
  #
  # @api private
  #
  # source://alba//lib/alba/conditional_attribute.rb#56
  def objectize(fetched_attribute); end

  # @api private
  #
  # source://alba//lib/alba/conditional_attribute.rb#50
  def with_two_arity_proc_condition; end
end

# Module for printing deprecation warning
#
# @api private
#
# source://alba//lib/alba/deprecation.rb#6
module Alba::Deprecation
  private

  # Similar to {#warn} but prints caller as well
  #
  # @api private
  # @param message [String] main message to print
  # @return void
  #
  # source://alba//lib/alba/deprecation.rb#11
  def warn(message); end

  class << self
    # Similar to {#warn} but prints caller as well
    #
    # @api private
    # @param message [String] main message to print
    # @return void
    #
    # source://alba//lib/alba/deprecation.rb#11
    def warn(message); end
  end
end

# Base class for Errors
#
# source://alba//lib/alba/errors.rb#5
class Alba::Error < ::StandardError; end

# Layout serialization
#
# @api private
#
# source://alba//lib/alba/layout.rb#9
class Alba::Layout
  extend ::Forwardable

  # @api private
  # @param file [String] name of the layout file
  # @param inline [Proc] a proc returning JSON string or a Hash representing JSON
  # @return [Layout] a new instance of Layout
  #
  # source://alba//lib/alba/layout.rb#16
  def initialize(file:, inline:); end

  # source://forwardable/1.3.3/forwardable.rb#231
  def object(*args, **_arg1, &block); end

  # source://forwardable/1.3.3/forwardable.rb#231
  def params(*args, **_arg1, &block); end

  # source://forwardable/1.3.3/forwardable.rb#231
  def serializable_hash(*args, **_arg1, &block); end

  # Serialize within layout
  #
  # @api private
  # @param resource [Alba::Resource] the original resource calling this layout
  # @param serialized_json [String] JSON string for embedding
  # @param binding [Binding] context for serialization
  #
  # source://alba//lib/alba/layout.rb#35
  def serialize(resource:, serialized_json:, binding:); end

  # source://forwardable/1.3.3/forwardable.rb#231
  def to_h(*args, **_arg1, &block); end

  private

  # This methods exists here instead of delegation because
  # `Alba::Resource#encode` is private and it prints warning if we use `def_delegators`
  #
  # @api private
  #
  # source://alba//lib/alba/layout.rb#66
  def encode(hash); end

  # @api private
  #
  # source://alba//lib/alba/layout.rb#54
  def serialize_within_inline_layout; end

  # @api private
  #
  # source://alba//lib/alba/layout.rb#50
  def serialize_within_string_layout(bnd); end

  # @api private
  #
  # source://alba//lib/alba/layout.rb#48
  def serialized_json; end
end

# Representing nested attribute
#
# @api private
#
# source://alba//lib/alba/nested_attribute.rb#6
class Alba::NestedAttribute
  # @api private
  # @param key_transformation [Symbol] determines how to transform keys
  # @param block [Proc] class body
  # @return [NestedAttribute] a new instance of NestedAttribute
  #
  # source://alba//lib/alba/nested_attribute.rb#12
  def initialize(key_transformation: T.unsafe(nil), &block); end

  # Setter for key_transformation, used when it's changed after class definition
  #
  # @api private
  #
  # source://alba//lib/alba/nested_attribute.rb#8
  def key_transformation=(_arg0); end

  # @api private
  # @param object [Object] the object being serialized
  # @param params [Hash] params Hash inherited from Resource
  # @param within [Object, nil, false, true] determines what associations to be serialized. If not set, it serializes all associations.
  # @return [Hash] hash serialized from running the class body in the object
  #
  # source://alba//lib/alba/nested_attribute.rb#21
  def value(object:, params:, within:); end
end

# A constant to remove key from serialized JSON
#
# source://alba//lib/alba/constants.rb#5
Alba::REMOVE_KEY = T.let(T.unsafe(nil), Object)

# Rails integration
#
# source://alba//lib/alba/railtie.rb#5
class Alba::Railtie < ::Rails::Railtie; end

# This module represents what should be serialized
#
# source://alba//lib/alba/resource.rb#14
module Alba::Resource
  include ::Alba::Resource::InstanceMethods

  mixes_in_class_methods ::Alba::Resource::ClassMethods

  class << self
    # `setup` method is meta-programmatically defined here for performance.
    #
    # @private
    #
    # source://alba//lib/alba/resource.rb#25
    def included(base); end
  end
end

# Class methods
#
# source://alba//lib/alba/resource.rb#298
module Alba::Resource::ClassMethods
  # source://alba//lib/alba/resource.rb#299
  def _attributes; end

  # source://alba//lib/alba/resource.rb#299
  def _collection_key; end

  # source://alba//lib/alba/resource.rb#299
  def _helper; end

  # source://alba//lib/alba/resource.rb#299
  def _key; end

  # source://alba//lib/alba/resource.rb#299
  def _key_for_collection; end

  # source://alba//lib/alba/resource.rb#299
  def _key_transformation_cascade; end

  # source://alba//lib/alba/resource.rb#299
  def _layout; end

  # source://alba//lib/alba/resource.rb#299
  def _meta; end

  # source://alba//lib/alba/resource.rb#299
  def _on_error; end

  # source://alba//lib/alba/resource.rb#299
  def _on_nil; end

  # source://alba//lib/alba/resource.rb#299
  def _resource_methods; end

  # source://alba//lib/alba/resource.rb#299
  def _transform_type; end

  # source://alba//lib/alba/resource.rb#299
  def _transforming_root_key; end

  # Set association
  #
  # @option options
  # @param name [String, Symbol] name of the association, used as key when `key` param doesn't exist
  # @param condition [Proc, nil] a Proc to modify the association
  # @param resource [Class<Alba::Resource>, String, Proc, nil] representing resource for this association
  # @param key [String, Symbol, nil] used as key when given
  # @param params [Hash] params override for the association
  # @param options [Hash<Symbol, Proc>]
  # @param block [Block]
  # @return [void]
  # @see Alba::Association#initialize
  #
  # source://alba//lib/alba/resource.rb#374
  def association(name, condition = T.unsafe(nil), resource: T.unsafe(nil), key: T.unsafe(nil), params: T.unsafe(nil), **options, &block); end

  # Set an attribute with the given block
  #
  # @option options
  # @param name [String, Symbol] key name
  # @param options [Hash<Symbol, Proc>]
  # @param block [Block] the block called during serialization
  # @raise [ArgumentError] if block is absent
  # @return [void]
  #
  # source://alba//lib/alba/resource.rb#356
  def attribute(name, **options, &block); end

  # Set multiple attributes at once
  #
  # @param attrs [Array<String, Symbol>]
  # @param if [Proc] condition to decide if it should serialize these attributes
  # @param attrs_with_types [Hash<[Symbol, String], [Array<Symbol, Proc>, Symbol]>] attributes with name in its key and type and optional type converter in its value
  # @return [void]
  #
  # source://alba//lib/alba/resource.rb#322
  def attributes(*attrs, if: T.unsafe(nil), **attrs_with_types); end

  # Sets key for collection serialization
  #
  # @param key [String, Symbol]
  #
  # source://alba//lib/alba/resource.rb#492
  def collection_key(key); end

  # Set association
  #
  # @option options
  # @param name [String, Symbol] name of the association, used as key when `key` param doesn't exist
  # @param condition [Proc, nil] a Proc to modify the association
  # @param resource [Class<Alba::Resource>, String, Proc, nil] representing resource for this association
  # @param key [String, Symbol, nil] used as key when given
  # @param params [Hash] params override for the association
  # @param options [Hash<Symbol, Proc>]
  # @param block [Block]
  # @return [void]
  # @see Alba::Association#initialize
  #
  # source://alba//lib/alba/resource.rb#374
  def has_many(name, condition = T.unsafe(nil), resource: T.unsafe(nil), key: T.unsafe(nil), params: T.unsafe(nil), **options, &block); end

  # Set association
  #
  # @option options
  # @param name [String, Symbol] name of the association, used as key when `key` param doesn't exist
  # @param condition [Proc, nil] a Proc to modify the association
  # @param resource [Class<Alba::Resource>, String, Proc, nil] representing resource for this association
  # @param key [String, Symbol, nil] used as key when given
  # @param params [Hash] params override for the association
  # @param options [Hash<Symbol, Proc>]
  # @param block [Block]
  # @return [void]
  # @see Alba::Association#initialize
  #
  # source://alba//lib/alba/resource.rb#374
  def has_one(name, condition = T.unsafe(nil), resource: T.unsafe(nil), key: T.unsafe(nil), params: T.unsafe(nil), **options, &block); end

  # Define helper methods
  #
  # @param mod [Module] a module to extend
  #
  # source://alba//lib/alba/resource.rb#529
  def helper(mod = T.unsafe(nil), &block); end

  # @private
  #
  # source://alba//lib/alba/resource.rb#308
  def inherited(subclass); end

  # Set layout
  #
  # @param file [String] name of the layout file
  # @param inline [Proc] a proc returning JSON string or a Hash representing JSON
  #
  # source://alba//lib/alba/resource.rb#446
  def layout(file: T.unsafe(nil), inline: T.unsafe(nil)); end

  # Set association
  #
  # @option options
  # @param name [String, Symbol] name of the association, used as key when `key` param doesn't exist
  # @param condition [Proc, nil] a Proc to modify the association
  # @param resource [Class<Alba::Resource>, String, Proc, nil] representing resource for this association
  # @param key [String, Symbol, nil] used as key when given
  # @param params [Hash] params override for the association
  # @param options [Hash<Symbol, Proc>]
  # @param block [Block]
  # @return [void]
  # @see Alba::Association#initialize
  #
  # source://alba//lib/alba/resource.rb#374
  def many(name, condition = T.unsafe(nil), resource: T.unsafe(nil), key: T.unsafe(nil), params: T.unsafe(nil), **options, &block); end

  # Set metadata
  #
  # source://alba//lib/alba/resource.rb#438
  def meta(key = T.unsafe(nil), &block); end

  # This `method_added` is used for defining "resource methods"
  #
  # source://alba//lib/alba/resource.rb#302
  def method_added(method_name); end

  # Set a nested attribute with the given block
  #
  # @option options
  # @param name [String, Symbol] key name
  # @param options [Hash<Symbol, Proc>]
  # @param block [Block] the block called during serialization
  # @raise [ArgumentError] if block is absent
  # @return [void]
  #
  # source://alba//lib/alba/resource.rb#403
  def nested(name, **options, &block); end

  # Set a nested attribute with the given block
  #
  # @option options
  # @param name [String, Symbol] key name
  # @param options [Hash<Symbol, Proc>]
  # @param block [Block] the block called during serialization
  # @raise [ArgumentError] if block is absent
  # @return [void]
  #
  # source://alba//lib/alba/resource.rb#403
  def nested_attribute(name, **options, &block); end

  # Set error handler
  # If this is set it's used as a error handler overriding global one
  #
  # @param handler [Symbol] `:raise`, `:ignore` or `:nullify`
  # @param block [Block]
  # @raise [ArgumentError]
  #
  # source://alba//lib/alba/resource.rb#501
  def on_error(handler = T.unsafe(nil), &block); end

  # Set nil handler
  #
  # @param block [Block]
  #
  # source://alba//lib/alba/resource.rb#522
  def on_nil(&block); end

  # Set association
  #
  # @option options
  # @param name [String, Symbol] name of the association, used as key when `key` param doesn't exist
  # @param condition [Proc, nil] a Proc to modify the association
  # @param resource [Class<Alba::Resource>, String, Proc, nil] representing resource for this association
  # @param key [String, Symbol, nil] used as key when given
  # @param params [Hash] params override for the association
  # @param options [Hash<Symbol, Proc>]
  # @param block [Block]
  # @return [void]
  # @see Alba::Association#initialize
  #
  # source://alba//lib/alba/resource.rb#374
  def one(name, condition = T.unsafe(nil), resource: T.unsafe(nil), key: T.unsafe(nil), params: T.unsafe(nil), **options, &block); end

  # DSL for alias, purely for readability
  #
  # source://alba//lib/alba/resource.rb#541
  def prefer_object_method!; end

  # DSL for alias, purely for readability
  #
  # source://alba//lib/alba/resource.rb#536
  def prefer_resource_method!; end

  # Set root key
  #
  # @param key [String, Symbol]
  # @param key_for_collection [String, Symbol]
  # @raise [NoMethodError] when key doesn't respond to `to_sym` method
  #
  # source://alba//lib/alba/resource.rb#417
  def root_key(key, key_for_collection = T.unsafe(nil)); end

  # Set root key to true
  #
  # source://alba//lib/alba/resource.rb#432
  def root_key!; end

  # Set root key for collection
  #
  # @param key [String, Symbol]
  # @raise [NoMethodError] when key doesn't respond to `to_sym` method
  #
  # source://alba//lib/alba/resource.rb#426
  def root_key_for_collection(key); end

  # Transform keys as specified type
  #
  # @param type [String, Symbol] one of `snake`, `:camel`, `:lower_camel`, `:dash` and `none`
  # @param root [Boolean] decides if root key also should be transformed
  # @param cascade [Boolean] decides if key transformation cascades into inline association
  #   Default is true but can be set false for old (v1) behavior
  # @raise [Alba::Error] when type is not supported
  #
  # source://alba//lib/alba/resource.rb#457
  def transform_keys(type, root: T.unsafe(nil), cascade: T.unsafe(nil)); end

  # Transform keys as specified type AFTER the class is defined
  # Note that this is an experimental API and may be removed/changed
  #
  # @see #transform_keys
  #
  # source://alba//lib/alba/resource.rb#473
  def transform_keys!(type); end

  private

  # source://alba//lib/alba/resource.rb#328
  def assign_attributes(attrs, if_value); end

  # source://alba//lib/alba/resource.rb#337
  def assign_attributes_with_types(attrs_with_types, if_value); end

  # source://alba//lib/alba/resource.rb#386
  def nesting; end

  # source://alba//lib/alba/resource.rb#508
  def validated_error_handler(handler); end
end

# source://alba//lib/alba/resource.rb#17
Alba::Resource::INTERNAL_VARIABLES = T.let(T.unsafe(nil), Hash)

# Instance methods
#
# source://alba//lib/alba/resource.rb#43
module Alba::Resource::InstanceMethods
  # @param object [Object] the object to be serialized
  # @param params [Hash] user-given Hash for arbitrary data
  # @param within [Object, nil, false, true] determines what associations to be serialized. If not set, it serializes all associations.
  #
  # source://alba//lib/alba/resource.rb#49
  def initialize(object, params: T.unsafe(nil), within: T.unsafe(nil)); end

  # Returns a Hash corresponding {#serialize}
  #
  # @param _options [Hash] dummy parameter for Rails compatibility
  # @param root_key [Symbol, nil, true]
  # @param meta [Hash] metadata for this serialization
  # @return [Hash]
  #
  # source://alba//lib/alba/resource.rb#87
  def as_json(_options = T.unsafe(nil), root_key: T.unsafe(nil), meta: T.unsafe(nil)); end

  # Returns the value of attribute object.
  #
  # source://alba//lib/alba/resource.rb#44
  def object; end

  # Returns the value of attribute params.
  #
  # source://alba//lib/alba/resource.rb#44
  def params; end

  # A Hash for serialization
  #
  # @return [Hash]
  #
  # source://alba//lib/alba/resource.rb#101
  def serializable_hash; end

  # Serialize object into JSON string
  #
  # @param root_key [Symbol, nil, true]
  # @param meta [Hash] metadata for this serialization
  # @return [String] serialized JSON string
  #
  # source://alba//lib/alba/resource.rb#61
  def serialize(root_key: T.unsafe(nil), meta: T.unsafe(nil)); end

  # A Hash for serialization
  #
  # @return [Hash]
  #
  # source://alba//lib/alba/resource.rb#101
  def to_h; end

  # For Rails compatibility
  # The first options is a dummy parameter
  #
  # @see #serialize
  # @see https://github.com/rails/rails/blob/7-0-stable/actionpack/lib/action_controller/metal/renderers.rb#L156
  #
  # source://alba//lib/alba/resource.rb#70
  def to_json(options = T.unsafe(nil), root_key: T.unsafe(nil), meta: T.unsafe(nil)); end

  private

  # source://alba//lib/alba/resource.rb#261
  def _fetch_attribute_from_object_first(obj, attribute); end

  # source://alba//lib/alba/resource.rb#267
  def _fetch_attribute_from_resource_first(obj, attribute); end

  # source://alba//lib/alba/resource.rb#155
  def _key; end

  # source://alba//lib/alba/resource.rb#150
  def _key_for_collection; end

  # source://alba//lib/alba/resource.rb#128
  def _metadata(block, meta); end

  # This is default behavior for getting attributes for serialization
  # Override this method to filter certain attributes
  #
  # source://alba//lib/alba/resource.rb#203
  def attributes; end

  # source://alba//lib/alba/resource.rb#190
  def attributes_to_hash(obj, hash); end

  # source://alba//lib/alba/resource.rb#284
  def check_within(association_name); end

  # source://alba//lib/alba/resource.rb#181
  def collection_converter; end

  # source://alba//lib/alba/resource.rb#175
  def converter; end

  # source://alba//lib/alba/resource.rb#242
  def fetch_attribute(obj, key, attribute); end

  # source://alba//lib/alba/resource.rb#257
  def fetch_attribute_from_object_and_resource(obj, attribute); end

  # @return [String]
  #
  # source://alba//lib/alba/resource.rb#145
  def fetch_key; end

  # source://alba//lib/alba/resource.rb#221
  def handle_error(error, obj, key, attribute, hash); end

  # source://alba//lib/alba/resource.rb#115
  def hash_with_metadata(hash, meta); end

  # source://alba//lib/alba/resource.rb#275
  def nil_handler; end

  # @raise [Alba::Error]
  #
  # source://alba//lib/alba/resource.rb#160
  def resource_name(pluralized: T.unsafe(nil)); end

  # Default implementation for selecting attributes
  # Override this method to filter attributes based on key and value
  #
  # source://alba//lib/alba/resource.rb#209
  def select(_key, _value); end

  # source://alba//lib/alba/resource.rb#132
  def serializable_hash_for_collection; end

  # source://alba//lib/alba/resource.rb#108
  def serialize_with(hash); end

  # source://alba//lib/alba/resource.rb#213
  def set_key_and_attribute_body_from(obj, key, attribute, hash); end

  # source://alba//lib/alba/resource.rb#236
  def transform_key(key); end

  # @return [Boolean]
  #
  # source://alba//lib/alba/resource.rb#171
  def transforming_root_key?; end

  # source://alba//lib/alba/resource.rb#279
  def yield_if_within(association_name); end
end

# source://alba//lib/alba/resource.rb#20
Alba::Resource::WITHIN_DEFAULT = T.let(T.unsafe(nil), Object)

# source://alba//lib/alba/resource.rb#547
Alba::Serializer = Alba::Resource

# Representing type itself, combined with {Alba::TypedAttribute}
#
# source://alba//lib/alba/type.rb#5
class Alba::Type
  # @param name [Symbol, String] name of the type
  # @param check [Proc, Boolean] proc to check type
  #   If false, type check is skipped
  # @param converter [Proc] proc to convert type
  # @param auto_convert [Boolean] whether to convert type automatically
  # @return [Type] a new instance of Type
  #
  # source://alba//lib/alba/type.rb#14
  def initialize(name, check:, converter:, auto_convert: T.unsafe(nil)); end

  # Sets the attribute auto_convert
  #
  # @param value the value to set the attribute auto_convert to.
  #
  # source://alba//lib/alba/type.rb#7
  def auto_convert=(_arg0); end

  # Enable auto convert with given converter
  #
  # @param converter [Proc] proc to convert type
  #
  # source://alba//lib/alba/type.rb#40
  def auto_convert_with(converter); end

  # Type check
  #
  # @param value [Object] value to check
  # @return [Boolean] the result of type check
  #
  # source://alba//lib/alba/type.rb#25
  def check(value); end

  # Type convert
  # If @auto_convert is true, @convert proc is called with obj
  # Otherwise, it raises an exception that is caught by {Alba::TypedAttribute}
  #
  # @param obj [Object] object to convert
  #
  # source://alba//lib/alba/type.rb#34
  def convert(obj); end

  # Returns the value of attribute name.
  #
  # source://alba//lib/alba/type.rb#6
  def name; end
end

# Representing typed attributes to encapsulate logic about types
#
# @api private
#
# source://alba//lib/alba/typed_attribute.rb#6
class Alba::TypedAttribute
  # @api private
  # @param name [Symbol, String]
  # @param type [Symbol, Class]
  # @param converter [Proc]
  # @return [TypedAttribute] a new instance of TypedAttribute
  #
  # source://alba//lib/alba/typed_attribute.rb#10
  def initialize(name:, type:, converter:); end

  # @api private
  # @return [String, Integer, Boolean] type-checked or type-converted object
  #
  # source://alba//lib/alba/typed_attribute.rb#22
  def value; end

  private

  # @api private
  #
  # source://alba//lib/alba/typed_attribute.rb#32
  def display_value_for(value); end
end

# Error class for backend which is not supported
#
# source://alba//lib/alba/errors.rb#8
class Alba::UnsupportedBackend < ::Alba::Error; end

# Error class for type which is not supported
#
# source://alba//lib/alba/errors.rb#11
class Alba::UnsupportedType < ::Alba::Error; end

# source://alba//lib/alba/version.rb#4
Alba::VERSION = T.let(T.unsafe(nil), String)

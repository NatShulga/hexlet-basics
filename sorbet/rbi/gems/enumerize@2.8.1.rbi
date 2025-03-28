# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `enumerize` gem.
# Please instead update this file by running `bin/tapioca gem enumerize`.


# source://enumerize//lib/enumerize/version.rb#3
module Enumerize
  class << self
    # @private
    #
    # source://enumerize//lib/enumerize.rb#35
    def extended(base); end

    # @private
    #
    # source://enumerize//lib/enumerize.rb#30
    def included(base); end
  end
end

# source://enumerize//lib/enumerize/activemodel.rb#4
module Enumerize::ActiveModelAttributesSupport
  # source://enumerize//lib/enumerize/activemodel.rb#5
  def enumerize(name, options = T.unsafe(nil)); end
end

# source://enumerize//lib/enumerize/activemodel.rb#17
module Enumerize::ActiveModelAttributesSupport::InstanceMethods
  # https://github.com/brainspec/enumerize/issues/74
  #
  # source://enumerize//lib/enumerize/activemodel.rb#19
  def write_attribute(attr_name, value, *options); end
end

# source://enumerize//lib/enumerize/activemodel.rb#28
class Enumerize::ActiveModelAttributesSupport::Type < ::ActiveModel::Type::Value
  # @return [Type] a new instance of Type
  #
  # source://enumerize//lib/enumerize/activemodel.rb#33
  def initialize(attr); end

  # source://enumerize//lib/enumerize/activemodel.rb#42
  def deserialize(value); end

  # source://enumerize//lib/enumerize/activemodel.rb#37
  def serialize(value); end

  # source://enumerize//lib/enumerize/activemodel.rb#29
  def type; end
end

# source://enumerize//lib/enumerize/activerecord.rb#4
module Enumerize::ActiveRecordSupport
  # source://enumerize//lib/enumerize/activerecord.rb#5
  def enumerize(name, options = T.unsafe(nil)); end
end

# source://enumerize//lib/enumerize/activerecord.rb#48
module Enumerize::ActiveRecordSupport::InstanceMethods
  # Support multiple enumerized attributes
  #
  # source://enumerize//lib/enumerize/activerecord.rb#59
  def becomes(klass); end

  # source://enumerize//lib/enumerize/activerecord.rb#72
  def reload(options = T.unsafe(nil)); end

  # https://github.com/brainspec/enumerize/issues/74
  #
  # source://enumerize//lib/enumerize/activerecord.rb#50
  def write_attribute(attr_name, value, *options); end
end

# source://enumerize//lib/enumerize/activerecord.rb#97
module Enumerize::ActiveRecordSupport::RelationMethods
  # source://enumerize//lib/enumerize/activerecord.rb#98
  def update_all(updates); end
end

# source://enumerize//lib/enumerize/activerecord.rb#111
class Enumerize::ActiveRecordSupport::Type < ::ActiveModel::Type::Value
  # @return [Type] a new instance of Type
  #
  # source://enumerize//lib/enumerize/activerecord.rb#114
  def initialize(attr, subtype); end

  # source://enumerize//lib/enumerize/activerecord.rb#136
  def as_json(options = T.unsafe(nil)); end

  # source://enumerize//lib/enumerize/activerecord.rb#126
  def cast(value); end

  # source://enumerize//lib/enumerize/activerecord.rb#140
  def encode_with(coder); end

  # source://enumerize//lib/enumerize/activerecord.rb#146
  def init_with(coder); end

  # source://enumerize//lib/enumerize/activerecord.rb#119
  def serialize(value); end

  # source://enumerize//lib/enumerize/activerecord.rb#112
  def type(*_arg0, **_arg1, &_arg2); end
end

# source://enumerize//lib/enumerize/attribute.rb#4
class Enumerize::Attribute
  # @raise [ArgumentError]
  # @return [Attribute] a new instance of Attribute
  #
  # source://enumerize//lib/enumerize/attribute.rb#7
  def initialize(klass, name, options = T.unsafe(nil)); end

  # Returns the value of attribute arguments.
  #
  # source://enumerize//lib/enumerize/attribute.rb#5
  def arguments; end

  # Returns the value of attribute default_value.
  #
  # source://enumerize//lib/enumerize/attribute.rb#5
  def default_value; end

  # source://enumerize//lib/enumerize/attribute.rb#91
  def define_methods!(mod); end

  # source://enumerize//lib/enumerize/attribute.rb#48
  def each_value; end

  # source://enumerize//lib/enumerize/attribute.rb#32
  def find_default_value(value); end

  # source://enumerize//lib/enumerize/attribute.rb#40
  def find_value(value); end

  # source://enumerize//lib/enumerize/attribute.rb#44
  def find_values(*values); end

  # Returns the value of attribute i18n_scope.
  #
  # source://enumerize//lib/enumerize/attribute.rb#5
  def i18n_scope; end

  # source://enumerize//lib/enumerize/attribute.rb#56
  def i18n_scopes; end

  # Returns the value of attribute klass.
  #
  # source://enumerize//lib/enumerize/attribute.rb#5
  def klass; end

  # Returns the value of attribute name.
  #
  # source://enumerize//lib/enumerize/attribute.rb#5
  def name; end

  # source://enumerize//lib/enumerize/attribute.rb#66
  def options(options = T.unsafe(nil)); end

  # Returns the value of attribute skip_validations_value.
  #
  # source://enumerize//lib/enumerize/attribute.rb#5
  def skip_validations_value; end

  # @return [Boolean]
  #
  # source://enumerize//lib/enumerize/attribute.rb#52
  def value?(value); end

  # Returns the value of attribute values.
  #
  # source://enumerize//lib/enumerize/attribute.rb#5
  def values; end

  private

  # source://enumerize//lib/enumerize/attribute.rb#136
  def method_missing(method); end

  # @return [Boolean]
  #
  # source://enumerize//lib/enumerize/attribute.rb#87
  def respond_to_missing?(method, include_private = T.unsafe(nil)); end
end

# source://enumerize//lib/enumerize/attribute_map.rb#4
class Enumerize::AttributeMap
  # @return [AttributeMap] a new instance of AttributeMap
  #
  # source://enumerize//lib/enumerize/attribute_map.rb#7
  def initialize; end

  # source://enumerize//lib/enumerize/attribute_map.rb#16
  def <<(attr); end

  # source://enumerize//lib/enumerize/attribute_map.rb#12
  def [](name); end

  # source://enumerize//lib/enumerize/attribute_map.rb#33
  def add_dependant(dependant); end

  # Returns the value of attribute attributes.
  #
  # source://enumerize//lib/enumerize/attribute_map.rb#5
  def attributes; end

  # source://enumerize//lib/enumerize/attribute_map.rb#23
  def each; end

  # @return [Boolean]
  #
  # source://enumerize//lib/enumerize/attribute_map.rb#29
  def empty?; end
end

# source://enumerize//lib/enumerize/base.rb#4
module Enumerize::Base
  mixes_in_class_methods ::Enumerize::Base::ClassMethods
  mixes_in_class_methods ::Enumerize::Base::ClassMethods::Hook

  # source://enumerize//lib/enumerize/base.rb#52
  def initialize(*_arg0, **_arg1, &_arg2); end

  # source://enumerize//lib/enumerize/base.rb#57
  def read_attribute_for_validation(key); end

  private

  # source://enumerize//lib/enumerize/base.rb#71
  def _enumerized_values_for_validation; end

  # source://enumerize//lib/enumerize/base.rb#97
  def _set_default_value_for_enumerized_attribute(attr); end

  # source://enumerize//lib/enumerize/base.rb#91
  def _set_default_value_for_enumerized_attributes; end

  # source://enumerize//lib/enumerize/base.rb#75
  def _validate_enumerized_attributes; end

  class << self
    # @private
    #
    # source://enumerize//lib/enumerize/base.rb#5
    def included(base); end
  end
end

# source://enumerize//lib/enumerize/base.rb#14
module Enumerize::Base::ClassMethods
  # source://enumerize//lib/enumerize/base.rb#15
  def enumerize(name, options = T.unsafe(nil)); end

  # source://enumerize//lib/enumerize/base.rb#30
  def enumerized_attributes; end

  private

  # source://enumerize//lib/enumerize/base.rb#43
  def _enumerize_module; end
end

# source://enumerize//lib/enumerize/base.rb#34
module Enumerize::Base::ClassMethods::Hook
  # source://enumerize//lib/enumerize/base.rb#35
  def inherited(subclass); end
end

# source://enumerize//lib/enumerize/module.rb#4
class Enumerize::Module < ::Module
  # @return [Module] a new instance of Module
  #
  # source://enumerize//lib/enumerize/module.rb#7
  def initialize; end

  # Returns the value of attribute _class_methods.
  #
  # source://enumerize//lib/enumerize/module.rb#5
  def _class_methods; end

  # source://enumerize//lib/enumerize/module.rb#25
  def dependent_eval(&block); end

  # source://enumerize//lib/enumerize/module.rb#15
  def included(klass); end
end

# source://enumerize//lib/enumerize/module_attributes.rb#4
module Enumerize::ModuleAttributes
  # source://enumerize//lib/enumerize/module_attributes.rb#5
  def included(base); end
end

# source://enumerize//lib/enumerize/mongoid.rb#4
module Enumerize::MongoidSupport
  # source://enumerize//lib/enumerize/mongoid.rb#5
  def enumerize(name, options = T.unsafe(nil)); end
end

# source://enumerize//lib/enumerize/mongoid.rb#17
module Enumerize::MongoidSupport::InstanceMethods
  # source://enumerize//lib/enumerize/mongoid.rb#18
  def reload; end

  private

  # source://enumerize//lib/enumerize/mongoid.rb#30
  def _set_default_value_for_enumerized_attribute(attr); end
end

# source://enumerize//lib/enumerize/attribute.rb#145
module Enumerize::Multiple
  # source://enumerize//lib/enumerize/attribute.rb#154
  def define_methods!(mod); end

  # source://enumerize//lib/enumerize/attribute.rb#146
  def find_default_value(value); end
end

# source://enumerize//lib/enumerize/predicatable.rb#4
module Enumerize::Predicatable
  private

  # source://enumerize//lib/enumerize/predicatable.rb#11
  def method_missing(method, *args, &block); end

  # @return [Boolean]
  #
  # source://enumerize//lib/enumerize/predicatable.rb#19
  def predicate_method?(method); end

  # @return [Boolean]
  #
  # source://enumerize//lib/enumerize/predicatable.rb#5
  def respond_to_missing?(method, include_private = T.unsafe(nil)); end
end

# Predicate methods.
#
# Basic usage:
#
#     class User
#       extend Enumerize
#       enumerize :sex, in: %w(male female), predicates: true
#     end
#
#     user = User.new
#
#     user.male?   # => false
#     user.female? # => false
#
#     user.sex = 'male'
#
#     user.male?   # => true
#     user.female? # => false
#
# Using prefix:
#
#     class User
#       extend Enumerize
#       enumerize :sex, in: %w(male female), predicates: { prefix: true }
#     end
#
#     user = User.new
#     user.sex = 'female'
#     user.sex_female? # => true
#
# Use <tt>only</tt> and <tt>except</tt> options to specify what values create
# predicate methods for.
#
# source://enumerize//lib/enumerize/predicates.rb#38
module Enumerize::Predicates
  # source://enumerize//lib/enumerize/predicates.rb#39
  def enumerize(name, options = T.unsafe(nil)); end
end

# source://enumerize//lib/enumerize/predicates.rb#47
class Enumerize::Predicates::Builder
  # @return [Builder] a new instance of Builder
  #
  # source://enumerize//lib/enumerize/predicates.rb#48
  def initialize(attr, options); end

  # source://enumerize//lib/enumerize/predicates.rb#71
  def build(klass); end

  # source://enumerize//lib/enumerize/predicates.rb#67
  def names; end

  # source://enumerize//lib/enumerize/predicates.rb#53
  def values; end

  # source://enumerize//lib/enumerize/predicates.rb#77
  def warn_on_already_defined_methods; end
end

# source://enumerize//lib/enumerize.rb#24
module Enumerize::Scope; end

# source://enumerize//lib/enumerize/scope/activerecord.rb#5
module Enumerize::Scope::ActiveRecord
  # source://enumerize//lib/enumerize/scope/activerecord.rb#6
  def enumerize(name, options = T.unsafe(nil)); end

  private

  # source://enumerize//lib/enumerize/scope/activerecord.rb#20
  def _define_activerecord_scope_methods!(name, options); end

  # source://enumerize//lib/enumerize/scope/activerecord.rb#40
  def _define_activerecord_shallow_scopes!(attribute_name); end
end

# source://enumerize//lib/enumerize/scope/mongoid.rb#5
module Enumerize::Scope::Mongoid
  # source://enumerize//lib/enumerize/scope/mongoid.rb#6
  def enumerize(name, options = T.unsafe(nil)); end

  private

  # source://enumerize//lib/enumerize/scope/mongoid.rb#20
  def _define_mongoid_scope_methods!(name, options); end

  # source://enumerize//lib/enumerize/scope/mongoid.rb#37
  def _define_mongoid_shallow_scopes!(attribute_name); end
end

# source://enumerize//lib/enumerize/scope/sequel.rb#5
module Enumerize::Scope::Sequel
  # source://enumerize//lib/enumerize/scope/sequel.rb#6
  def enumerize(name, options = T.unsafe(nil)); end

  private

  # source://enumerize//lib/enumerize/scope/sequel.rb#22
  def _define_sequel_scope_methods!(name, options); end

  # source://enumerize//lib/enumerize/scope/sequel.rb#43
  def _define_sequel_shallow_scopes!(attribute_name); end
end

# source://enumerize//lib/enumerize/sequel.rb#4
module Enumerize::SequelSupport
  # source://enumerize//lib/enumerize/sequel.rb#5
  def enumerize(name, options = T.unsafe(nil)); end
end

# source://enumerize//lib/enumerize/sequel.rb#19
module Enumerize::SequelSupport::InstanceMethods
  # source://enumerize//lib/enumerize/sequel.rb#38
  def _set_default_value_for_enumerized_attributes; end

  # source://enumerize//lib/enumerize/sequel.rb#20
  def validate; end
end

# source://enumerize//lib/enumerize/set.rb#6
class Enumerize::Set
  include ::Enumerable
  include ::Enumerize::Predicatable

  # @return [Set] a new instance of Set
  #
  # source://enumerize//lib/enumerize/set.rb#12
  def initialize(obj, attr, values); end

  # source://enumerize//lib/enumerize/set.rb#28
  def <<(value); end

  # source://enumerize//lib/enumerize/set.rb#47
  def ==(other); end

  # source://enumerize//lib/enumerize/set.rb#58
  def delete(value); end

  # source://enumerize//lib/enumerize/set.rb#35
  def each(*_arg0, **_arg1, &_arg2); end

  # source://enumerize//lib/enumerize/set.rb#35
  def empty?(*_arg0, **_arg1, &_arg2); end

  # source://enumerize//lib/enumerize/set.rb#67
  def encode_with(coder); end

  # source://enumerize//lib/enumerize/set.rb#47
  def eql?(other); end

  # @return [Boolean]
  #
  # source://enumerize//lib/enumerize/set.rb#54
  def include?(value); end

  # source://enumerize//lib/enumerize/set.rb#63
  def inspect; end

  # source://enumerize//lib/enumerize/set.rb#45
  def join(*_arg0, **_arg1, &_arg2); end

  # source://enumerize//lib/enumerize/set.rb#28
  def push(value); end

  # source://enumerize//lib/enumerize/set.rb#35
  def size(*_arg0, **_arg1, &_arg2); end

  # source://enumerize//lib/enumerize/set.rb#41
  def texts; end

  # source://enumerize//lib/enumerize/set.rb#37
  def to_ary; end

  # Returns the value of attribute values.
  #
  # source://enumerize//lib/enumerize/set.rb#10
  def values; end

  private

  # source://enumerize//lib/enumerize/set.rb#77
  def mutate!; end

  # source://enumerize//lib/enumerize/set.rb#73
  def predicate_call(value); end
end

# source://enumerize//lib/enumerize/utils.rb#4
module Enumerize::Utils
  class << self
    # source://enumerize//lib/enumerize/utils.rb#6
    def call_if_callable(value, param = T.unsafe(nil)); end
  end
end

# source://enumerize//lib/enumerize/version.rb#4
Enumerize::VERSION = T.let(T.unsafe(nil), String)

# source://enumerize//lib/enumerize/value.rb#7
class Enumerize::Value < ::String
  include ::Enumerize::Predicatable

  # @return [Value] a new instance of Value
  #
  # source://enumerize//lib/enumerize/value.rb#12
  def initialize(attr, name, value = T.unsafe(nil)); end

  # source://enumerize//lib/enumerize/value.rb#33
  def ==(other); end

  # source://enumerize//lib/enumerize/value.rb#41
  def as_json(*_arg0); end

  # source://enumerize//lib/enumerize/value.rb#37
  def encode_with(coder); end

  # source://enumerize//lib/enumerize/value.rb#29
  def text; end

  # Returns the value of attribute value.
  #
  # source://enumerize//lib/enumerize/value.rb#10
  def value; end

  private

  # source://enumerize//lib/enumerize/value.rb#47
  def predicate_call(value); end
end

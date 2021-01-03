# This is an autogenerated file for dynamic methods in Language::Lesson::Version
# Please rerun bundle exec rake rails_rbi:models[Language::Lesson::Version] to regenerate.

# typed: strong
module Language::Lesson::Version::ActiveRelation_WhereNot
  sig { params(opts: T.untyped, rest: T.untyped).returns(T.self_type) }
  def not(opts, *rest); end
end

module Language::Lesson::Version::GeneratedAttributeMethods
  sig { returns(ActiveSupport::TimeWithZone) }
  def created_at; end

  sig { params(value: T.any(Date, Time, ActiveSupport::TimeWithZone)).void }
  def created_at=(value); end

  sig { returns(T::Boolean) }
  def created_at?; end

  sig { returns(Integer) }
  def id; end

  sig { params(value: T.any(Numeric, ActiveSupport::Duration)).void }
  def id=(value); end

  sig { returns(T::Boolean) }
  def id?; end

  sig { returns(Integer) }
  def language_id; end

  sig { params(value: T.any(Numeric, ActiveSupport::Duration)).void }
  def language_id=(value); end

  sig { returns(T::Boolean) }
  def language_id?; end

  sig { returns(Integer) }
  def language_version_id; end

  sig { params(value: T.any(Numeric, ActiveSupport::Duration)).void }
  def language_version_id=(value); end

  sig { returns(T::Boolean) }
  def language_version_id?; end

  sig { returns(Integer) }
  def lesson_id; end

  sig { params(value: T.any(Numeric, ActiveSupport::Duration)).void }
  def lesson_id=(value); end

  sig { returns(T::Boolean) }
  def lesson_id?; end

  sig { returns(Integer) }
  def module_version_id; end

  sig { params(value: T.any(Numeric, ActiveSupport::Duration)).void }
  def module_version_id=(value); end

  sig { returns(T::Boolean) }
  def module_version_id?; end

  sig { returns(T.nilable(Integer)) }
  def natural_order; end

  sig { params(value: T.nilable(T.any(Numeric, ActiveSupport::Duration))).void }
  def natural_order=(value); end

  sig { returns(T::Boolean) }
  def natural_order?; end

  sig { returns(T.nilable(Integer)) }
  def order; end

  sig { params(value: T.nilable(T.any(Numeric, ActiveSupport::Duration))).void }
  def order=(value); end

  sig { returns(T::Boolean) }
  def order?; end

  sig { returns(T.nilable(String)) }
  def original_code; end

  sig { params(value: T.nilable(T.any(String, Symbol))).void }
  def original_code=(value); end

  sig { returns(T::Boolean) }
  def original_code?; end

  sig { returns(T.nilable(String)) }
  def path_to_code; end

  sig { params(value: T.nilable(T.any(String, Symbol))).void }
  def path_to_code=(value); end

  sig { returns(T::Boolean) }
  def path_to_code?; end

  sig { returns(T.nilable(String)) }
  def prepared_code; end

  sig { params(value: T.nilable(T.any(String, Symbol))).void }
  def prepared_code=(value); end

  sig { returns(T::Boolean) }
  def prepared_code?; end

  sig { returns(T.nilable(String)) }
  def test_code; end

  sig { params(value: T.nilable(T.any(String, Symbol))).void }
  def test_code=(value); end

  sig { returns(T::Boolean) }
  def test_code?; end

  sig { returns(ActiveSupport::TimeWithZone) }
  def updated_at; end

  sig { params(value: T.any(Date, Time, ActiveSupport::TimeWithZone)).void }
  def updated_at=(value); end

  sig { returns(T::Boolean) }
  def updated_at?; end
end

module Language::Lesson::Version::GeneratedAssociationMethods
  sig { returns(::Language::Lesson::Version::Info::ActiveRecord_Associations_CollectionProxy) }
  def infos; end

  sig { returns(T::Array[Integer]) }
  def info_ids; end

  sig { params(value: T::Enumerable[::Language::Lesson::Version::Info]).void }
  def infos=(value); end

  sig { returns(::Language) }
  def language; end

  sig { params(args: T.untyped, block: T.nilable(T.proc.params(object: ::Language).void)).returns(::Language) }
  def build_language(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.params(object: ::Language).void)).returns(::Language) }
  def create_language(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.params(object: ::Language).void)).returns(::Language) }
  def create_language!(*args, &block); end

  sig { params(value: ::Language).void }
  def language=(value); end

  sig { returns(::Language::Version) }
  def language_version; end

  sig { params(args: T.untyped, block: T.nilable(T.proc.params(object: ::Language::Version).void)).returns(::Language::Version) }
  def build_language_version(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.params(object: ::Language::Version).void)).returns(::Language::Version) }
  def create_language_version(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.params(object: ::Language::Version).void)).returns(::Language::Version) }
  def create_language_version!(*args, &block); end

  sig { params(value: ::Language::Version).void }
  def language_version=(value); end

  sig { returns(::Language::Lesson) }
  def lesson; end

  sig { params(args: T.untyped, block: T.nilable(T.proc.params(object: ::Language::Lesson).void)).returns(::Language::Lesson) }
  def build_lesson(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.params(object: ::Language::Lesson).void)).returns(::Language::Lesson) }
  def create_lesson(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.params(object: ::Language::Lesson).void)).returns(::Language::Lesson) }
  def create_lesson!(*args, &block); end

  sig { params(value: ::Language::Lesson).void }
  def lesson=(value); end

  sig { returns(::Language::Module::Version) }
  def module_version; end

  sig { params(args: T.untyped, block: T.nilable(T.proc.params(object: ::Language::Module::Version).void)).returns(::Language::Module::Version) }
  def build_module_version(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.params(object: ::Language::Module::Version).void)).returns(::Language::Module::Version) }
  def create_module_version(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.params(object: ::Language::Module::Version).void)).returns(::Language::Module::Version) }
  def create_module_version!(*args, &block); end

  sig { params(value: ::Language::Module::Version).void }
  def module_version=(value); end
end

module Language::Lesson::Version::CustomFinderMethods
  sig { params(limit: Integer).returns(T::Array[Language::Lesson::Version]) }
  def first_n(limit); end

  sig { params(limit: Integer).returns(T::Array[Language::Lesson::Version]) }
  def last_n(limit); end

  sig { params(args: T::Array[T.any(Integer, String)]).returns(T::Array[Language::Lesson::Version]) }
  def find_n(*args); end

  sig { params(id: Integer).returns(T.nilable(Language::Lesson::Version)) }
  def find_by_id(id); end

  sig { params(id: Integer).returns(Language::Lesson::Version) }
  def find_by_id!(id); end
end

class Language::Lesson::Version < ApplicationRecord
  include Language::Lesson::Version::GeneratedAttributeMethods
  include Language::Lesson::Version::GeneratedAssociationMethods
  extend Language::Lesson::Version::CustomFinderMethods
  extend Language::Lesson::Version::QueryMethodsReturningRelation
  RelationType = T.type_alias { T.any(Language::Lesson::Version::ActiveRecord_Relation, Language::Lesson::Version::ActiveRecord_Associations_CollectionProxy, Language::Lesson::Version::ActiveRecord_AssociationRelation) }
end

module Language::Lesson::Version::QueryMethodsReturningRelation
  sig { returns(Language::Lesson::Version::ActiveRecord_Relation) }
  def all; end

  sig { params(block: T.nilable(T.proc.void)).returns(Language::Lesson::Version::ActiveRecord_Relation) }
  def unscoped(&block); end

  sig { params(args: T.untyped).returns(Language::Lesson::Version::ActiveRecord_Relation) }
  def select(*args); end

  sig { params(args: T.untyped).returns(Language::Lesson::Version::ActiveRecord_Relation) }
  def reselect(*args); end

  sig { params(args: T.untyped).returns(Language::Lesson::Version::ActiveRecord_Relation) }
  def order(*args); end

  sig { params(args: T.untyped).returns(Language::Lesson::Version::ActiveRecord_Relation) }
  def reorder(*args); end

  sig { params(args: T.untyped).returns(Language::Lesson::Version::ActiveRecord_Relation) }
  def group(*args); end

  sig { params(args: T.untyped).returns(Language::Lesson::Version::ActiveRecord_Relation) }
  def limit(*args); end

  sig { params(args: T.untyped).returns(Language::Lesson::Version::ActiveRecord_Relation) }
  def offset(*args); end

  sig { params(args: T.untyped).returns(Language::Lesson::Version::ActiveRecord_Relation) }
  def joins(*args); end

  sig { params(args: T.untyped).returns(Language::Lesson::Version::ActiveRecord_Relation) }
  def left_joins(*args); end

  sig { params(args: T.untyped).returns(Language::Lesson::Version::ActiveRecord_Relation) }
  def left_outer_joins(*args); end

  sig { params(args: T.untyped).returns(Language::Lesson::Version::ActiveRecord_Relation) }
  def where(*args); end

  sig { params(args: T.untyped).returns(Language::Lesson::Version::ActiveRecord_Relation) }
  def rewhere(*args); end

  sig { params(args: T.untyped).returns(Language::Lesson::Version::ActiveRecord_Relation) }
  def preload(*args); end

  sig { params(args: T.untyped).returns(Language::Lesson::Version::ActiveRecord_Relation) }
  def extract_associated(*args); end

  sig { params(args: T.untyped).returns(Language::Lesson::Version::ActiveRecord_Relation) }
  def eager_load(*args); end

  sig { params(args: T.untyped).returns(Language::Lesson::Version::ActiveRecord_Relation) }
  def includes(*args); end

  sig { params(args: T.untyped).returns(Language::Lesson::Version::ActiveRecord_Relation) }
  def from(*args); end

  sig { params(args: T.untyped).returns(Language::Lesson::Version::ActiveRecord_Relation) }
  def lock(*args); end

  sig { params(args: T.untyped).returns(Language::Lesson::Version::ActiveRecord_Relation) }
  def readonly(*args); end

  sig { params(args: T.untyped).returns(Language::Lesson::Version::ActiveRecord_Relation) }
  def or(*args); end

  sig { params(args: T.untyped).returns(Language::Lesson::Version::ActiveRecord_Relation) }
  def having(*args); end

  sig { params(args: T.untyped).returns(Language::Lesson::Version::ActiveRecord_Relation) }
  def create_with(*args); end

  sig { params(args: T.untyped).returns(Language::Lesson::Version::ActiveRecord_Relation) }
  def distinct(*args); end

  sig { params(args: T.untyped).returns(Language::Lesson::Version::ActiveRecord_Relation) }
  def references(*args); end

  sig { params(args: T.untyped).returns(Language::Lesson::Version::ActiveRecord_Relation) }
  def none(*args); end

  sig { params(args: T.untyped).returns(Language::Lesson::Version::ActiveRecord_Relation) }
  def unscope(*args); end

  sig { params(args: T.untyped).returns(Language::Lesson::Version::ActiveRecord_Relation) }
  def optimizer_hints(*args); end

  sig { params(args: T.untyped).returns(Language::Lesson::Version::ActiveRecord_Relation) }
  def merge(*args); end

  sig { params(args: T.untyped).returns(Language::Lesson::Version::ActiveRecord_Relation) }
  def except(*args); end

  sig { params(args: T.untyped).returns(Language::Lesson::Version::ActiveRecord_Relation) }
  def only(*args); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Language::Lesson::Version::ActiveRecord_Relation) }
  def extending(*args, &block); end

  sig do
    params(
      of: T.nilable(Integer),
      start: T.nilable(Integer),
      finish: T.nilable(Integer),
      load: T.nilable(T::Boolean),
      error_on_ignore: T.nilable(T::Boolean),
      block: T.nilable(T.proc.params(e: Language::Lesson::Version::ActiveRecord_Relation).void)
    ).returns(ActiveRecord::Batches::BatchEnumerator)
  end
  def in_batches(of: 1000, start: nil, finish: nil, load: false, error_on_ignore: nil, &block); end
end

module Language::Lesson::Version::QueryMethodsReturningAssociationRelation
  sig { returns(Language::Lesson::Version::ActiveRecord_AssociationRelation) }
  def all; end

  sig { params(block: T.nilable(T.proc.void)).returns(Language::Lesson::Version::ActiveRecord_Relation) }
  def unscoped(&block); end

  sig { params(args: T.untyped).returns(Language::Lesson::Version::ActiveRecord_AssociationRelation) }
  def select(*args); end

  sig { params(args: T.untyped).returns(Language::Lesson::Version::ActiveRecord_AssociationRelation) }
  def reselect(*args); end

  sig { params(args: T.untyped).returns(Language::Lesson::Version::ActiveRecord_AssociationRelation) }
  def order(*args); end

  sig { params(args: T.untyped).returns(Language::Lesson::Version::ActiveRecord_AssociationRelation) }
  def reorder(*args); end

  sig { params(args: T.untyped).returns(Language::Lesson::Version::ActiveRecord_AssociationRelation) }
  def group(*args); end

  sig { params(args: T.untyped).returns(Language::Lesson::Version::ActiveRecord_AssociationRelation) }
  def limit(*args); end

  sig { params(args: T.untyped).returns(Language::Lesson::Version::ActiveRecord_AssociationRelation) }
  def offset(*args); end

  sig { params(args: T.untyped).returns(Language::Lesson::Version::ActiveRecord_AssociationRelation) }
  def joins(*args); end

  sig { params(args: T.untyped).returns(Language::Lesson::Version::ActiveRecord_AssociationRelation) }
  def left_joins(*args); end

  sig { params(args: T.untyped).returns(Language::Lesson::Version::ActiveRecord_AssociationRelation) }
  def left_outer_joins(*args); end

  sig { params(args: T.untyped).returns(Language::Lesson::Version::ActiveRecord_AssociationRelation) }
  def where(*args); end

  sig { params(args: T.untyped).returns(Language::Lesson::Version::ActiveRecord_AssociationRelation) }
  def rewhere(*args); end

  sig { params(args: T.untyped).returns(Language::Lesson::Version::ActiveRecord_AssociationRelation) }
  def preload(*args); end

  sig { params(args: T.untyped).returns(Language::Lesson::Version::ActiveRecord_AssociationRelation) }
  def extract_associated(*args); end

  sig { params(args: T.untyped).returns(Language::Lesson::Version::ActiveRecord_AssociationRelation) }
  def eager_load(*args); end

  sig { params(args: T.untyped).returns(Language::Lesson::Version::ActiveRecord_AssociationRelation) }
  def includes(*args); end

  sig { params(args: T.untyped).returns(Language::Lesson::Version::ActiveRecord_AssociationRelation) }
  def from(*args); end

  sig { params(args: T.untyped).returns(Language::Lesson::Version::ActiveRecord_AssociationRelation) }
  def lock(*args); end

  sig { params(args: T.untyped).returns(Language::Lesson::Version::ActiveRecord_AssociationRelation) }
  def readonly(*args); end

  sig { params(args: T.untyped).returns(Language::Lesson::Version::ActiveRecord_AssociationRelation) }
  def or(*args); end

  sig { params(args: T.untyped).returns(Language::Lesson::Version::ActiveRecord_AssociationRelation) }
  def having(*args); end

  sig { params(args: T.untyped).returns(Language::Lesson::Version::ActiveRecord_AssociationRelation) }
  def create_with(*args); end

  sig { params(args: T.untyped).returns(Language::Lesson::Version::ActiveRecord_AssociationRelation) }
  def distinct(*args); end

  sig { params(args: T.untyped).returns(Language::Lesson::Version::ActiveRecord_AssociationRelation) }
  def references(*args); end

  sig { params(args: T.untyped).returns(Language::Lesson::Version::ActiveRecord_AssociationRelation) }
  def none(*args); end

  sig { params(args: T.untyped).returns(Language::Lesson::Version::ActiveRecord_AssociationRelation) }
  def unscope(*args); end

  sig { params(args: T.untyped).returns(Language::Lesson::Version::ActiveRecord_AssociationRelation) }
  def optimizer_hints(*args); end

  sig { params(args: T.untyped).returns(Language::Lesson::Version::ActiveRecord_AssociationRelation) }
  def merge(*args); end

  sig { params(args: T.untyped).returns(Language::Lesson::Version::ActiveRecord_AssociationRelation) }
  def except(*args); end

  sig { params(args: T.untyped).returns(Language::Lesson::Version::ActiveRecord_AssociationRelation) }
  def only(*args); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Language::Lesson::Version::ActiveRecord_AssociationRelation) }
  def extending(*args, &block); end

  sig do
    params(
      of: T.nilable(Integer),
      start: T.nilable(Integer),
      finish: T.nilable(Integer),
      load: T.nilable(T::Boolean),
      error_on_ignore: T.nilable(T::Boolean),
      block: T.nilable(T.proc.params(e: Language::Lesson::Version::ActiveRecord_AssociationRelation).void)
    ).returns(ActiveRecord::Batches::BatchEnumerator)
  end
  def in_batches(of: 1000, start: nil, finish: nil, load: false, error_on_ignore: nil, &block); end
end

class Language::Lesson::Version::ActiveRecord_Relation < ActiveRecord::Relation
  include Language::Lesson::Version::ActiveRelation_WhereNot
  include Language::Lesson::Version::CustomFinderMethods
  include Language::Lesson::Version::QueryMethodsReturningRelation
  Elem = type_member(fixed: Language::Lesson::Version)
end

class Language::Lesson::Version::ActiveRecord_AssociationRelation < ActiveRecord::AssociationRelation
  include Language::Lesson::Version::ActiveRelation_WhereNot
  include Language::Lesson::Version::CustomFinderMethods
  include Language::Lesson::Version::QueryMethodsReturningAssociationRelation
  Elem = type_member(fixed: Language::Lesson::Version)
end

class Language::Lesson::Version::ActiveRecord_Associations_CollectionProxy < ActiveRecord::Associations::CollectionProxy
  include Language::Lesson::Version::CustomFinderMethods
  include Language::Lesson::Version::QueryMethodsReturningAssociationRelation
  Elem = type_member(fixed: Language::Lesson::Version)

  sig { params(records: T.any(Language::Lesson::Version, T::Array[Language::Lesson::Version])).returns(T.self_type) }
  def <<(*records); end

  sig { params(records: T.any(Language::Lesson::Version, T::Array[Language::Lesson::Version])).returns(T.self_type) }
  def append(*records); end

  sig { params(records: T.any(Language::Lesson::Version, T::Array[Language::Lesson::Version])).returns(T.self_type) }
  def push(*records); end

  sig { params(records: T.any(Language::Lesson::Version, T::Array[Language::Lesson::Version])).returns(T.self_type) }
  def concat(*records); end
end

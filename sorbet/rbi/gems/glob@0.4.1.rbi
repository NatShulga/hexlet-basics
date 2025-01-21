# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `glob` gem.
# Please instead update this file by running `bin/tapioca gem glob`.


# source://glob//lib/glob/map.rb#3
module Glob
  class << self
    # source://glob//lib/glob.rb#10
    def filter(target, paths = T.unsafe(nil)); end

    # source://glob//lib/glob.rb#16
    def new(target = T.unsafe(nil)); end
  end
end

# source://glob//lib/glob/map.rb#4
class Glob::Map
  # @return [Map] a new instance of Map
  #
  # source://glob//lib/glob/map.rb#9
  def initialize(target); end

  # source://glob//lib/glob/map.rb#13
  def call; end

  private

  # source://glob//lib/glob/map.rb#24
  def compute(value, path); end

  # source://glob//lib/glob/map.rb#20
  def escape(key); end

  class << self
    # source://glob//lib/glob/map.rb#5
    def call(target); end
  end
end

# source://glob//lib/glob/matcher.rb#4
class Glob::Matcher
  # @return [Matcher] a new instance of Matcher
  #
  # source://glob//lib/glob/matcher.rb#7
  def initialize(path); end

  # @return [Boolean]
  #
  # source://glob//lib/glob/matcher.rb#22
  def include?; end

  # @return [Boolean]
  #
  # source://glob//lib/glob/matcher.rb#18
  def match?(other); end

  # Returns the value of attribute path.
  #
  # source://glob//lib/glob/matcher.rb#5
  def path; end

  # source://glob//lib/glob/matcher.rb#30
  def process_group(group); end

  # Returns the value of attribute regex.
  #
  # source://glob//lib/glob/matcher.rb#5
  def regex; end

  # @return [Boolean]
  #
  # source://glob//lib/glob/matcher.rb#26
  def reject?; end
end

# source://glob//lib/glob/object.rb#4
class Glob::Object
  # @return [Object] a new instance of Object
  #
  # source://glob//lib/glob/object.rb#9
  def initialize(target); end

  # source://glob//lib/glob/object.rb#14
  def <<(path); end

  # source://glob//lib/glob/object.rb#14
  def filter(path); end

  # Returns the value of attribute matchers.
  #
  # source://glob//lib/glob/object.rb#7
  def matchers; end

  # source://glob//lib/glob/object.rb#37
  def paths; end

  # source://glob//lib/glob/object.rb#30
  def set(path, value); end

  # source://glob//lib/glob/object.rb#19
  def to_h; end

  # source://glob//lib/glob/object.rb#19
  def to_hash; end

  private

  # source://glob//lib/glob/object.rb#49
  def map; end

  # source://glob//lib/glob/object.rb#57
  def set_path_value(segments, target, value); end

  # source://glob//lib/glob/object.rb#53
  def unescape(key); end
end

# source://glob//lib/glob/object.rb#5
Glob::Object::PATH_SPLIT_RE = T.let(T.unsafe(nil), Regexp)

# source://glob//lib/glob/symbolize_keys.rb#4
module Glob::SymbolizeKeys
  class << self
    # source://glob//lib/glob/symbolize_keys.rb#5
    def call(target); end
  end
end

# source://glob//lib/glob/version.rb#4
Glob::VERSION = T.let(T.unsafe(nil), String)

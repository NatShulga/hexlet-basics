# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `Rails::Conductor::BaseController`.
# Please instead update this file by running `bin/tapioca dsl Rails::Conductor::BaseController`.


class Rails::Conductor::BaseController
  include GeneratedUrlHelpersModule
  include GeneratedPathHelpersModule

  sig { returns(HelperProxy) }
  def helpers; end

  module HelperMethods
    include ::ActionText::ContentHelper
    include ::ActionText::TagHelper
    include ::InertiaRails::Helper
    include ::Ransack::Helpers::FormHelper
    include ::ViteRails::TagHelpers
    include ::ActionController::Base::HelperMethods
    include ::LanguageCategoriesHelper
    include ::Web::Admin::LanguageLandingPagesHelper
  end

  class HelperProxy < ::ActionView::Base
    include HelperMethods
  end
end

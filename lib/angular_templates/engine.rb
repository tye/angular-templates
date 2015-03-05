module AngularTemplates
  class Engine < ::Rails::Engine
    isolate_namespace AngularTemplates
    config.angular_templates = ActiveSupport::OrderedOptions.new
  end
end

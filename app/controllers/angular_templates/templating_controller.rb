module AngularTemplates
  class TemplatingController < AbstractController::Base
    include AbstractController::Rendering
    if defined?(AbstractController::Layouts)
      include AbstractController::Layouts
    else
      include ActionView::Layouts
    end
    include ActionController::Helpers

    self.view_paths = 'app/templates'
    self.helpers_path = Rails.application.helpers_paths

    helper :all

    public
      def self.render_templates
        controller = TemplatingController.new
        result = {}
        prefix = Rails.root.join('app','templates').to_s
        files = Dir[Rails.root.join('app','templates','*','**','**')]
        files.reject!{|f| File.basename(f)[0] == '_'}
        files.each do |file|
          if m = file.match(/#{prefix}\/(.+?)\./)
            template_name = m[1]
            puts template_name.inspect
            result[template_name] = controller.render(template: template_name)
          end
        end
        result
      end
  end
end

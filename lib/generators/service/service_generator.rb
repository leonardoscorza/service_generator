class ServiceGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../templates', __FILE__)
  argument :params, :type => :array, :default => []
  # class_option :params, :type => :array, :default => [], :description => "Initialize variables"

  def generate_service
    # copy_file "service.rb", "app/services/#{name.underscore}_service.rb"
    template "layout_service.rb", "app/services/#{name.underscore}_service.rb"
    p "You can call your service running: #{service_name}Service.new(params).perform"
  end

  private
    def service_name
      name.camelcase
    end
end

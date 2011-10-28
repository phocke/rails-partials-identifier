module ActionView
  class Renderer

    def render(context, options)
      if options.key?(:partial)
        options[:partial]
        "<!--#{options[:partial]}-->#{render_partial(context, options)}<!--end #{options[:partial]}-->"
      else
        "<!--#{template_name(options)}-->#{render_template(context, options)}<!--end #{template_name(options)}-->"
      end
    end

    private
    
    def template_name(options)
      _template_renderer.determine_template(options).inspect
    end
  end
end

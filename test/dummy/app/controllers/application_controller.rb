class ApplicationController < ActionController::Base
  protect_from_forgery

  def render_partial
    render :partial => "shared/sample_partial"
  end

  def render_template
    render  "shared/sample_template"
  end

  def render_template_with_partial
    render  "shared/sample_template_with_partial"
  end
end

class DummyController < ApplicationController

  def render_partial
    render :partial => "samples/sample_partial"
  end

  def render_template
    render "samples/sample_template", :layout => false
  end

  def render_template_with_partial
    render "samples/sample_template_with_partial", :layout => false
  end
end


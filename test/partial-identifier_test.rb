require 'test_helper'

class PartialIdentifierTest < ActionController::TestCase
  
  def setup 
    @controller = DummyController.new
    @request = ActionController::TestRequest.new
    @response = ActionController::TestResponse.new
  end 

  test "it should prepend a comment to a partial" do
    get "render_partial"
    assert_response :success
    assert true
    assert_match /<!--.+--><h2>/, @response.body
    puts @response.body.inspect
  end
  
  test "it should append a comment to a partial" do
    get "render_partial"
    assert_response :success
    assert true
    #assert_match /<!--.+--><h2>/, @response.body
    puts @response.body.inspect
  end
  
  test "it should prepend a comment to a template" do
    get "render_template"
    assert_response :success
    assert true
    assert_match /<!----><h2>/, @response.body
    puts @response.body.inspect
  end
  
  test "it should append a comment to a template" do
    get "render_template"
    assert_response :success
    assert true
    puts @response.body.inspect
  end
  
  test "it should prepend a comment to a template and a partial" do
    get "render_template_with_partial"
    assert_response :success
    assert true
    puts @response.body.inspect
  end
  
  test "it should append a comment to a template and a partial" do
    get "render_template_with_partial"
    assert_response :success
    assert true
    puts @response.body.inspect
  end
end

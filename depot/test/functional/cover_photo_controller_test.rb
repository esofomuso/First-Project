require File.dirname(__FILE__) + '/../test_helper'
require 'cover_photo_controller'

# Re-raise errors caught by the controller.
class CoverPhotoController; def rescue_action(e) raise e end; end

class CoverPhotoControllerTest < Test::Unit::TestCase
  def setup
    @controller = CoverPhotoController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end

  # Replace this with your real tests.
  def test_truth
    assert true
  end
end

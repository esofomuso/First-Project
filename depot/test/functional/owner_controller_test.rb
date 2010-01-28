require File.dirname(__FILE__) + '/../test_helper'
require 'owner_controller'

# Re-raise errors caught by the controller.
class OwnerController; def rescue_action(e) raise e end; end

class OwnerControllerTest < Test::Unit::TestCase
  fixtures :admin_owners

  def setup
    @controller = OwnerController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new

    @first_id = owners(:first).id
  end

  def test_index
    get :index
    assert_response :success
    assert_template 'list'
  end

  def test_list
    get :list

    assert_response :success
    assert_template 'list'

    assert_not_nil assigns(:owners)
  end

  def test_show
    get :show, :id => @first_id

    assert_response :success
    assert_template 'show'

    assert_not_nil assigns(:owner)
    assert assigns(:owner).valid?
  end

  def test_new
    get :new

    assert_response :success
    assert_template 'new'

    assert_not_nil assigns(:owner)
  end

  def test_create
    num_owners = Owner.count

    post :create, :owner => {}

    assert_response :redirect
    assert_redirected_to :action => 'list'

    assert_equal num_owners + 1, Owner.count
  end

  def test_edit
    get :edit, :id => @first_id

    assert_response :success
    assert_template 'edit'

    assert_not_nil assigns(:owner)
    assert assigns(:owner).valid?
  end

  def test_update
    post :update, :id => @first_id
    assert_response :redirect
    assert_redirected_to :action => 'show', :id => @first_id
  end

  def test_destroy
    assert_nothing_raised {
      Owner.find(@first_id)
    }

    post :destroy, :id => @first_id
    assert_response :redirect
    assert_redirected_to :action => 'list'

    assert_raise(ActiveRecord::RecordNotFound) {
      Owner.find(@first_id)
    }
  end
end

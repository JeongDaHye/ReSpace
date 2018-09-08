require 'test_helper'

class QnasControllerTest < ActionController::TestCase
  setup do
    @qna = qnas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:qnas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create qna" do
    assert_difference('Qna.count') do
      post :create, qna: { content: @qna.content, title: @qna.title, user_id: @qna.user_id }
    end

    assert_redirected_to qna_path(assigns(:qna))
  end

  test "should show qna" do
    get :show, id: @qna
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @qna
    assert_response :success
  end

  test "should update qna" do
    patch :update, id: @qna, qna: { content: @qna.content, title: @qna.title, user_id: @qna.user_id }
    assert_redirected_to qna_path(assigns(:qna))
  end

  test "should destroy qna" do
    assert_difference('Qna.count', -1) do
      delete :destroy, id: @qna
    end

    assert_redirected_to qnas_path
  end
end

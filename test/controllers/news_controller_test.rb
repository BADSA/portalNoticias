require 'test_helper'

class NewsControllerTest < ActionController::TestCase
  setup do
    @news = news(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:news)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create news" do
    assert_difference('New.count') do
      post :create, news: { catId: @news.catId, content: @news.content, date: @news.date, description: @news.description, likes: @news.likes, link: @news.link, title: @news.title, userId: @news.userId }
    end

    assert_redirected_to news_path(assigns(:news))
  end

  test "should show news" do
    get :show, id: @news
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @news
    assert_response :success
  end

  test "should update news" do
    patch :update, id: @news, news: { catId: @news.catId, content: @news.content, date: @news.date, description: @news.description, likes: @news.likes, link: @news.link, title: @news.title, userId: @news.userId }
    assert_redirected_to news_path(assigns(:news))
  end

  test "should destroy news" do
    assert_difference('New.count', -1) do
      delete :destroy, id: @news
    end

    assert_redirected_to news_path
  end
end

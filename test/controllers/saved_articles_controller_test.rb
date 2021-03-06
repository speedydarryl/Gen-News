require 'test_helper'

class SavedArticlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @saved_article = saved_articles(:one)
  end

  test "should get index" do
    get saved_articles_url
    assert_response :success
  end

  test "should get new" do
    get new_saved_article_url
    assert_response :success
  end

  test "should create saved_article" do
    assert_difference('SavedArticle.count') do
      post saved_articles_url, params: { saved_article: { article_id: @saved_article.article_id, user_id: @saved_article.user_id } }
    end

    assert_redirected_to saved_article_url(SavedArticle.last)
  end

  test "should show saved_article" do
    get saved_article_url(@saved_article)
    assert_response :success
  end

  test "should get edit" do
    get edit_saved_article_url(@saved_article)
    assert_response :success
  end

  test "should update saved_article" do
    patch saved_article_url(@saved_article), params: { saved_article: { article_id: @saved_article.article_id, user_id: @saved_article.user_id } }
    assert_redirected_to saved_article_url(@saved_article)
  end

  test "should destroy saved_article" do
    assert_difference('SavedArticle.count', -1) do
      delete saved_article_url(@saved_article)
    end

    assert_redirected_to saved_articles_url
  end
end

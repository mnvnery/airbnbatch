require 'test_helper'

class PersonalityReviewsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get personality_reviews_new_url
    assert_response :success
  end

  test "should get create" do
    get personality_reviews_create_url
    assert_response :success
  end

end

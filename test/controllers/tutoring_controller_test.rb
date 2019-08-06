require 'test_helper'

class TutoringControllerTest < ActionDispatch::IntegrationTest
  test "should get student" do
    get tutoring_student_url
    assert_response :success
  end

  test "should get teacher" do
    get tutoring_teacher_url
    assert_response :success
  end

  test "should get topic" do
    get tutoring_topic_url
    assert_response :success
  end

  test "should get when" do
    get tutoring_when_url
    assert_response :success
  end

  test "should get where" do
    get tutoring_where_url
    assert_response :success
  end

end

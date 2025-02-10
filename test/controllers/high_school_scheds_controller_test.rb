require "test_helper"

class HighSchoolSchedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @high_school_sched = high_school_scheds(:one)
  end

  test "should get index" do
    get high_school_scheds_url
    assert_response :success
  end

  test "should get new" do
    get new_high_school_sched_url
    assert_response :success
  end

  test "should create high_school_sched" do
    assert_difference("HighSchoolSched.count") do
      post high_school_scheds_url, params: { high_school_sched: { date: @high_school_sched.date, exam_type: @high_school_sched.exam_type, stage: @high_school_sched.stage, subject_id: @high_school_sched.subject_id } }
    end

    assert_redirected_to high_school_sched_url(HighSchoolSched.last)
  end

  test "should show high_school_sched" do
    get high_school_sched_url(@high_school_sched)
    assert_response :success
  end

  test "should get edit" do
    get edit_high_school_sched_url(@high_school_sched)
    assert_response :success
  end

  test "should update high_school_sched" do
    patch high_school_sched_url(@high_school_sched), params: { high_school_sched: { date: @high_school_sched.date, exam_type: @high_school_sched.exam_type, stage: @high_school_sched.stage, subject_id: @high_school_sched.subject_id } }
    assert_redirected_to high_school_sched_url(@high_school_sched)
  end

  test "should destroy high_school_sched" do
    assert_difference("HighSchoolSched.count", -1) do
      delete high_school_sched_url(@high_school_sched)
    end

    assert_redirected_to high_school_scheds_url
  end
end

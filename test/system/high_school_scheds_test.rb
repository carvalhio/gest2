require "application_system_test_case"

class HighSchoolSchedsTest < ApplicationSystemTestCase
  setup do
    @high_school_sched = high_school_scheds(:one)
  end

  test "visiting the index" do
    visit high_school_scheds_url
    assert_selector "h1", text: "High school scheds"
  end

  test "should create high school sched" do
    visit high_school_scheds_url
    click_on "New high school sched"

    fill_in "Date", with: @high_school_sched.date
    fill_in "Exam type", with: @high_school_sched.exam_type
    fill_in "Stage", with: @high_school_sched.stage
    fill_in "Subject", with: @high_school_sched.subject_id
    click_on "Create High school sched"

    assert_text "High school sched was successfully created"
    click_on "Back"
  end

  test "should update High school sched" do
    visit high_school_sched_url(@high_school_sched)
    click_on "Edit this high school sched", match: :first

    fill_in "Date", with: @high_school_sched.date
    fill_in "Exam type", with: @high_school_sched.exam_type
    fill_in "Stage", with: @high_school_sched.stage
    fill_in "Subject", with: @high_school_sched.subject_id
    click_on "Update High school sched"

    assert_text "High school sched was successfully updated"
    click_on "Back"
  end

  test "should destroy High school sched" do
    visit high_school_sched_url(@high_school_sched)
    click_on "Destroy this high school sched", match: :first

    assert_text "High school sched was successfully destroyed"
  end
end

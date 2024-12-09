require "application_system_test_case"

class DirectlyReportsTest < ApplicationSystemTestCase
  setup do
    @directly_report = directly_reports(:one)
  end

  test "visiting the index" do
    visit directly_reports_url
    assert_selector "h1", text: "Directly reports"
  end

  test "should create directly report" do
    visit directly_reports_url
    click_on "New directly report"

    fill_in "Email", with: @directly_report.email
    fill_in "First name", with: @directly_report.first_name
    fill_in "Last name", with: @directly_report.last_name
    fill_in "Title", with: @directly_report.title
    click_on "Create Directly report"

    assert_text "Directly report was successfully created"
    click_on "Back"
  end

  test "should update Directly report" do
    visit directly_report_url(@directly_report)
    click_on "Edit this directly report", match: :first

    fill_in "Email", with: @directly_report.email
    fill_in "First name", with: @directly_report.first_name
    fill_in "Last name", with: @directly_report.last_name
    fill_in "Title", with: @directly_report.title
    click_on "Update Directly report"

    assert_text "Directly report was successfully updated"
    click_on "Back"
  end

  test "should destroy Directly report" do
    visit directly_report_url(@directly_report)
    click_on "Destroy this directly report", match: :first

    assert_text "Directly report was successfully destroyed"
  end
end

require "test_helper"

class DirectlyReportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @directly_report = directly_reports(:one)
  end

  test "should get index" do
    get directly_reports_url
    assert_response :success
  end

  test "should get new" do
    get new_directly_report_url
    assert_response :success
  end

  test "should create directly_report" do
    assert_difference("DirectlyReport.count") do
      post directly_reports_url, params: { directly_report: { email: @directly_report.email, first_name: @directly_report.first_name, last_name: @directly_report.last_name, title: @directly_report.title } }
    end

    assert_redirected_to directly_report_url(DirectlyReport.last)
  end

  test "should show directly_report" do
    get directly_report_url(@directly_report)
    assert_response :success
  end

  test "should get edit" do
    get edit_directly_report_url(@directly_report)
    assert_response :success
  end

  test "should update directly_report" do
    patch directly_report_url(@directly_report), params: { directly_report: { email: @directly_report.email, first_name: @directly_report.first_name, last_name: @directly_report.last_name, title: @directly_report.title } }
    assert_redirected_to directly_report_url(@directly_report)
  end

  test "should destroy directly_report" do
    assert_difference("DirectlyReport.count", -1) do
      delete directly_report_url(@directly_report)
    end

    assert_redirected_to directly_reports_url
  end
end

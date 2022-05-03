require "application_system_test_case"

class MaintenanceRequestsTest < ApplicationSystemTestCase
  setup do
    @maintenance_request = maintenance_requests(:one)
  end

  test "visiting the index" do
    visit maintenance_requests_url
    assert_selector "h1", text: "Maintenance Requests"
  end

  test "creating a Maintenance request" do
    visit maintenance_requests_url
    click_on "New Maintenance Request"

    click_on "Create Maintenance request"

    assert_text "Maintenance request was successfully created"
    click_on "Back"
  end

  test "updating a Maintenance request" do
    visit maintenance_requests_url
    click_on "Edit", match: :first

    click_on "Update Maintenance request"

    assert_text "Maintenance request was successfully updated"
    click_on "Back"
  end

  test "destroying a Maintenance request" do
    visit maintenance_requests_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Maintenance request was successfully destroyed"
  end
end

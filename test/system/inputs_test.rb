require "application_system_test_case"

class InputsTest < ApplicationSystemTestCase
  setup do
    @input = inputs(:one)
  end

  test "visiting the index" do
    visit inputs_url
    assert_selector "h1", text: "Inputs"
  end

  test "should create input" do
    visit inputs_url
    click_on "New input"

    fill_in "Data", with: @input.data
    fill_in "Kind", with: @input.kind_id
    fill_in "User", with: @input.user_id
    click_on "Create Input"

    assert_text "Input was successfully created"
    click_on "Back"
  end

  test "should update Input" do
    visit input_url(@input)
    click_on "Edit this input", match: :first

    fill_in "Data", with: @input.data
    fill_in "Kind", with: @input.kind_id
    fill_in "User", with: @input.user_id
    click_on "Update Input"

    assert_text "Input was successfully updated"
    click_on "Back"
  end

  test "should destroy Input" do
    visit input_url(@input)
    click_on "Destroy this input", match: :first

    assert_text "Input was successfully destroyed"
  end
end

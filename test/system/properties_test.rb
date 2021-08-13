require "application_system_test_case"

class PropertiesTest < ApplicationSystemTestCase
  setup do
    @property = properties(:one)
  end

  test "visiting the index" do
    visit properties_url
    assert_selector "h1", text: "Properties"
  end

  test "creating a Property" do
    visit properties_url
    click_on "New Property"

    fill_in "Address1", with: @property.address1
    fill_in "Address2", with: @property.address2
    fill_in "Area", with: @property.area
    fill_in "Baths", with: @property.baths
    fill_in "Beds", with: @property.beds
    fill_in "Belongs to", with: @property.belongs_to
    fill_in "City", with: @property.city
    fill_in "Description", with: @property.description
    fill_in "Garage", with: @property.garage
    fill_in "Price", with: @property.price
    fill_in "Propertytype", with: @property.propertyType
    fill_in "State", with: @property.state
    fill_in "Status", with: @property.status
    fill_in "Zipcode", with: @property.zipcode
    click_on "Create Property"

    assert_text "Property was successfully created"
    click_on "Back"
  end

  test "updating a Property" do
    visit properties_url
    click_on "Edit", match: :first

    fill_in "Address1", with: @property.address1
    fill_in "Address2", with: @property.address2
    fill_in "Area", with: @property.area
    fill_in "Baths", with: @property.baths
    fill_in "Beds", with: @property.beds
    fill_in "Belongs to", with: @property.belongs_to
    fill_in "City", with: @property.city
    fill_in "Description", with: @property.description
    fill_in "Garage", with: @property.garage
    fill_in "Price", with: @property.price
    fill_in "Propertytype", with: @property.propertyType
    fill_in "State", with: @property.state
    fill_in "Status", with: @property.status
    fill_in "Zipcode", with: @property.zipcode
    click_on "Update Property"

    assert_text "Property was successfully updated"
    click_on "Back"
  end

  test "destroying a Property" do
    visit properties_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Property was successfully destroyed"
  end
end

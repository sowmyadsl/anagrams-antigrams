require "capybara/rspec"
require "./app"
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe("the word play path", {:type => :feature}) do
  it("processes the user input and returns correct result if its a palindrome") do
    visit("/")
    fill_in("string1", :with => "madam")
    fill_in("string2", :with => "anagram")
    click_button("check")
    expect(page).to have_content("is a palindrome")
  end
  it("processes the user input and returns correct message if input is invalid") do
    visit("/")
    fill_in("string1", :with => "madam  ")
    click_button("check")
    expect(page).to have_content("one of string is not valid")
  end
end

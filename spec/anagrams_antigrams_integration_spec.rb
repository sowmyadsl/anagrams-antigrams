require "capybara/rspec"
require "./app"
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe("the word play path", {:type => :feature}) do
  it("processes the user input and returns correct result if its a palindrome") do
    visit("/")
    fill_in("string1", :with => "madam")
    fill_in("string2", :with => "madam")
    click_button("Check!")
    expect(page).to have_content("madam is a palindrome")
  end
  it("processes the user input and returns correct message if input is invalid") do
    visit("/")
    fill_in("string1", :with => " 123jn")
    click_button("Check!")
    expect(page).to have_content("123jn is not a word")

  end
end

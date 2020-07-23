require "../app.rb"
require "spec_helper.rb"

feature Battle do
  scenario "confirms that testing infrastructure is working" do
    visit('/')
    expect(page).to have_content("testing infrastructure working!")
  end
end
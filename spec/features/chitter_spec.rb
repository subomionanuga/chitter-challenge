feature 'Homepage' do
  scenario 'Homepage exists' do
    visit '/'
    expect(page).to have_content "Welcome to Chitter"
  end

  scenario 'Able to post messages to chitter' do
    visit '/'
    fill_in "message", with: "This is my first peep"
    click_button "Post peep"
    expect(page).to have_content "This is my first peep"
  end
end

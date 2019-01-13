feature 'Homepage' do
  scenario 'Homepage exists' do
    visit '/'
    expect(page).to have_content "Welcome to Chitter"
  end
end

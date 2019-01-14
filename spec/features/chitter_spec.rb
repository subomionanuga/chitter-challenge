feature 'Homepage' do
  scenario 'Homepage exists' do
    visit '/'
    expect(page).to have_content 'Welcome to Chitter'
  end

  scenario 'Able to post messages to chitter' do
    visit '/'
    fill_in 'message', with: 'This is my first peep'
    click_button 'Post peep'
    expect(page).to have_content 'This is my first peep'
  end

  scenario 'Able to signup' do
    visit '/'
    click_button 'Sign up'
    fill_in 'email', with: 'peep@peep.com'
    fill_in 'password', with: 'password123'
    fill_in 'name', with: 'Subomi Onanuga'
    fill_in 'username', with: 'sonanuga'
    click_button 'Create Account'
    expect(page).to have_current_path '/'
  end
end

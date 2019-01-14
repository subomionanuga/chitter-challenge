require 'user'

describe User do

  context 'user account' do

    let(:user) {User.create(email: 'peep@peep.com', password: 'password123', name: 'Subomi Onanuga', username: 'sonanuga')}

    it 'stores user email' do
      expect(user.email).to eq 'peep@peep.com'
    end

    it 'stores user password' do
      expect(user.password).to eq 'password123'
    end

    it 'stores user name' do
      expect(user.name).to eq 'Subomi Onanuga'
    end

    it 'stores username' do
      expect(user.username).to eq 'sonanuga'
    end
  end
end

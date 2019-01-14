require 'maker'

describe Maker do

  context 'maker account' do

    let(:maker) {Maker.create(email: 'peep@peep.com', password: 'password123', name: 'Subomi Onanuga', username: 'sonanuga')}

    it 'stores maker email' do
      expect(maker.email).to eq 'peep@peep.com'
    end

    it 'stores maker password' do
      expect(maker.password).to eq 'password123'
    end

    it 'stores maker name' do
      expect(maker.name).to eq 'Subomi Onanuga'
    end

    it 'stores maker username' do
      expect(maker.username).to eq 'sonanuga'
    end
  end
end

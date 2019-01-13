require 'peep'

describe Peep do

  context 'Posting peeps' do

    peep = Peep.create(message: 'This is my first peep')

    it 'can post a peep to chitter' do
      expect(peep.message).to eq 'This is my first peep'
    end

    it "has a timestamp assocaited with the peep" do
      expect(peep.created_at).to eq Time.now.strftime("%d-%m-%Y %H:%M:%S")
    end
  end
end

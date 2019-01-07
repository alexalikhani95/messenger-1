require './lib/message'

describe Message do
  # subject(:message) { described_class.create(:)}

  let (:message) { Message.create(:content => 'message_text') }

    it 'stores text' do
      expect(message.content).to eq('message_text')
    end
end

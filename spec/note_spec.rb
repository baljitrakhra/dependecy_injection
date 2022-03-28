require 'note'

describe Note do
  let(:title) { 'Groceries'}
  let(:body) {'get some milk'}
  let(:expected_format) { "Title: #{title}\n#{body}" }
  let(:formatter) { double(:formatter_fake, format: expected_format)}
  let(:note) { described_class.new(title,body,formatter) }
    
    describe '#display'do
      it 'display the note' do
      expect(note.display).to eq(expected_format)
      end
    end
end

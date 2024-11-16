require_relative '../ruby'

describe 'Caesar Cipher' do
  describe 'shift_char' do
    context 'when the char is lowercase b' do
      it 'returns d' do
        expect(shift_char('b', 2)).to eql('d')
      end
    end

    context 'when the char is uppercase B' do
      it 'returns D' do
        expect(shift_char('B', 2)).to eql('D')
      end
    end

    context 'when the shift is negative' do
      it 'returns d' do
        expect(shift_char('a', -3)).to eql('d')
      end
    end

    context 'when shift greater than 26' do
      it 'returns b' do
        expect(shift_char('a', 27)).to eql('b')
      end
    end

    context 'when char is punctuation' do
      it 'returns char' do
        expect(shift_char('!', 5)).to eql('!')
      end
    end
  end

  describe 'caeser_cipher' do
    context 'when string has no punctuation' do
      it 'returns "Ifmmp"' do
        expect(caeser_cipher('Hello', 1)).to eql('Ifmmp')
      end
    end

    context 'When string has punctuation' do
      it "returns 'C d!'" do
        expect(caeser_cipher('A b!', 2)).to eq('C d!')
      end
    end
  end
end

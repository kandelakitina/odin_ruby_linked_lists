require_relative '../main'

RSpec.describe LinkedList do
  let(:list) { LinkedList.new }

  describe '#append' do
    it 'adds a node to the end' do
      list.append('dog')
      list.append('cat')
      expect(list.tail.value).to eq('cat')
      expect(list.head.value).to eq('dog')
    end
  end

  describe '#prepend' do
    it 'adds a node to the start' do
      list.append('dog')
      list.prepend('cat')
      expect(list.head.value).to eq('cat')
      expect(list.head.next_node.value).to eq('dog')
    end
  end

  describe '#size' do
    it 'returns the correct size' do
      list.append('dog')
      list.append('cat')
      expect(list.size).to eq(2)
    end
  end

  describe '#head' do
    it 'returns the first node' do
      list.append('dog')
      expect(list.head.value).to eq('dog')
    end
  end

  describe '#tail' do
    it 'returns the last node' do
      list.append('dog')
      list.append('cat')
      expect(list.tail.value).to eq('cat')
    end
  end

  describe '#at' do
    it 'returns node at index' do
      list.append('dog')
      list.append('cat')
      expect(list.at(1).value).to eq('cat')
    end
  end

  describe '#pop' do
    it 'removes the last element' do
      list.append('dog')
      list.append('cat')
      list.pop
      expect(list.tail.value).to eq('dog')
    end
  end

  describe '#contains?' do
    it 'returns true if value exists' do
      list.append('dog')
      list.append('cat')
      expect(list.contains?('cat')).to be true
    end
    it 'returns false if value does not exist' do
      expect(list.contains?('dog')).to be false
    end
  end

  describe '#find' do
    it 'returns index of value' do
      list.append('dog')
      list.append('cat')
      expect(list.find('cat')).to eq(1)
    end
    it 'returns nil if value not found' do
      expect(list.find('elephant')).to be_nil
    end
  end

  describe '#to_s' do
    it 'returns string representation' do
      list.append('dog')
      list.append('cat')
      expect(list.to_s).to eq('( dog ) -> ( cat ) -> nil')
    end
  end

  # Extra credit tests
  describe '#insert_at' do
    it 'inserts node at specific position' do
      list.append('dog')
      list.append('cat')
      list.insert_at('bird', 1)
      expect(list.at(1).value).to eq('bird')
    end

  end
  describe '#remove_at' do
    it 'removes node at specific position' do
      list.append('dog')
      list.append('cat')
      list.remove_at(0)
      expect(list.head.value).to eq('cat')
    end

    it 'removes node at position 1' do
      list.append('dog')
      list.append('cat')
      list.append('bird')
      list.remove_at(1)
      expect(list.head.next_node.value).to eq('bird')
    end

    it 'removes node at the end' do
      list.append('dog')
      list.append('cat')
      list.append('bird')
      list.remove_at(2)
      expect(list.tail.value).to eq('cat')
    end

    it 'returns nil when removing from an empty list' do
      expect(list.remove_at(0)).to be_nil
    end

    it 'returns nil when removing out of bounds' do
      list.append('dog')
      expect(list.remove_at(5)).to be_nil
    end
  end
end

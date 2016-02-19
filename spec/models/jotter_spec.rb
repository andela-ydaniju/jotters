require 'rails_helper'

RSpec.describe Jotter, type: :model do
  context 'when initialized' do
    jotter = Jotter.new(
      title: 'Indiegogo',
      body: 'Indiegogo',
    )
    it 'is valid with correct parameters' do
      expect(jotter).to be_valid
    end

    it 'must have name not more than 50 chars' do
      jotter.title = 'a' * 51
      expect(jotter).to be_invalid
    end

    it 'cannot be blank' do
      jotter.body = nil
      expect(jotter).to be_invalid
    end
  end
end

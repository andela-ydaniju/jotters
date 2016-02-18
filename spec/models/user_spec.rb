require 'rails_helper'

RSpec.describe User, type: :model do
  context 'when initialized' do
    user = User.new(
      name: 'Indiegogo',
      password: 'Indiegogo',
      password_confirmation: 'Indiegogo'
    )
    it 'is valid with correct parameters' do
      expect(user).to be_valid
    end

    it 'must have name not more than 50 chars' do
      user.name = 'a' * 51
      expect(user).to be_invalid
    end

    it 'must have password more than 7 chars' do
      user.password = 'a' * 7
      expect(user).to be_invalid
    end
  end
end

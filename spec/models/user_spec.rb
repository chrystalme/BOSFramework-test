require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { User.new(username: 'Chrys', password: 'Pass123') }
  context 'User model' do
    it 'should not be empty' do
      expect(:user).to_not be('')
    end
  end

  context 'validations' do
    it 'username is valid' do
      expect(user.username).to eq('Chrys')
    end
    it 'password is valid' do
      expect(user.password).to eq('Pass123')
    end
  end
end

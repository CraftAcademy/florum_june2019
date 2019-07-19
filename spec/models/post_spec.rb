require 'rails_helper'

RSpec.describe Post, type: :model do
  describe 'DB table' do
    it { is_expected.to have_db_column :id }
    it { is_expected.to have_db_column :title }
    it { is_expected.to have_db_column :text }
    it { is_expected.to have_db_column :category }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :title }
    it { is_expected.to validate_presence_of :text }
    it { is_expected.to validate_presence_of :category } 
  end

  describe 'Associations' do
    it { is_expected.to belong_to :user }
    it { is_expected.to have_many :comments }
  end

  describe 'Factory' do
    it 'should have valid Factory' do
      expect(FactoryBot.create(:post)).to be_valid 
    end
  end
end
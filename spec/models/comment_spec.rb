require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe 'DB table' do
    it { is_expected.to have_db_column :id }
    it { is_expected.to have_db_column :content }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :content }
  end

  describe 'Associations' do  
    it {is_expected.to belong_to :article}
    it {is_expected.to belong_to :user}
  end

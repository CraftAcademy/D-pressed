require 'rails_helper'

RSpec.describe User, type: :model do
  describe "DB table" do
    it { is_expected.to have_db_column :email }
    it { is_expected.to have_db_column :encrypted_password }
    it { is_expected.to have_db_column :subscriber }
    it { is_expected.to have_db_column :author }
    it { is_expected.to have_db_column :editor }
  end


  describe 'Associations' do  
    it {is_expected.to have_many :articles}
  end

  describe "Factory" do
    it "for :user is valid" do
      expect(create(:user)).to be_valid
    end
  end
end

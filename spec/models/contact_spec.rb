require 'rails_helper'
require 'shoulda/matchers'

RSpec.describe Contact, type: :model do

   let(:contact) {FactoryGirl.build(:contact)}
   let(:created_contact) {FactoryGirl.create(:contact, first_name: 'viji', email: 'viji@gmail.com', age: 27, last_name: 'kumar')}
  
   context 'validations' do
   	it { should validate_presence_of :email }
    it { should validate_numericality_of :age }
    subject {created_contact}
    it { should validate_uniqueness_of(:email).case_insensitive }
   end

   context 'associations' do
   	it {should have_many(:addresses) }
   	it {should have_many(:phonenumbers)}
   end

   it 'has a valid factory' do
   	expect(created_contact).to be_valid
   end


end

require "rails_helper"
# we've included shouldamatchers in our gemfile, but wrote require:false, so we must explcitly require it here. 
require "shoulda/matchers"

describe User do

  # it "has an email" do 
  #   user = FactoryGirl.create(:a_user)
  #   expect(user.email).to_not be_nil
  # end

  # it "has a password" do 
  #   user = FactoryGirl.create(:a_user)
  #   expect(user.password).to_not be_nil 
  # end

  it { should validate_uniqueness_of(:email) }

  it do 
    should allow_value('a@a.com').
      for(:email)
  end 

  it { should ensure_length_of(:password).is_at_least(6) }
  it { should ensure_length_of(:password).is_at_most(20) }
  it { should ensure_length_of(:email).is_at_most(255) }

  # add test for have_many association
  it { should have_many(:lists) }
  
end
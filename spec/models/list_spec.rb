require "rails_helper"
require "shoulda/matchers"

describe List do 
  it { should validate_presence_of(:name) }
  it { should ensure_length_of(:name).is_at_most(50) }

  # add test for have_many association
  it { should have_many(:items) }

  # add test for belong_to association
  it { should belong_to(:user) }
end
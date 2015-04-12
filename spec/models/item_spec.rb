require "rails_helper"

describe Item do 

  it { should validate_presence_of(:name) }
  it { should ensure_length_of(:name).is_at_most(50) }

  # add test for association
  it { should belong_to(:list) }

end
require "rails_helper"

describe Item do 

  it { should validate_presnce_of(:name) }
  it { should ensure_length_of(:name).is_at_most(50) }

end
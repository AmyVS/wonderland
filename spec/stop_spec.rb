require 'rails_helper'

describe Stop do

  it { should belong_to :station }
  it { should belong_to :line }

end

require 'rails_helper'

describe Line do

  it { should validate_presence_of :name }
  it { should have_many(:stations).through(:stops)}
  it { should have_many :stops }

end

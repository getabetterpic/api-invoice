require 'rails_helper'

RSpec.describe Company, :type => :model do
  it { should validate_presence_of :internal_reference }
  it { should validate_uniqueness_of(:internal_reference).case_insensitive }
  it { should validate_presence_of :name }
  it { should have_many(:users).through(:memberships) }
end

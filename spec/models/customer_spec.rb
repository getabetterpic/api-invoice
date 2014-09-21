require 'rails_helper'

RSpec.describe Customer, :type => :model do
  it { should validate_presence_of :status }
  it { should belong_to :company }
  it { should validate_uniqueness_of(:reference).scoped_to(:company_id).allow_nil }
  it { should have_many :invoices }
end

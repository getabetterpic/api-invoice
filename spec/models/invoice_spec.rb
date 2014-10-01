require 'rails_helper'

RSpec.describe Invoice, :type => :model do
  it { should validate_presence_of :invoice_date }
  it { should belong_to :customer }
  it { should validate_presence_of :status }
  it { should have_many :invoice_lines }
  it { should have_many :applied_payments }
  it { should have_many(:payments).through(:applied_payments) }
end

require 'rails_helper'

RSpec.describe Payment, :type => :model do
  it { should have_many(:invoices).through(:applied_payments) }
  it { should have_many(:applied_payments) }
end

require 'rails_helper'

RSpec.describe InvoiceLine, :type => :model do
  it { should validate_presence_of :units }
  it { should validate_presence_of :unit_price }
  it { should validate_presence_of :line_amount }
  it { should belong_to :invoice }
end

require 'test_helper'

class SaleOrderTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert SaleOrder.new.valid?
  end
end

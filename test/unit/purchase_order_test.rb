require 'test_helper'

class PurchaseOrderTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert PurchaseOrder.new.valid?
  end
end

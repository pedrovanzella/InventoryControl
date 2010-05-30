class ProductsController < InheritedResources::Base
  respond_to :html

  def index
    index! { @products = Product.find(:all, :joins => :brand, :order => 'name') }
  end
end

class ProductsController < InheritedResources::Base
  respond_to :html

  def index
    index! { @products = Product.with_brand }
  end
end

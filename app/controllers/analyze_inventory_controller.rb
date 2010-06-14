class AnalyzeInventoryController < ApplicationController
  def index
#    @products = Product.find(:all, :joins => :brand, :order => 'name')
#    
#    respond_to do |format|
#      format.html
#      format.xls {
#        render :xls => @products.to_xls(:except => [:created_at,:updated_at])
#      }
#    end
     
     @search = Product.with_brand.ascend_by_name.search(params[:search])
     @products, @products_count = @search.all, @search.count
      
     respond_to do |format|
      format.html
     end
  end

  def stock_alert
    @search = Product.stock_alert.search(params[:search])
    @products, @products_count = @search.all, @search.count

    respond_to do |format|
      format.html
    end
  end
end

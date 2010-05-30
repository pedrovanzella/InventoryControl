class AnalyzeInventoryController < ApplicationController
  def index
    @products = Product.find(:all, :joins => :brand, :order => 'name')
    
    respond_to do |format|
      format.html
      format.xls {
        render :xls => @products.to_xls(:except => [:created_at,:updated_at])
      }
    end
  end
end

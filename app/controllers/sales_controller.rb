class SalesController < ApplicationController
  def index
    @sales = Sale.all
  end
  
  def show
    @sale = Sale.find(params[:id])
  end
  
  def new
    @sale = Sale.new
  end
  
  def create
    @sale = Sale.new(params[:sale])
    if @sale.save
      flash[:notice] = "Successfully created sale."
      redirect_to @sale
    else
      render :action => 'new'
    end
  end
  
  def edit
    @sale = Sale.find(params[:id])
  end
  
  def update
    @sale = Sale.find(params[:id])
    if @sale.update_attributes(params[:sale])
      flash[:notice] = "Successfully updated sale."
      redirect_to @sale
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @sale = Sale.find(params[:id])
    @sale.destroy
    flash[:notice] = "Successfully destroyed sale."
    redirect_to sales_url
  end
end

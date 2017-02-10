class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:notice] = "Product added successfully!"
      redirect_to products_path
    else
      flash[:alert] = "Oops, something went wrong... please try again."
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      flash[:notice] = "You have updated the product!"
      redirect_to product_path(@product)
    else
      flash[:alert] = "Oops, something went wrong... please try again."
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    if @product.destroy
      flash[:notice] = "Product has been deleted."
      redirect_to products_path
    else
    flash[:alert] = "Oops, something went wrong... please try again."
    end
  end

private
  def product_params
    params.require(:product).permit(:name, :country, :cost)
  end

end

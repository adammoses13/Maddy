class ProductsController < ApplicationController
  
    def index
    @products = Product.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @products }
      format.js
    end
  end

  def new
    @product = Product.new
  end
    
  def create
    @product = Product.new(params[:product])
    
    respond_to do |format|
      if @product.save
        format.html { redirect_to products_path, notice: 'Product was successfully created.' }
        format.json { render json: products_path, status: :created, location: @product }
      else
        format.html { render action: "new" }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
    
  end

    def destroy
    @product = Product.find(params[:id])
    @product.destroy

    respond_to do |format|
      format.html { redirect_to products_path, notice: 'Product was successfully deleted' }
      format.json { head :no_content }
    end
  end

    def show
    @product = Product.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @product }
    end
  end
  
  def edit
    @product = Product.find(params[:id])
  end

   def update
    @product = Product.find(params[:id])
   
    respond_to do |format|
      if @product.update_attributes(params[:product])
        format.html { redirect_to products_path, notice: 'Product was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end

  end
end
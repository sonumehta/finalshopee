class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
 before_action :signed_in_user, only: [:create, :destroy]
  # GET /products
  # GET /products.json

  def index
  
	if(params[:search].nil?)
	    
	    @prod = Product.paginate(page: params[:page])
	    else
	    @prod = Product.search(params[:search])
	    
	    end
   @filterProducts = true
   @products = Cat2.where(cat1_id: params[:id]).all
   @cart = current_cart

  end


def searchcat
	
	@userpro=Product.where(["id = ?", ])
	redirect_to products_path

end


def uploadFile
	
    post = Product.save(params[:picture])
    render :text => "File has been uploaded successfully"
  end

def updateval
    # updates artists and songs based on genre selected
    cat1 = Cat1.find(params[:cat1_id])
    cat2s = cat1.cat2s
    cat3s   = cat1.cat3s

    render :update do |page|
      page.replace_html 'cat2s', :partial => 'cat2s', :object => cat2s
      page.replace_html 'cat3s',   :partial => 'cat3s',   :object => cat3s
    end
  end


'''def widget
@product = Product.find(params[:id])
respond_to do |format|
      format.json { render :json => {:product => @product}}
    end
end'''
  # GET /products/1
  # GET /products/1.json
  def show
if(!params[:user_id].nil?)
	@user= User.find(params[:user_id])
	@pro= User.find(params[:product_id])
	@view = Shipper.new(phone: @user, company_name: @pro,user: @user)

	@view.save
end
@product = Product.find(params[:id])

@relatedproducts = Product.find(:all, :conditions => [' (pname LIKE ? or pname LIKE? or (cat3 LIKE?) or (cat2 LIKE? and cat1 LIKE?) ) and pname !=? ',"%"+@product.desc+"%",@product.pname, @product.cat3, @product.cat2, @product.cat1 ,@product.pname])

@userpro=Product.where(["id = ?",@product.id ])
@order=Customerorder.all
@users=Array.new
for element in @order do
  for item in element.line_items
	if item.product_id==@product.id
	@users.push(element.user_id)
	end
end
end

@userdisp=Array.new
for user in @users
	if  !@userdisp.include?(User.find_by_id(user))
	@userdisp.push(	User.find_by_id(user))
	end
end

 @comment = Comment.new
 
  end

  # GET /products/new
  def new
    @product = Product.new
    
  end

  # GET /products/1/edit
  def edit
	
  end

  # POST /products
  # POST /products.json
'''  def create
    @product = Product.new(product_params)
	if @product.save
		flash[:success] = "Product added to the list"
	     redirect_to @product
	    else
	      '''#render 'new'
	    '''end
    end
'''
def create
@product = Product.new(product_params)


    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product added to the list.' }
        format.json { render action: 'show', status: :created, location: @product }
	
      else
        format.html { render action: 'new' }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
end

   

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

def updatecat
    cat1 = Cat1.find(params[:product][:name])
    cat2 = cat1.Cat2s
    render :new do |page|
      page.replace_html 'cat2s', :partial => 'cat2s', :object => cat2s
      end

  end
  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:pname, :IDSKU, :supplier_id, :cat1,:cat2,:cat3,:pic,	 :desc, :price, :color, :discount, :product_available, :discount, :picture, :ranking)
    end



end



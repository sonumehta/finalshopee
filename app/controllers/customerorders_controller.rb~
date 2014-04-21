class CustomerordersController < ApplicationController
  before_action :set_customerorder, only: [:show, :edit, :update, :destroy]
 


  # GET /customerorders
  # GET /customerorders.json
  def index
    @customerorders = Customerorder.all
  end

  # GET /customerorders/1
  # GET /customerorders/1.json
  

  def show
	
  end

  # GET /customerorders/new
  def new
	if current_cart.line_items.empty?
	redirect_to products_path, :notice => "Your cart is empty"
	return
	end
	@customerorder = Customerorder.new
	respond_to do |format|
	
	format.html # new.html.erb
	format.xml { render :xml => @customerorder }
	end
	
  end


  # GET /customerorders/1/edit
  def edit
  end



  # POST /customerorders
  # POST /customerorders.json
  def create
	@order = current_user.customerorders.create!(customerorder_params)
    	#@order = Customerorder.new(customerorder_params)
	@order.add_line_items_from_cart(current_cart)
	respond_to do |format|
	if @order.save
		Cart.destroy(session[:cart_id])
		session[:cart_id] = nil
		format.html { redirect_to(products_path, :notice =>	'Thank you for your order.' ) }
		format.xml { render :xml => @order, :status => :created,:location => @order }
	else
		format.html { render :action => "new" }
		format.xml { render :xml => @order.errors,:status => :unprocessable_entity }
	end
  end

  end

  # PATCH/PUT /customerorders/1
  # PATCH/PUT /customerorders/1.json
  def update
    respond_to do |format|
      if @customerorder.update(customerorder_params)
        format.html { redirect_to @customerorder, notice: 'Customerorder was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @customerorder.errors, status: :unprocessable_entity }
      end
    end
  end

	def userorders
		@orders=Customerorder.where(["user_id = ?", params[:user_id]])
	end

def pendingorders
	@orders=Customerorder.where(["status = ?", "Pending"])
end
  # DELETE /customerorders/1
  # DELETE /customerorders/1.json
  def destroy
    @customerorder.destroy
    respond_to do |format|
      format.html { redirect_to customerorders_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customerorder
      @customerorder = Customerorder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customerorder_params
      params.require(:customerorder).permit(:name, :address, :email, :pay_type,:user_id,:cart_id,:status)
    end
end

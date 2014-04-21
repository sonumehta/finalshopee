class ViewedprosController < ApplicationController
  before_action :set_viewedpro, only: [:show, :edit, :update, :destroy]

  # GET /viewedpros
  # GET /viewedpros.json
  def index
    @viewedpros = Viewedpro.all
  end

  # GET /viewedpros/1
  # GET /viewedpros/1.json
  def show
  end

  # GET /viewedpros/new
  def new
    @viewedpro = Viewedpro.new
  end

  # GET /viewedpros/1/edit
  def edit
  end

  # POST /viewedpros
  # POST /viewedpros.json
  def create
    @viewedpro = Viewedpro.new(viewedpro_params)

    respond_to do |format|
      if @viewedpro.save
        format.html { redirect_to @viewedpro, notice: 'Viewedpro was successfully created.' }
        format.json { render action: 'show', status: :created, location: @viewedpro }
      else
        format.html { render action: 'new' }
        format.json { render json: @viewedpro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /viewedpros/1
  # PATCH/PUT /viewedpros/1.json
  def update
    respond_to do |format|
      if @viewedpro.update(viewedpro_params)
        format.html { redirect_to @viewedpro, notice: 'Viewedpro was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @viewedpro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /viewedpros/1
  # DELETE /viewedpros/1.json
  def destroy
    @viewedpro.destroy
    respond_to do |format|
      format.html { redirect_to viewedpros_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_viewedpro
      @viewedpro = Viewedpro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def viewedpro_params
      params.require(:viewedpro).permit(:user_id, :product_id)
    end
end

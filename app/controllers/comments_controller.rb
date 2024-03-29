class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit, :update, :destroy]

  # GET /comments
  # GET /comments.json
  def index
    @comments = Comment.all
  end

  # GET /comments/1
  # GET /comments/1.json
  def show
  end

  # GET /comments/new
  def new
    @comment = Comment.new
    @product
  end

  # GET /comments/1/edit
  def edit
  end

  # POST /comments
  # POST /comments.json

def create
		@product=Product.find_by_id(comment_params[:product_id])
		
		@comment = @product.comments.create!(comment_params)


   # @comment = current_user.comments.build(params[:comment])
    if @comment.save
       flash[:success] = "Comment added!"
       redirect_to products_path+'/'+comment_params[:product_id]
    else
      render 'shared/_comment_form'
    end
  end
end

  # PATCH/PUT /comments/1
  # PATCH/PUT /comments/1.json
  def update
    respond_to do |format|
      if @comment.update(comment_params)
        format.html { redirect_to @comment, notice: 'Comment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to comments_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params

      params.require(:comment).permit(:product_id, :content, :text, :user_id)
	
    end

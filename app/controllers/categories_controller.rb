class CategoriesController < ApplicationController
    
  before_action :require_user, only: [:new, :create]

  def show
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new
  end
  
  def create
    @category = Category.new(category_params)
    if @category.save
      flash[:notice] = "Your category was created."
      redirect_to posts_path
    else
      render :new
    end
  end
  
  def category_params
    params.require(:category).permit(:name)
  end

end 
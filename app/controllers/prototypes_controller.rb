class PrototypesController < ApplicationController
  def index
    @prototypes = Prototype.all
  end

  def new
    @prototypes = Prototype
  end

  def create
    Prototype.create(prototype_params)
    if current_user.created_at
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  private
  def prototype_params
    params.require(:prototype).permit(:title,:catch_copy,:concept,:image).merge(user_id: current_user.id)
  end

end

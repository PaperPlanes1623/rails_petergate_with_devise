class EditorsController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  def destroy
    @editors = Editor.find(params[:id]).destroy
  end
end

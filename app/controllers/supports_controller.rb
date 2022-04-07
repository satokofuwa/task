class SupportsController < ApplicationController
  before_action :set_support, only: %i[edit update destroy ]

  def index
    @supports = Support.all
  end

  def new
    @support = Support.new
  end

  def edit
    @support = Support.find(params[:id])
  end
  
  def create
    @support = Support.new(support_params)
      if @support.save
        redirect_to supports_url, notice: "Task was successfully created." 
      else
        redirect_to supports_url, notice: "An error has occurred." 
      end
  end

  def update

    if @support.update(support_params)    
      redirect_to supports_url, notice: "Task has been successfully updated." 
    else
      redirect_to edit_support_url,notice: "An error has occered"
    end
  end
  
  def show 
    @supports = Support.all
  end

  def destroy
    if @support.present?
      @support.destroy
      redirect_to supports_url, notice:  "Task has been deleted!"
    end
  end 

  private

  def set_support
    @support = Support.find(params[:id])
  end

  def support_params
    params.require(:support).permit(:task,:content)
  end
end

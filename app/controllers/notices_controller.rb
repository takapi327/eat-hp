class NoticesController < ApplicationController
  def index
  end

  def new
    @notice = Notice.new
  end

  def create
    @notice = Notice.new(notice_params)
    if @notice.save
      redirect_to root_path
    else
      @notice = Notice.new
      render :new
    end
  end
  
  private
  def notice_params
    params.require(:notice).permit(:tittle, :content, :important)
  end

end

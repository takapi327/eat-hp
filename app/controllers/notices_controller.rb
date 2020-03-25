class NoticesController < ApplicationController
  def index
    @notices = Notice.order('created_at DESC')
    @notice = Notice.where(important: 1).order('created_at DESC')
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

  def show
    @notice = Notice.find(params[:id])
  end

  def destroy
    @notice = Notice.find(params[:id])
    if @notice.destroy
      redirect_to root_path
    else
      alert('削除できませんでした。')
    end
  end
  
  private
  def notice_params
    params.require(:notice).permit(:tittle, :content, :important)
  end

end

class TsubuyakisController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_tsubuyaki, only: :detroy
  before_action :correct_user,   only: :destroy
  def index
    @tweets = Tsubuyaki.all.order(created_at: :desc)
  end

  def new
    @tweet = Tsubuyaki.new
  end

  def create
    @tweet = Tsubuyaki.new(tsubuyaki_params)
    @tweet.user_id =current_user.id
    if @tweet.save
      redirect_to tsubuyakis_path, notice: 'ツイートできました！'
    else
      render "new"
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
    @tweet = Tsubuyaki.find(params[:id])
    @tweet.destroy
    flash[:success] = "your tweet  deleted"
    redirect_to request.referrer || root_url
  end

  private
    def set_tsubuyaki
      @tweet = Tsubuyaki.find(params[:id])
    end

    def tsubuyaki_params
      params.require(:tsubuyaki).permit(:tweet,:user_id)
    end

    def correct_user
      @tweet = current_user.tsubuyakis.find_by(id: params[:id])
      redirect_to root_url if @tweet.nil?
    end
end

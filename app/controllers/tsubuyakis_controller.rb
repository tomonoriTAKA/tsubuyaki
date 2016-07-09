class TsubuyakisController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  def index
    @tweets = Tsubuyaki.all
    @new_tweets = Tsubuyaki.all
  end

  def new
    @tweet = Tsubuyaki.new
  end

  def create
    @tweet = Tsubuyaki.new(tsubuyaki_params)
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
  end

  private
    def tsubuyaki_params
      params.require(:tsubuyaki).permit(:tweet)
    end
end

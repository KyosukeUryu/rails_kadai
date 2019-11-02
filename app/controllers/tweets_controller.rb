class TweetsController < ApplicationController
  def toppage
  end

  def index
    @tweets = Tweet.all.order(id: "DESC")
  end

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new(tweet_params)
    if @tweet.save
      redirect_to tweets_path
    else
      render :new
    end
  end

  def edit
    @tweet = Tweet.find(params[:id])
  end

  def update
    @tweet = Tweet.find(params[:id])
    if @tweet.update(tweet_params)
      redirect_to tweets_path
    else
      render :edit
    end
  end

  def destroy
  end

  private

  def tweet_params
    params.require(:tweet).permit(:content)
  end

end

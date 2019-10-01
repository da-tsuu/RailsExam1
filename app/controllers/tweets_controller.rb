class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
  end

  def new
    @tweet = Tweet.new
  end

  def create
    Tweet.create(params[:tweet])
    redirect_to new_tweet_path
  end

  private

  def tweet_params
    params.require(tweet).permit(:content)
end

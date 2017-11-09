class HomeController < ApplicationController
 
    def index
  end
    def send_tweet
        
      SendTweet.new(tweet[:msgTweet]).perform
        render :index
    end
    
    private
    
    def tweet
        params.require(:tweet).permit(:msgTweet)
    end
end

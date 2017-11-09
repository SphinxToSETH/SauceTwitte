class SendTweet
    
  def initialize(tweet)
    @tweet = tweet
  end

  def log_in_to_twitter
 @client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "RrdoPztk8qPL35Ntllx2wL8gT"
  config.consumer_secret     = "BhF8Ltcfe1zXdlcuJlXIitv0V9fQ73IuF2InPExphMQmj3ikS9"
  config.access_token        =  "918085246129786880-0hfPyRHVW9DHnXMrSFK0P6MfB6BYBPA"
  config.access_token_secret =  "tgvsJSujrJjfZax6a6gCDz73gntDaIKPfBL5qIO629uVt"

  end
end 

  def send_tweet
    @client.update(@tweet)
  end

  def perform
    log_in_to_twitter
    send_tweet
  end
end

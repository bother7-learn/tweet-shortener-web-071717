# Write your code here.

def word_substituter(string)
works = string.split(" ")
newstring = []
works.each do |wordcheck|
  if wordcheck.start_with?("hello")
    ##wordcheck.delete("hello")
    newstring << "hi"
  elsif wordcheck.start_with?("to")
    ##wordcheck.delete("to")
    newstring << "2"
  elsif wordcheck.start_with?("two")
    ##wordcheck = wordcheck.delete("two")
    newstring << "2"
  elsif wordcheck.start_with?("too")
    ##wordcheck = wordcheck.delete("too")
      newstring << "2"
  elsif wordcheck.start_with?("for")
      ##wordcheck = wordcheck.delete("too")
      newstring << "4"
    elsif wordcheck.start_with?("For")
        ##wordcheck = wordcheck.delete("too")
        newstring << "4"
  elsif wordcheck.start_with?("four")
        ##wordcheck = wordcheck.delete("too")
  newstring << "4"
elsif wordcheck.start_with?("be")
  if wordcheck.length == 2
  ##wordcheck = wordcheck.delete("too")
    newstring << "b"
  else newstring << wordcheck
  end
elsif wordcheck.start_with?("you")
    ##wordcheck = wordcheck.delete("too")
      newstring << "u"
elsif wordcheck.start_with?("at")
      ##wordcheck = wordcheck.delete("too")
        newstring << "@"
elsif wordcheck.start_with?("and")
      ##wordcheck = wordcheck.delete("too")
        newstring << "&"
    else
      newstring << wordcheck
  end
end
newstring.join(" ")
end

def bulk_tweet_shortener(tweets)
shortened = []
tweets.each do |tweet|
  puts word_substituter(tweet)
end
end

def selective_tweet_shortener(tweet)
if tweet.length > 140
  word_substituter(tweet)
else
  tweet
end
end

def shortened_tweet_truncator(tweet)
thetweet = ""
  if tweet.length > 140
    thetweet = word_substituter(tweet)
    thetweet = thetweet[0..136]
    thetweet << "..."
  else
    thetweet = tweet
  end
end

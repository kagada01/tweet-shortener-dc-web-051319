require 'pry'

def dictionary
substitutes =  {
  "hello" => "hi",
  "to" => "2", 
  "two" => "2",
  "too" => "2",
  "for" => "4",
  "four" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&"
}
end


def word_substituter(tweet)
  
  sub_tweet = tweet.split(" ")
  #Turn tweet into an array of separate strings 
  
  
  sub_tweet.collect do |word|
  #Go through each word and return in a new array
    
    if dictionary.keys.include?(word.downcase)
    #Compare all of KEYS in dictionary, and checks to see if they match the current word.downcase

      new_word = dictionary[word.downcase]
      #If so, the matching word is set to a new variable
      
      new_word
    else
      word
      #If not, word is just outputted
    end
    
  end.join(" ")
  #Takes final array of words in order, replaced and not, and returns it as a single string
   
end

def bulk_tweet_shortener(tweets)
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
  #binding.pry
  
    if word_substituter(tweet).length > 140
      truncated_sentence = word_substituter(tweet)[0..136] + "..."
      truncated_sentence
    else
      word_substituter(tweet)
    end
end





# Write your code here.

def dictionary
    	dictionary = {
        		'hello' => 'hi',
        		'to' => '2',
        		'two' => '2',
        		'too' => '2',
        		'for' => '4',
        		'four' => '4',
        		'be' => 'b',
        		'you' => 'u',
        		'at' => '@',
        		'and' => '&'
        	}
    end

def word_substituter(tweet)
    sub_word_tweet = tweet.split.map do |word|
        if dictionary.keys.include?(word.downcase)
                       word = dictionary[word.downcase]
                else
                   word
               end
        end
        sub_word_tweet.join(" ")
            end

def bulk_tweet_shortener (tweet)
    tweets.collect do |tweet|
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
        shorten = word_substituter(tweet)
       if shorten.length > 140
        shorten[0..134] + "(...)"
        else
            tweet
       end
end

# This cleans the streamed feeds in Project_1.py by extracting the the actual tweet only
from tweepy import Stream
from tweepy import OAuthHandler
from tweepy.streaming import StreamListener
import read_write_file_algorithm as rd
import time
ckey='A7wThk54hZMHwPPUgz5ynivJc'
csecret='n1zJUs98zFRjquwi0NLctdjsFTleKebYiNpmWdtuQqzxeUvfOV'
atoken='1195073922-3BR3hH0Ls69h2GDLLBf7fE1JGNOtcChtlIqAnou'
asecret='FMHyEiPv39y2A9KDJAY4cEHPZmmBptuLNW8hyE6lKBurE'

class listener(StreamListener):
    def on_data(self, raw_data):
        try:
            #print(raw_data)
            tweet=raw_data.split(',"text":"')[1].split('","source')[0]
            feed_time =str(time.time()) # The whole date can be input but unix timestamp is better
            save_feed=feed_time+":::"+tweet
            #Note before the element in the text is comma followed by "text":".  The [1]
            # indicates the element to the right after : Also, the actual tweet ends with
            # (","source), then [0] indicates the text to the left.
            rd.read_write_file('US_Polls.txt',save_feed+"\n")
            return True
        except BaseException:
            print('Failed on data')
            time.sleep(5)
    def on_error(self, status_code):
        print(status)
auth=OAuthHandler(ckey,csecret) # This set the authentication parameters
auth.set_access_token(atoken,asecret) # This set the auth for the token
twitterStream=Stream(auth,listener()) #set the stream pass-through
twitterStream.filter(track=["Trump","Donald Trump", "Hillary Clinton","Ted Cruz"])





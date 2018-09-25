# This is our initial bot implementation. It works by listening for messages
# and checking them against a regular expression that matches a number followed
# by a bang, e.g. "36!". This is how users will report their push ups in the
# Slack channel.

class Bot < SlackRubyBot::Bot
  PUSH_UP_COUNT = /^\s*(?<count>\d+)!\s*$/

  match PUSH_UP_COUNT do |client, data, match|
    client.say(channel: data.channel, text: "Well done! #{match[:count]} is not bad.")
  end
end

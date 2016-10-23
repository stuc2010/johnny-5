# Description:
#   Responds with grammar corrections
#
# Notes:
#

module.exports = (robot) ->

  robot.hear /\bits\b (a|the|my|just|only|when|an|your|about|mine|not|never)/i, (res) ->
      res.send "I think you meant \"it's\""
        
  robot.hear /[\w] and me/i, (res) ->
      res.send "And I!"

  robot.hear /\ba\b [aeiou]{1}[\w]{0,}/i, (res) ->
      res.send "You probably meant \"an\""
                
  robot.hear /\ban\b [^aeiou]{1}[\w]{0,}/i, (res) ->
      res.send "You probably meant \"a\""

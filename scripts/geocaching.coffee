# Description:
#   Responds with a link to a geocache page when GC code is mentioned
#
# Notes:
#

module.exports = (robot) ->

  robot.hear /GC[0-9A-Z]{2,6}/i, (res) ->
      gcCode = res.match[0]
      res.send "http://coord.info/#{gcCode}"
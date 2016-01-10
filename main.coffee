Tabletop  = require 'tabletop'
exec = require('child_process').exec

showInfo = (data)->
  advices = (adv.Advice for adv in data.original.elements)
  random = ()->
    Math.floor((Math.random() * advices.length))
  show = ()->
    text = advices[random()]
    shellop = (error, stdout, stderr) ->
    exec 'notify-send '+'\"'+text+'\"', shellop
  exec 'notify-send Great Fucking Startup Advice'
  setInterval show, 6000

url = 'https://docs.google.com/spreadsheets/d/16y6-IWK996t0ILL5YUKvHgXEISiMWNAP7HwhV4869no/pubhtml'
tabletop = Tabletop.init( { key: url, callback: showInfo } )

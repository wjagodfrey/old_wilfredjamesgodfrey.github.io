require 'colors'
connect = require("connect")
fs      = require 'fs'
{exec}  = require 'child_process'
port = 8002

###
  build task
###

task 'build', 'Watch all jade, stylus and coffeescript files and build appropriately', ->
  jsPref = 'js/coffee/'
  jsFiles = [
    "#{jsPref}nav_config.coffee"
    "#{jsPref}index.coffee"
  ].join(' ')

  console.log '========='.bold.cyan, 'COFFEE FILES'.bold.magenta, '========='.bold.cyan
  console.log (jsFiles.split(' ').join('\n')).green.bold
  console.log '============'.bold.cyan, 'OUTPUT'.bold.magenta, '============'.bold.cyan, '\n'

  questTask = exec "
    jade --watch *.jade */*.jade  &
    coffee -w -j js/index.js -c #{jsFiles} &

    coffee -w -j js/nav_menu.js -c #{jsPref}nav_config.coffee #{jsPref}nav_menu.coffee &

    coffee -w -j js/analytics.js -c #{jsPref}analytics.coffee &

    stylus -w css/ && fg
  ", (err, stdout, stderr) ->
    throw err if err
    console.log stdout + stderr
  questTask.stdout.on 'data', (data) -> console.log data


###
  dev server task
###

task 'start', 'Start a simple HTTP file server', (options) ->
  console.log 'Starting dev server on port'.cyan.bold, "#{port}".red
  connect.createServer(connect.static(__dirname)).listen port

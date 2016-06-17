
# #Sensibo plugin
module.exports = (env) ->

  Promise = env.require 'bluebird'
  _ = env.require 'lodash'
  commons = require('pimatic-plugin-commons')(env)
  ambilight = require 'ambilight'


  # ###JointSpaceAmbilightPlugin class
  class JointSpaceAmbilightPlugin extends env.plugins.Plugin

    # ####init()
    # The `init` function is called by the framework to ask your plugin to initialise.
    #
    # #####params:
    #  * `app` is the [express] instance the framework is using.
    #  * `framework` the framework itself
    #  * `config` the properties the user specified as config for your plugin in the `plugins`
    #     section of the config.json file
    #
    #
    init: (app, @framework, @config) =>
      @base = commons.base @, 'JointSpaceAmbilightPlugin'

      @options = {
        timeout: 1000 * @base.normalize @config.timeout ? @config.__proto__.timeout, 5, 86400
      }



  # ###Finally
  # Create a instance of my plugin
  myPlugin = new JointSpaceAmbilightPlugin()
  # and return it to the framework.
  return myPlugin

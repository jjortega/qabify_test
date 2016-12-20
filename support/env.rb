$LOAD_PATH << "./"

require 'require_all'
require 'appium_lib'
require 'byebug'

require 'models/user_provider'

require 'support/utils'

require_all 'pages'

if ENV['ENV'].eql? 'android'
  caps = Appium.load_appium_txt file: File.join(File.dirname(__FILE__), 'capabilities/android_caps.txt')
else
  raise 'Wrong environment'
end

Appium::Driver.new(caps)

Appium.promote_singleton_appium_methods Pages

include Utils
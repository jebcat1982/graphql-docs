$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'graphql-docs'

require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/focus'
require 'webmock/minitest'
require 'pry'

WebMock.disable_net_connect!

def fixtures_dir
  File.join(File.dirname(__FILE__), 'graphql-docs', 'fixtures')
end

FileUtils.rm_rf(File.join(fixtures_dir, 'output'))

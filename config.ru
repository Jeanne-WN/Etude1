require 'webmachine/adapter'
require 'webmachine/adapters/rack'
require_relative 'lib/app'

run App.adapter

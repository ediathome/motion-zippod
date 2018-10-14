# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/osx'

begin
  require 'bundler'
  Bundler.require
rescue LoadError
end

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'motion-zip'

  app.info_plist['CFBundleIconName'] = 'AppIcon'
  app.pods do
    pod 'ZipUtilities', '~> 1.11.1'
  end
end

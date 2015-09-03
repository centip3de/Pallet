#!/usr/bin/ruby
if ENV['CONFIGURATION'] == "Release"
	image_name = "#{ENV['PROJECT_NAME']}.dmg"
	File.delete image_name if File.exists? image_name

	system("hdiutil create -srcfolder \'#{ENV['CONFIGURATION_BUILD_DIR']}/#{ENV['PRODUCT_NAME']}.app\' -volname #{ENV['PROJECT_NAME']} \'#{image_name}\'")
end



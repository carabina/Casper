Pod::Spec.new do |s|

s.name = "Casper"
s.platform = :ios
s.ios.deployment_target = '9.0'
s.summary = "Casper is a lightweight and highly customisable framework which extends the usability of UIAlertController to provide you with much more customisable and frequently required UI elements."
s.requires_arc = true
s.version = "0.1.0"
s.license = { :type => "MIT", :file => "LICENSE" }
s.author = { "Dhiraj Jadhao" => "[dhirajjadhao@gmail.com" }

s.homepage = "https://github.com/dhirajjadhao/Casper"
s.source = { :git => "https://github.com/dhirajjadhao/Casper.git", :tag => "0.1.0"}

s.framework = "UIKit"
s.source_files = "Casper/**/*.{swift}"


end

Pod::Spec.new do |s|

s.name         = "UIUnderlineLabel"
s.version      = "0.0.1"
s.license      = "MIT"
s.summary      = "UIUnderlineLabel"
s.homepage     = "http://www.eebochina.com"
s.author       = { "eebochina" => "eeweibo@eebochina.com" }
s.source       = { :git => "https://github.com/eebochina/UIUnderlineLabel.git", :tag => s.version}
s.source_files  = '**/*.{h,m}'
#s.resource     = 'DMFlowView.bundle'
s.platform     = :ios, "6.0"
s.requires_arc = true
s.framework = "UIKit"
# s.frameworks = "UIKit", "QuartzCore"

# s.dependency "SDWebImage", "~> 3.7.3"
# s.library = "iconv"
# s.libraries = "iconv", "xml2"

end

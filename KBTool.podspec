Pod::Spec.new do |s|
s.name         = 'KBTool'
s.version      = '1.0.2'
s.summary      = '以一些有用的方法'
s.homepage     = 'https://github.com/lurenjia521/KB_Demo.git'
s.license      = 'KB'
s.authors      = {'TuDou' => '535755455@qq.com'}
s.platform     = :ios, '8.0'
s.source       = {:git => 'https://github.com/lurenjia521/KB_Demo.git', :tag => s.version}
s.source_files = 'KBTool/**/*'
s.requires_arc = true
end
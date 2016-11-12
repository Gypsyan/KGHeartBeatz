Pod::Spec.new do |s|
  s.name         = "KGHeartBeatz"
  s.version      = "1.0.0"
  s.summary      = "A heart beat wave animation"
  s.homepage     = "https://github.com/Gypsyan/KGHeartBeatz"
  s.license      = 'Apache License, Version 2.0'
  s.author             = { "Ananth" => "ananthanmymail@gmail.com" }
  s.ios.deployment_target = "8.0"
  s.source       = { :git => "https://github.com/Gypsyan/KGHeartBeatz.git", :tag => s.version }
  s.source_files  = "KGHeartBeatz/*.swift"
end

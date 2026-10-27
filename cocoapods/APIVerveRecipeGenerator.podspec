Pod::Spec.new do |s|
  s.name             = 'APIVerveRecipeGenerator'
  s.version          = '1.2.3'
  s.summary          = 'Recipe Generator creates complete cooking recipes from a dish title or meal idea.'
  s.description      = <<-'DESC'
Recipe Generator creates complete cooking recipes from a dish title or meal idea. Pass any dish name to get structured ingredients with quantities, step-by-step instructions, prep time, cook time, and serving counts.

This iOS/macOS SDK provides a convenient way to access the Recipe Generator from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/recipe?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/recipe-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveRecipeGenerator/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end

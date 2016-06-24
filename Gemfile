source 'https://gems.ruby-china.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.6'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end
#==================================================
#后台模板
gem 'rails_admin'
#rails-admin主题
gem 'rails_admin_rollincode', '~> 1.0'
gem 'rails_admin-i18n'
#授权
gem 'cancancan', '~> 1.10'

#类似于cancancan
#gem "pundit"

#用户管理，登录／注销
gem 'devise'
#devise的国际化gem,通过这个可以快速创建devise标准的国际化文件
gem 'devise-i18n'
#gem 'devise-i18n-views'
gem 'passenger', '~> 5.0', '>= 5.0.28'

group :development, :test do
  gem 'rspec-rails', '~> 3.0'
  #rspec的自动化测试工具之一
  gem 'guard-rspec', require: false
  #自动化测试工具guard的加速测试工具spork插件
  gem 'guard-spork'
  gem 'capybara'
  gem 'factory_girl_rails', '4.6.0'
  #为数据库填充测试提供基础数据，当你需要注册数百个账户时。
  gem 'ffaker', '~>2.2.0'
end

gem 'twitter-bootstrap-rails'
gem 'less-rails'
#可以在程序中嵌入v8引擎。
gem 'therubyracer'
#在线编辑器
gem 'bootstrap-wysihtml5-rails'
gem "wysiwyg-rails"
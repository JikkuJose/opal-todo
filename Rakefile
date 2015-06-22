require 'opal'
require 'opal-jquery'

Opal.append_path('lib')

desc 'Compile Ruby to JS'
task :build do

  File.open('build/app.js', 'w') do |f|
    f.write Opal::Builder.build('app.rb')
  end
end

task default: :build

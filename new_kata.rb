require 'fileutils'

# ask name of the kata
puts "Name of the kata"
kata_name = gets.chomp

# ask the link of the kata
puts "Link of the kata"
kata_link = gets.chomp

# create new kata_name
Dir.mkdir(kata_name) unless File.exist?(kata_name)

# create lib folder
Dir.mkdir("#{kata_name}/lib")

# create file name for the solution
FileUtils.touch("#{kata_name}/lib/#{kata_name}.rb")

# create spec folder
Dir.mkdir("#{kata_name}/spec")

# create file name for the tests
FileUtils.touch("#{kata_name}/spec/#{kata_name}_spec.rb")

# create readme file with the link of the description
File.open("#{kata_name}/README.md", 'w') { |f| f.write("Link: #{kata_link}") }

# create default rakefile
FileUtils.copy_file('sample/Rakefile', "#{kata_name}/Rakefile")

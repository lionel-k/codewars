require 'fileutils'

# ask numnber of the kata
puts 'Number of the kata'
kata_number = gets.chomp

# ask name of the kata
puts 'Name of the kata'
kata_name = gets.chomp
kata_dirname = "#{kata_number}-#{kata_name}"

# ask the link of the kata
puts 'Link of the kata'
kata_link = gets.chomp

# create new kata_name directory
Dir.mkdir(kata_dirname) unless File.exist?(kata_dirname)

# create lib folder
Dir.mkdir("#{kata_dirname}/lib")

# create file name for the solution
FileUtils.touch("#{kata_dirname}/lib/#{kata_name}.rb")

# create spec folder
Dir.mkdir("#{kata_dirname}/spec")

# create file name for the tests
FileUtils.touch("#{kata_dirname}/spec/#{kata_name}_spec.rb")

# create readme file with the link of the description
File.open("#{kata_dirname}/README.md", 'w') do |f|
  f.write("Link: #{kata_link}")
end

# create default rakefile
FileUtils.copy_file('sample/Rakefile', "#{kata_dirname}/Rakefile")

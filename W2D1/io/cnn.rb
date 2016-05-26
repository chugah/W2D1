# Copy Wikipedia's home page to a file using block notation

require 'open-uri'
require 'rest-client'

#cnn_url = "http://www.cnn.com"
#cnn_local_filename = "cnn-page.html"

#File.open(cnn_local_filename, "w") do |file|
#   file.write(RestClient.get(cnn_url))
#end

#file = File.open(cnn_local_filename, "r")
#contents = file.read
#puts contents

#contents = File.open(cnn_local_filename, "r") { |file| file.read }
#puts contents



#File.open(cnn_local_filename).readlines.each do |line| 
#  puts line
#end

#file = File.open(cnn_local_filename)
#while !file.eof?
#  line = file.readline
#  puts line 
#end

#file = File.open(cnn_local_filename)
#line = file.readline
#puts line unless file.eof?

#url = "http://ruby.bastardsbook.com/files/fundamentals/hamlet.txt"
#puts open(url).readline

hamlet_file = "hamlet.txt"

#File.open(hamlet_file, "w") do |file| 
#  file.write(RestClient.get(url))
#end

# This prints the entire play
#File.open(hamlet_file, "r") do |file|
#  file.each_line do |line|
#    puts line
#  end
#end


  


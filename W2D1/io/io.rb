require 'open-uri'
require 'rest-client'
rname = "Hello.txt"

somefile = File.open(rname,'w') {|file| 3.times {file.puts "Hello2"}}

#CNN Example
#
remote_base_url = "http://cnn.com"
remote_page_name = "us"
remote_full_url = remote_base_url + "/" + remote_page_name

remote_data = open(remote_full_url).read
my_local_file = File.open("cnn",'w')
my_local_file.write(remote_data)
my_local_file.close
#------------------------------#
# read file exercise
#
thefile = File.open(rname,'r')
puts thefile.readlines #This can be thefile.read, thefile.readline, thefile.readlines
## Use readline because file sometimes can get big, and by using readline, 
# it only loads one line at a time.
#----EOF------##
puts "End of File" if thefile.eof?

#--------------Exercise: Readlines-----------------
url = "http://ruby.bastardsbook.com/files/fundamentals/hamlet.txt"
local_fname = "hamlet.txt"
File.open(local_fname,'w') {|file| file.write(open(url).read)}
	File.open(local_fname,'r') do |file|
		file.readlines.each_with_index do |line,idx|
			puts line if idx % 42 == 0
		end
	end

#------------ Only Hamlet's lines --------------------
puts "\n" * 5 # print five blank lines
File.open(local_fname,'w') {|file| file.write(open(url).read)}
	File.open(local_fname,'r') do |file|
		file.readlines.each_with_index do |line,idx|
			puts line if line.match("Ham\.")
	end
end
#---------Check for file existance -----------#
puts "\n" * 10
puts "Returns if tom file exists"
fname = "tom"
puts File.exists?(fname)
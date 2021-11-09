=begin
   
The syswrite Method
You can use the method syswrite to write the contents into a file. 
   
=end



=begin
   

aFile = File.new("textfile.txt", "r+")
if aFile
   aFile.syswrite("new text file created ")
else
   puts "Unable to open file!"
end

=end

t=File.file?( "textfile.txt" ) 
puts t
t1 = File.readable?( "textfile.txt" )   # => true
puts t1
t2 = File.executable?( "test.txt" ) # => false
puts t2
t3 = File.zero?( "textfile.txt" ) 
puts t3
t4 = File.size?( "textfile.txt" ) 
puts t4
t5 = File::ftype( "textfile.txt" )  
puts t5
t6 = File::ctime( "textfile.txt" )
puts t6
t7=File::mtime( "textfile.txt" )
puts t7
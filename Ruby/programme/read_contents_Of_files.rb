=begin

The sysread Method

Reading and Writing Files

	
=end

aFile = File.new("textfile.txt", "r")
if aFile
   content = aFile.sysread(10)
   puts content
else
   puts "Unable to open file!"
end


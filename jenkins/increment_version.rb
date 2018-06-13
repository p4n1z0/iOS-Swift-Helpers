path = "../"
project = File.read(path + "project.properties")
file_name = path + project.match(/LibraryFile="(.+)"/).captures[0]
text = File.read(file_name)
oldVersion = text.match(/s.version\s+=\s+'\d+.\d+.(\d+)'/).captures[0]
newVersion = Integer(oldVersion) + 1

newContents = text.gsub(/(s.version\s+=\s+'\d+.\d+.)(\d+)(')/ , '\1' + String(newVersion) + '\3')

puts 'Incrementing Library version'
puts 'oldVersion = ' + String(oldVersion) + ' , newVersion = ' + String(newVersion)

# To write changes to the file, use:
File.open(file_name, "w") {|file| file.puts newContents }

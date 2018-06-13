path = "../"
project = File.read(path + "project.properties")
file_name = path + project.match(/LibraryFile="(.+)"/).captures[0]

puts "Updating private pod"
system("pod repo push --allow-warnings ciber-es-ios-private-specs " + file_name)

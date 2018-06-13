path = "../"
project = File.read(path + "project.properties")
file_name = path + project.match(/LibraryFile="(.+)"/).captures[0]
text = File.read(file_name)
versions = text.match(/s.version\s+=\s+'(\d+).(\d+).(\d+)'/)
versionNameMajor = versions.captures[0]
versionNameMinor = versions.captures[1]
versionNameRelease = versions.captures[2]

puts "Updating #{versionNameMajor}.#{versionNameMinor}.#{versionNameRelease}"

system("cd " + path + " && git checkout develop ")
system("cd " + path + " && git add .")
system("cd " + path + " && git commit -m \"Updating version.properties from #{versionNameMajor}.#{versionNameMinor}.#{versionNameRelease}\"")
system("cd " + path + " && git tag -a #{versionNameMajor}.#{versionNameMinor}.#{versionNameRelease} -m \"Version #{versionNameMajor}.#{versionNameMinor}.#{versionNameRelease}\"")
system("cd " + path + " && git push origin develop")
system("cd " + path + " && git push --tags")

# Many ways to create a hash. 
my_hash = {}
my_hash = Hash.new

# Hashes: lookup values based on keys
# my_hash[key] = value # set's the key to value
# my_hash[key] to get a key if it is set
# But returns nil by default if the key is not set. 

my_hash["my_name"]="Chris"
#puts my_hash["my_name"].inspect # Output: "Chris"

#Returns nil if key doesn't exist
#puts my_hash["your name"].inspect

# Throws an error, no variable your_hash
# puts your_hash["my_name"].inspect

movies={}
# Title, Year, Director, URL
my_moon="Goodnight, Moon|2015|Chris Clearfield|www.awesomeimage.com"
movie_info=my_moon.split("|")
movie_info_hash={}
# Symbols can be used as the keys as well!
# we manually assembled the hash from data in our array.
movie_info_hash[:title] = movie_info[0]
movie_info_hash[:year] = movie_info[1]
movie_info_hash[:director] = movie_info[2]
movie_info_hash[:movie_url] = movie_info[3]

# WOAH. This is for an array only!
# movies is a hash!
# movies << movie_info_hash	
# Conceptually, this is what I'm going for.  
# movies["Goodnight, Moon"]
# : is just used to represent a symbol
movies[movie_info_hash[:title].to_sym]=movie_info_hash

# This returns a hash!
puts movies[:"Goodnight, Moon"][:year]







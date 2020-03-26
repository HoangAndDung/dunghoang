def make_string(length)
	string =  "*" * length
	array = string.split("")
	string = array.join(" ")
	return string
end

n = 10

for i in 1..n do
	string = make_string(i)
	puts string.center(n*2)
	# print("\n")
end
 
puts 'this is a test'
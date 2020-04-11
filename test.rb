$n = 10 # length of on line
$width = 2 * $n # width of screen
$center = ($width / 2).to_i # center of screen

#def make_string(length)
	string =  "*" * length
	array = string.split("")
	string = array.join(" ")
	return string
#end
def print_or_not(x, y)
	start_point = $center - y  + 1
	end_point = $center + y - 1
	if x < start_point or end_point < x
		string =  " "
		# print("midle")
	elsif x == start_point
		string =  make_string(y)
		# print("startpoint")
	elsif x == end_point
		# print("endpoint")
		string =  ""
	end
	return string
end
for i in 1..$n do
	for j in 1..$width
		string = print_or_not(j, i)
		print(string)
	end
	print("\n")
end
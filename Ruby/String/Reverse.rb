def Reverse(str)
	return if str.empty?
	k = str.size - 1
	for i in 0..(str.size-1)/2 do
		str[i], str[k] = str[k], str[i]
		k = k-1
	end
	str
end

string = 'Ruby'

print Reverse(string)
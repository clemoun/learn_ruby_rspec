# write your code here
def who_is_bigger(a,b,c)
	unless (a && b && c)
		return "nil detected"
	end
	if b>a
		if c>b
			return "c is bigger"
		else
			return "b is bigger"
		end
	else
		if c>a
			return "c is bigger"
		end
	end
	return "a is bigger"
end

def reverse_upcase_noLTA(string)
	string.reverse!
	string.upcase!
	while(string =~ /(L|T|A)/)
		string[string =~ /(L|T|A)/]=""
	end
	return string
end

def array_42(array)
	array.each{ |num| return true if num==42 }
	return false
end

def magic_array(array)
	array.flatten!
	array.sort!
	array.delete_if{|n| n%3==0}
	array.uniq!
	array.each_index {|i| array[i] *=2}
end


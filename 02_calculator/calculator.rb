#write your code here
def add(a,b)
	return a+b
end

def subtract(a,b)
	return a-b
end

def sum(array)
	somme = 0
	array.each do |num|
		somme += num
	end
	return somme
end

def multiply(a,b)
	return a*b
end

def power(a,b)
	return a**b
end

def factorial(a)
	count = 1
	if a == 0
		return 1
	end
	a.times do |i|
		count *= (i+1)
	end
	return count
end


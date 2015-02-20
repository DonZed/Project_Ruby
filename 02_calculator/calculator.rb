def add (n1, n2)
	n1 + n2
end

def subtract (n1, n2)
	n1 - n2
end

def sum (numbers)
	numbers.inject(0) { |sum, number| sum + number }
end

def multiply (numbers)
	x = numbers.pop
	numbers.inject(x) { |mem, var| mem * var }
end

def power (num, pow)
	num ** pow
end

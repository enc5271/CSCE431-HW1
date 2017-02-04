# When done, submit this entire file to the autograder.

# Part 1

def sum arr
	if arr.length==0
		return 0
	else
		return arr.inject(:+)
	end
end

def max_2_sum arr
 	len = arr.length
 	if len==0
 		return 0
 	elsif len==1
 		return arr[0]
 	else
 		sorted = arr.sort
 		return (sorted[-1] + sorted[-2])
 	end
end

def sum_to_n? arr, n
	len = arr.length
	flag = false
	if len ==1
		return false
	else
		for i in 0..len-1
			for j in 0..len-1
				if i!=j
					sum = arr[i]+arr[j]
					#puts 'Sum: ',sum
					#puts 'N:',n
					if sum == n
						#puts 'same'
						flag = true
					end
				end
			end
		end
		return flag
	end
end

# Part 2

def hello(name)
	return ('Hello, '+name)
end

def starts_with_consonant? s
	s[0] =~ /\A(?=[a-z])(?=[^aeiou])/i
end

def binary_multiple_of_4? s
	if s =~ /\A(?=[a-z])/i
		return false
	elsif s.length < 2
		s.eql? "0"
	else
		s[s.length-2..s.length-1].eql? "00"
	end
end

# Part 3

class BookInStock
	def initialize(isbn, price)
		if isbn.nil? || isbn.empty? || price <= 0
			raise ArgumentError.new("Invalid ISBN")
	    	end
		@isbn = isbn
		@price = price
	end

	def price
		@price
	end

	def isbn
		@isbn
	end

	def isbn=(newIsbn)
		@isbn = newIsbn
	end
	  
	def price=(newPrice)
		@price = newPrice
	end
	  
	def price_as_string
		i = 0
	    	price = @price
	    	while price != price.to_i
	      		i += 1
	      		price *= 10
	    	end
	    	if i == 0
	      		"$" + @price.to_s + ".00"
	    	elsif i != 2
	      		"$" + @price.to_s + "0"
	    	else 
	      		"$" + @price.to_s
	    	end
	end
end

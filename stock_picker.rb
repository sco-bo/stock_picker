def stock_prices (array)
	$largest_difference = 0
	array.each_with_index {|value, index|
		if index == array.size - 1
			exit
		end
		puts "Value is #{value}"
		array.each {|i| 
			$difference = value -  i
			puts "The index of this loop is " + array.index(i).to_s
			puts "Difference is #{$difference}"
			puts "'index' is #{index}"
			if ($difference <= $largest_difference) && (index < array.rindex(i))
				$negative_array = [] << $difference
				$negatives = [index, array.rindex(i)]
				puts "Values added to negatives array"
				$largest_difference = $difference
			end
			p $negative_array
			puts "Negatives is #{$negatives}"
			}	
	}
end


stock_prices([17,3,6,9,15,8,6,1,10])
stock_prices([25,2,10,9])
stock_prices([10,12,5,3,20,1,9,20])
stock_prices([10,9,8,7,6])
stock_prices([17,17,16,15])

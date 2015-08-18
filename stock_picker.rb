def stock_prices array
	$largest_difference = 0
	array.each_with_index {|value, index|
		array.each {|i| 
			$difference = value -  i
			if ($difference <= $largest_difference) && (index < array.rindex(i))
				$negative_array = [] << $difference
				$negatives = [index, array.rindex(i)]
				$largest_difference = $difference
			end
		}	
	}
	if $negative_array.nil?
		puts "The stock should be bought and sold at [0, 1], respectively"
	else
		puts "The stock should be bought and sold at #{$negatives}, respectively"
	end
end

stock_prices([17,3,6,9,15,8,6,1,10])
#stock_prices([25,2,10,9])
#stock_prices([10,12,5,3,20,1,9,20])
#stock_prices([10,9,8,7,6])
#stock_prices([18,17,17,16,15])

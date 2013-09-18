function o = biasedCoin(n, b)
	o = round(rand(1,n) - b/2.0) 
end

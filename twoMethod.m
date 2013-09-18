function out = twoMethod(numTries, bias)

	for ctr = 1:numTries
		val = -1;
		while (val == -1)
			r = biasedCoin(2,bias);
			if(r(1) ~= r(2) )
				val = r(1);
			end
		end
		
		out(ctr) = val;
	end
end
		

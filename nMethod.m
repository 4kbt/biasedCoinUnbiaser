%Attempts to generate an unbiased coinflip from a biased coin, using n flips of the unbiased coin, where n is even.
function out = nMethod(numTries, bias, n)
	if ( mod(n,2) == 1)
		error('n must be even!');
	end

	for ctr = 1:numTries
		val = -1;
		while (val == -1)
			r = biasedCoin(n,bias);
		
			%Adds the first half of the flips to the complement of the second half	
			inter = sum(r(1:(n/2))) + sum(1-r( (n/2+1) : end ) );

			%If the value is not the mean, determine the outcome
			if( abs(inter - n/2) > 0.5 )
				%assign the outcome
				val = (sign( inter - n/2) + 1)/2;
			end
		end
		
		out(ctr) = val;
	end
end
		

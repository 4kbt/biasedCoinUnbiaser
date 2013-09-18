numTries = 100000;
bias = 0.7;
nMethodN = 10;

'nMethod'
tic; n = nMethod( numTries, bias, nMethodN); toc

'twoMethod'
tic; t = twoMethod(numTries, bias); toc

nMean = mean(n)
tMean = mean(t)

nDev = std(n)
tDev = std(t)

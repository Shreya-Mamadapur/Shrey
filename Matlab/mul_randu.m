numberOfBins=100;
numberOfRandoms = 10000;
numberOfSequences = 4;

Yk= zeros(numberOfSequences,numberOfRandoms);
for i=1:numberOfSequences
Yk(i,:)=Yk(i,:) + rand(1, numberOfRandoms) - 0.5;
end;
Z = sum(Yk,1);
hist (Z, numberOfBins, "facecolor", "g", "edgecolor", "b");

%when we add a number of uniformly distributed sequences, the resulting sequence would be a normally distributed sequence.

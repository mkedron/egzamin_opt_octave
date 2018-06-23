data = load("data.csv");
X=data(:,1);
Y=data(:,2);
n= 5;
W = polyfit(X,Y,n);
cost = costFunction_Kedron(X,Y,W);

#3 losowe obserwacje :
progData = load("dataProg.csv");
Xprog = progData(:,1:1);
YAppProg = polyval(W,Xprog);

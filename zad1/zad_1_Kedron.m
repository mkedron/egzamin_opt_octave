data = load("data.csv");
X=data(:,1:6);
Y=data(:,7:7);
X= [ones(length(X),1) X];
W=calcReg_Kedron(X,Y);
cost = costFunction_Kedron(X,Y,W);

#3 losowe obserwacje :
progData = load("progData.csv");
Xprog = progData(:,1:6);
Xprog = [ones(3,1) Xprog];
YAppProg = Xprog*W;

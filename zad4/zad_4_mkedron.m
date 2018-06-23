data = load("data.csv");
X=[ones(47,1) data(:,1:6)];
p=data(:,7);

normit = (norminv(p));
probitVar = normit.+5;

Y=p;
b=inv(X'*X)*X'*Y;

Y=probitVar;
bProbit=inv(X'*X)*X'*Y;


Xprog = load("progData.csv");


Xprog = [ ones(3,1) Xprog ];
YLinear = Xprog*b;

z= Xprog*bProbit;
Yprobit = normcdf(z-5);
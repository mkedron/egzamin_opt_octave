data = load("data.csv");
Y_mk = data(:,7);
X_mk = data(:,1:6);
z0_mk=X_mk(Y_mk == 0, :);
z1_mk=X_mk(Y_mk == 1, :);
ez0_mk=mean(z0_mk);
ez1_mk=mean(z1_mk);
ez_mk=ez1_mk.-ez0_mk;
cov0_mk=cov(z0_mk);
cov1_mk=cov(z1_mk);
c_mk = cov0_mk.+ cov1_mk;
b_mk=inv(c_mk)*ez_mk';
f0_mk=ez0_mk*b_mk;
f1_mk=ez1_mk*b_mk;
f_mk=(f0_mk+f1_mk)/2;


#3 obserwacje :
Xprog_mk = load("dataProg.csv");
fProg_mk = Xprog_mk*b_mk;
result_mk = fProg_mk>f_mk;

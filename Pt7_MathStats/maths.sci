m = [1,2,3,4,5,6,7,8,9,10,11,12]
V = [17,25,21,41,31,34,33,46,41,36,35,22]
E = [133,170,157,283,218,229,226,336,293,229,243,189]


moyV = mean(V)
varX = mean((V-moyV).*(V-moyV))

moyE = mean(E)
varE = mean((E-moyE).*(E-moyE))

disp(varX)
disp(varE)

scatter(V,E)

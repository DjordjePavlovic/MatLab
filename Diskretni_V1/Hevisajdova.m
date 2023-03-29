Tmax = 0.02;
fk = [100 1500 2500];
ak = [10 4 7];
tk = 0: 0.00001: Tmax;

xk = ak(1)*cos(2*pi*fk(1)*tk)-ak(2)*cos(2*pi*fk(2)*tk)+ak(3)*cos(2*pi*fk(3)*tk);
fmax = fk(3);
fs = 2*fmax;ts= 1/fs;

td = 0 : ts : Tmax;  

xd = ak(1)*cos(2*pi*fk(1)*td)-ak(2)*cos(2*pi*fk(2)*td)+ak(3)*cos(2*pi*fk(3)*td);

subplot(2,1,1),plot(tk,xk,'k');

subplot(2,1,2),stem(td,xd);
t=0:0.05:10;
function dhdt=dhdt(h)
	F0=1.5; %m3/s
	F=0.5*h; %m3/s
	r=0.5; %m
	dhdt=(F0-F)/(pi*r^2);
endfunction
hs=lsode("dhdt",1.5,t);
plot(t,hs)

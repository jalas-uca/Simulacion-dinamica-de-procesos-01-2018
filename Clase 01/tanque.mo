class tanque01
	Real h(start=1.5), F;
	parameter Real F0=1.5, r=0.5;
	constant Real pi=3.14159;
equation
	F=0.5*h;
	der(h)=(F0-F)/(pi*r^2);
end tanque01;

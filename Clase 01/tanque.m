## Archivo para la simulación del primer ejemplo: un tanque con una entrada y una salida. El flujo de salida es proporcional a la altura del líquido dentro del tanque.

## Especificación del intervalo de tiempo.
t=0:0.05:10;

## Función que representa la ecuación diferencial a resolver.

function dhdt=dhdt(h)
	F0=1.5; %m3/s
	F=0.5*h; %m3/s
	r=0.5; %m
	dhdt=(F0-F)/(pi*r^2);
endfunction

## Función para la resolución de la ecuación diferencial.
hs=lsode("dhdt",1.5,t);

## Gráfica de los resultados.
plot(t,hs)

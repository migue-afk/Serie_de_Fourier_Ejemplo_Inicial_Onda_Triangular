%Graph of the Fourier Serie of example classic of triangle wave
%Graph of the function by parts
function[]=mfuncion()
t=-pi:0.01:pi;
f=(t<=0).*(0)+(t>0).*(pi-t);
plot(t,f);
hold on

%Input of variables a0, an, bn
t=linspace(-pi,pi);
an=0;
bn=0;
T=2*pi;
a0=pi/2;

%Loop for different values of n
for n=1:6
    an=an+((1-((-1)^n))/((n^2)*pi))*cos((2*n*pi*t)/T);
    bn=bn+(1/n)*sin((2*n*pi*t)/T);
    ft=(a0/2)+an+bn;
    plot(t,ft)
end
hold off

end









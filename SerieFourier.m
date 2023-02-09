
% t=linspace(-pi,pi);
% y=pi-t;
% plot(t,y)
% title('Fourier')
function[]=mfuncion()
t=-pi:0.01:pi;
f=(t<=0).*(0)+(t>0).*(pi-t);
plot(t,f);

hold on
t=linspace(-pi,pi);
% n1=1;
an=0;
bn=0;
T=2*pi;
a0=pi/2;

for n=1:8
    
    an=an+((1-((-1)^n))/((n^2)*pi))*cos((2*n*pi*t)/T);
    bn=bn+(1/n)*sin((2*n*pi*t)/T);
%     ft=a0+an+bn;
%     plot(t,ft)
end

% an=((1-((-1)^n))/((n^2)*pi))*cos(n*t);
% bn=(1/n)*sin(n*t);
   
ft=(a0/2)+an+bn;
plot(t,ft)

hold off
end


% f=0;
% f1=0;
% 
% 
% for n=1:1
%     f=f+(n*2)
%     f1=f1+(n*3)
% end
% ft=f+f1














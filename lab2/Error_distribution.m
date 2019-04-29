clear
clc

xm=4;        % Sets the x-direction range in the field
ym=4;        % Sets the y-direction range in the field
n=100;
x=linspace(-xm,xm,n);         % Divide the X-axis into 100 equal parts
y=linspace(-ym,ym,n);         % Divide the X-axis into 100 equal parts
[X0,Y0]=meshgrid(x,y);        % Forms the coordinates of points in the field

V2=Integral();

V1=Infinitesimal(100);
figure(1)                 
mesh(X0,Y0,abs(V2-V1));
title({'The error distribution (n=100)','-integration','11711913 MengLingxiao'},'fontsize',12) ;% title the figure
xlabel('X axis(unit:m)','fontsize',12);                    %label the x axis
ylabel('Y axis(unit:m)','fontsize',12);  %label the y axis

V1=Infinitesimal(50);
figure(2)
mesh(X0,Y0,abs(V2-V1));
title({'The error distribution (n=50)','-integration','11711913 MengLingxiao'},'fontsize',12) ;% title the figure
xlabel('X axis(unit:m)','fontsize',12);                    %label the x axis
ylabel('Y axis(unit:m)','fontsize',12);  %label the y axis

V1=Infinitesimal(20);
figure(3)
mesh(X0,Y0,abs(V2-V1));
title({'The error distribution (n=20)','-integration','11711913 MengLingxiao'},'fontsize',12) ;% title the figure
xlabel('X axis(unit:m)','fontsize',12);                    %label the x axis
ylabel('Y axis(unit:m)','fontsize',12);  %label the y axis

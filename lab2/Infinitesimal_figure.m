clear
clc
m=50; %divide the line charge into 20 segment
[V,X0,Y0]=Infinitesimal(m); 
%% 1 Plot the potential distribution
figure(1)
mesh(X0,Y0,V);
grid on
hold on;
title({'the plot of electric potential distribution of a line charge in the vacuum','-infinitesimal','11711913 MengLingxiao'},'fontsize',12) ;%title the figure
xlabel('X axis(unit:m)','fontsize',12);                    %label the x axis
ylabel('Y axis(unit:m)','fontsize',12);                    %label the y axis
%% 2 Plot equipotential lines 
Vmin=5;
Vmax=50;
Veq=linspace(Vmin,Vmax,15);
figure(2)                                     %create figure(2)
contour(X0,Y0,V,Veq);                 % plot 10 equipotential lines
grid on                                        % form a grid
hold on                                       % hold the plot
title({'Isopotential Line of Line charge Electric Field in vacuum','-infinitesimal','11711913 MengLingxiao'},'fontsize',12) ;%title the figure
xlabel('X axis(unit:m)','fontsize',12);                    %label the x axis
ylabel('Y axis(unit:m)','fontsize',12);                    %label the y axis

%% 3 Plot distribution of electric field lines(represented by continuous lines)
[Ex,Ey]=gradient(-V);   % Calculation of two components of Electric Field intensity at    
theta=0:20:360;
theta=theta/180*pi;

xs=cos(theta);          % generate the x coordinate for the start of the field line
ys=0.2*sin(theta);      % generate the y coordinate for the start of the field line
figure(3)
streamline(X0,Y0,Ex,Ey,xs,ys)
grid on
hold on
contour(X0,Y0,V,Veq);
title({'Isopotential Line and Power Line of Line charge Electric Field in vacuum (expressed by smooth continuous Curves)','-infinitesimal','11711913 MengLingxiao'},'fontsize',12) ;%title the figure
xlabel('X axis(unit: m)', 'fontsize', 12);                    % label the x axis
ylabel('Y axis (unit: m)', 'fontsize', 12);   

function [V] = Integral()
p=1e-9;      %unit：C/m
k=9e9;       %electrostatic constant unit：F/m
xm=4;        % Sets the x-direction range in the field
ym=4;        % Sets the y-direction range in the field
n=100;
x=linspace(-xm,xm,n);         % Divide the X-axis into 100 equal parts
y=linspace(-ym,ym,n);         % Divide the X-axis into 100 equal parts
[X0,Y0]=meshgrid(x,y);        % Forms the coordinates of points in the field
s=1-X0+sqrt((1-X0).^2+Y0.^2);
t=-1-X0+sqrt((1+X0).^2+Y0.^2);%Calculation of electric potential
V=k*p*log(s./t);
end

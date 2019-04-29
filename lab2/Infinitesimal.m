function [V,X0,Y0] = Infinitesimal(m)
p=1e-9;%unit:C/m
k=9e9; %electrostatic constant unit:F/m

xm=4;        % Sets the x-direction range in the field
ym=4;        % Sets the y-direction range in the field
n=100;
x=linspace(-xm,xm,n);         % Divide the X-axis into 100 equal parts
y=linspace(-ym,ym,n);         % Divide the X-axis into 100 equal parts
[X0,Y0]=meshgrid(x,y);        % Forms the coordinates of points in the field

a=-1;
b=1;
d=linspace(a,b,m+1);
%%The above three statements determine the coordinates of m point charges

L=(b-a)/m;
Q=p*L;
%%Calculate the charge of each point charge

V=zeros(n,n);
for i=1:m
    R=sqrt((X0-d(:,i)).^2+Y0.^2);
    Vc=k*Q./R;
    V=V+Vc;
end
 %%%In the for statement, the total potential of m charges is calculated
end


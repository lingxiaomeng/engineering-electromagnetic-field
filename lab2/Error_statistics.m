clc
clear
err=zeros(1,20);
for n=1:1:100  %Calculate the error of different segements
    V2=Integral();
    V1=Infinitesimal(n);
    error=abs(V2-V1);
    err(n)=sum(sum(error));
end
err=err/100/100;

n=1:1:100;
figure(1)
plot(n,err)
title({'The relationship between error and number of segments','-integration','11711913 MengLingxiao'},'fontsize',20) ;%title the figure
ylabel('Average Error','fontsize',20);  %label the y axis

cftool(n,err) %curve fitting

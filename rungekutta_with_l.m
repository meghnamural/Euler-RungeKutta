%%%Problem 50%%%

%%% Runge-Kutta Method With Lambda%%%
%   Input: f:dy/dx=f(x,y)
%       l=lambda [-1,-5,-10]
%       h: Step Size [.5 .25 .125]
%       x0:0
%       y(0)=0
%       b:10
%       nodes=[0 2 ... 10]
%Input function

l=-1
f=@(x,y) l*y+(1-l)*cos(x)-(1+l)*sin(x);
g=@(x) sin(x)+cos(x);
x0=0;
x=x0;
y=1;
b=10;
h=0.5
n=(b-x0)/h;
rk_lam(x0,b,f,h,y,x,l,n,g);
h=0.1
l=-10
n=(b-x0)/h;
f=@(x,y) l*y+(1-l)*cos(x)-(1+l)*sin(x);
rk_lam(x0,b,f,h,y,x,l,n,g);
h=0.01
l=-50
n=(b-x0)/h;
f=@(x,y) l*y+(1-l)*cos(x)-(1+l)*sin(x);
rk_lam(x0,b,f,h,y,x,l,n,g);

%Function to calculate using Runge-Kutta Method
function rk_lam(x0,b,f,h,y,x,l,n,g)


T=[];
for i=1:n
    v1=f(x,y);
    v2=f(x+(h/2),y+(v1*h/2));
    v3=f(x+(h/2),y+(v2*h/2));
    v4=f(x+h,y+(h*v3));
    y=y+h*(v1+(2*v2)+(2*v3)+v4)/6;
    x=x0+i*h;
    
    p=g(x)-y;
    if (rem(x,2)==0)
        T=[T;x y g p];
        
    end  
    
        
end    
T
end
 

    
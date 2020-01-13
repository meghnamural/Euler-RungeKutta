function rungekutta(x0,b,f,h,y,x,n,g)


T=[];
for i=1:n
    v1=f(x,y);
    v2=f(x+(h/2),y+(v1*h/2));
    v3=f(x+(h/2),y+(v2*h/2));
    v4=f(x+h,y+(h*v3));
    y=y+h*(v1+(2*v2)+(2*v3)+v4)/6;
    x=x0+i*h;
    p=g(x)-y;
    
    T=[T;x y p];
        
end 
T

 

    
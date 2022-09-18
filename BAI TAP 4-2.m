syms l3 l4 l5 l6 t1 t2 t4 pi 
R1=[cos(t1) -sin(t1) 0 0;sin(t1) cos(t1) 0 0; 0 0 1 0 ; 0 0 0 1];
T1=[1 0 0 0 ;0 1 0 0 ; 0 0 1 l3; 0 0 0 1];
R2=[cos(t2) 0 sin(t2) 0 ; 0 1 0 0; -sin(t2) 0 cos(t2) 0; 0 0 0 1];
T2=[1 0 0 l4+l5 ;0 1 0 0 ; 0 0 1 0; 0 0 0 1];
R3=[cos(t4) 0 sin(t4) 0 ; 0 1 0 0; -sin(t4) 0 cos(t4) 0; 0 0 0 1];
T3=[1 0 0 0 ;0 1 0 0 ; 0 0 1 l6; 0 0 0 1];
P=[0;0;0;1];
disp(simplify(R1*T1*R2*T2*R2*T3*P));
'''VE DO THI '''

l3=10 ; l4 =20 ; l5=10 ; l6=10 ;
for t1=0:0.1:pi/2
    for t2=0:0.1:pi/2
        Px=cos(t1)*cos(t2)*(l4 + l5 + 2*l6*sin(t2));
        Py=cos(t2)*sin(t1)*(l4 + l5 + 2*l6*sin(t2));
        Pz=l3 + l6 - 2*l6*sin(t2)^2 - l4*sin(t2) - l5*sin(t2);
        plot3(Px,Py,Pz,'*');
        hold on 
    end
end 

    
syms t1 t2 t3 l1 l2 
R2=[1 0 0 0;0 cos(t2) -sin(t2) 0;0 sin(t2) cos(t2) 0;0 0 0 1];
R1=[cos(t1) 0 sin(t1) 0;0 1 0 0;-sin(t1) 0 cos(t1) 0; 0 0 0 1];
R3=[cos(t3) 0 sin(t3) 0;0 1 0 0;-sin(t3) 0 cos(t3) 0;0 0 0 1];
T1=[1 0 0 0;0 1 0 0;0 0 1 l1;0 0 0 1];
T2=[1 0 0 0;0 1 0 0;0 0 1 l2;0 0 0 1];
P4=[0;0;0;1];
disp(simplify(R2*R1*T1*R3*T2*P4));

'''ve do thi '''
syms t1 t2 t3 pi 
l1=10;l2=15;
for t1=0:0.1:pi/2
    for t2=0:0.1:pi/2
        for t3=0:0.1:pi/2
        Px=l2*sin(t1 + t3) + l1*sin(t1);
        Py=-sin(t2)*(l2*cos(t1 + t3) + l1*cos(t1));
        Pz= cos(t2)*(l2*cos(t1 + t3) + l1*cos(t1));
        plot3(Px,Py,Pz,'*')
        hold on
        end 
    end 
end 

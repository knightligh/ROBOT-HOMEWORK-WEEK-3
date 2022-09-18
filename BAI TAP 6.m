syms l1 l2 l3 l4 l5 l6 t1 t2 t3 t4
T1=[1 0 0 0; 0 1 0 0;0 0 1 l1;0 0 0 1];
R1=[cos(t1) -sin(t1) 0 0;sin(t1) cos(t1) 0 0;0 0 1 0;0 0 0 1];
T2=[1 0 0 0; 0 1 0 -l2;0 0 1 l3;0 0 0 1];
R2=[1 0 0 0;0 cos(t2) -sin(t2) 0;0 sin(t2) cos(t2) 0;0 0 0 1];
T3=[1 0 0 0; 0 1 0 l4;0 0 1 0;0 0 0 1];
R3=[1 0 0 0;0 cos(t3) -sin(t3) 0;0 sin(t3) cos(t3) 0;0 0 0 1];
T4=[1 0 0 0; 0 1 0 l5;0 0 1 0;0 0 0 1];
R5=[1 0 0 0;0 cos(t4) -sin(t4) 0;0 sin(t4) cos(t4) 0;0 0 0 1];
T5=[1 0 0 0; 0 1 0 l6;0 0 1 0;0 0 0 1];
P=[0;0;0;1];
disp(simplify(T1*R1*T2*R2*T3*R3*T4*R5*T5*P));
'''VE DO THI '''

l1 = 20;
l2 = 2;
l3 = 10;
l4 = 30;
l5 = 20;
l6 = 10;
for t1=0:0.1:pi/2
    for t2=0:0.1:pi/2
        for t3=0:0.1:pi/2
            for t4=0:0.1:pi/2
            Px =	-sin(t1)*(l5*cos(t2 + t3) - l2 + l4*cos(t2) + l6*cos(t2 + t3 + t4));
            Py = 	cos(t1)*(l5*cos(t2 + t3) - l2 + l4*cos(t2) + l6*cos(t2 + t3 + t4));
            Pz = 	l1 + l3 + l5*sin(t2 + t3) + l4*sin(t2) + l6*sin(t2 + t3 + t4);
            plot3(Px,Py,Pz,'*');
            hold on 
            end
        end
    end
end
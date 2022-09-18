'''BAI TAP 4-1 '''
syms l1 l2 l3 l4 l5 t1 t2 pi
T1 = [1 0 0 0; 0 1 0 0; 0 0 1 l1; 0 0 0 1];
R1 = [cos(-t1) -sin(-t1) 0 0; sin(-t1) cos(-t1) 0 0; 0 0 1 0; 0 0 0 1];
T2 = [1 0 0 l2; 0 1 0 0; 0 0 1 0; 0 0 0 1];
R2 = [1 0 0 0; 0 0 -1 0; 0 1 0 0;0 0 0 1];
T3 = [1 0 0 0; 0 1 0 0; 0 0 1 -l3; 0 0 0 1];
R3 = [cos(-t2) -sin(-t2) 0 0; sin(-t2) cos(-t2) 0 0; 0 0 1 0; 0 0 0 1];
T4 = [1 0 0 l4; 0 1 0 0; 0 0 1 0; 0 0 0 1];
R4 = [1 0 0 0; 0 0 1 0; 0 -1 0 0;0 0 0 1];
T5 = [1 0 0 0; 0 1 0 0; 0 0 1 l5; 0 0 0 1];
P = [0; 0; 0; 1];
disp(simplify(T1*R1*T2*R2*T3*R3*T4*R4*T5*P));

''' VE DO THI '''
l1=10 ; l2=10;l3=5;l4=20; l5=15;
for t1=0:0.1:2*pi
    for t2=0:0.1:pi
       Px=l2*cos(t1) + l3*sin(t1) + l4*cos(t1)*cos(t2) + l5*cos(t1)*sin(t2);
       Py=l3*cos(t1) - l2*sin(t1) - l4*cos(t2)*sin(t1) - l5*sin(t1)*sin(t2);
       Pz=l1 + l5*cos(t2) - l4*sin(t2);
       plot3(Px,Py,Pz,'*');
       hold on 
    end 
end 


syms l1 l2 l3 l4 l5 l6 l7 l8 t1 t2 t3
R1 = [cos(t1) -sin(t1) 0 0; sin(t1) cos(t1) 0 0; 0 0 1 0; 0 0 0 1];
T1 = [1 0 0 0;0 1 0 0;0 0 1 l1;0 0 0 1];
T2 = [1 0 0 l2;0 1 0 0;0 0 1 0;0 0 0 1];
R2 = [cos(t2) -sin(t2) 0 0; sin(t2) cos(t2) 0 0; 0 0 1 0; 0 0 0 1];
T3 = [1 0 0 0;0 1 0 0;0 0 1 l3;0 0 0 1];
T4 = [1 0 0 l4;0 1 0 0;0 0 1 0;0 0 0 1];
R3 = [cos(t3) -sin(t3) 0 0; sin(t3) cos(t3) 0 0; 0 0 1 0; 0 0 0 1];
T8 = [1 0 0 0;0 1 0 0;0 0 1 l8;0 0 0 1];
T5 = [1 0 0 l5;0 1 0 0;0 0 1 0;0 0 0 1];
T6 = [1 0 0 0;0 1 0 0;0 0 1 l6;0 0 0 1];
T7 = [1 0 0 l7;0 1 0 0;0 0 1 0;0 0 0 1];
P = [0;0;0;1];
disp(simplify(R1*T1*T2*R2*T3*T4*R3*T8*T5*T6*T7*P));
'''VE DO THI '''
l1 = 30; l2 = 20; l3 = 10; l4 = 10; l5 = 5; l6 = 5; l7 = 10; l8 = 8;
for t1=0:0.1:pi/2
    for t2=0:0.1:pi/2
        for t3=0:0.1:pi/2
            x = 	l4*cos(t1 + t2) + l2*cos(t1) + l5*cos(t1 + t2 + t3) + l7*cos(t1 + t2 + t3);
            y = l4*sin(t1 + t2) + l2*sin(t1) + l5*sin(t1 + t2 + t3) + l7*sin(t1 + t2 + t3);
            z = l1 + l3 + l6 + l8;
            plot3(x,y,z,'*');
            hold on
        end
    end 
end 
        

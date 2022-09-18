''' BAI TAP 4-3 '''
syms l1 l2 l3 l4 t1 t2 t3 pi 
R1= [cos(t1) -sin(t1) 0 0 ; sin(t1) cos(t1) 0 0 ;0 0 1 0 ; 0 0 0 1];
T1= [1 0 0 0; 0 1 0 l1 ; 0 0 1 l2; 0 0 0 1];
R2= [cos(t2) 0 sin(t2) 0 ; 0 1 0 0 ; -sin(t2) 0 cos(t2) 0; 0 0 0 1];
T2= [1 0 0 0; 0 1 0 l1 ; 0 0 1 l3; 0 0 0 1];
R3= [cos(t3) -sin(t3) 0 0 ; sin(t3) cos(t3) 0 0 ;0 0 1 0 ; 0 0 0 1];
T3= [1 0 0 0; 0 1 0 0 ; 0 0 1 l4; 0 0 0 1];
P=[0;0;0;1];
disp(simplify(R1*T1*R2*T2*R3*T3*P));

'''VE DO THI '''
l1 =5 ; l2 =10 ;l3=10 ; l4=15;
for t1=0:0.1:pi/2
    for t2=0:0.1:pi/2 
        Px=l3*cos(t1)*sin(t2) - 2*l1*sin(t1) + l4*cos(t1)*sin(t2);
        Py=2*l1*cos(t1) + l3*sin(t1)*sin(t2) + l4*sin(t1)*sin(t2);
        Pz= l2 + l3*cos(t2) + l4*cos(t2);
        plot3(Px,Py,Pz,'*');
        hold on
    end 
end 
   
        
    
clc; close all;
%PI variables
proportional_term = 40 
integral_term = .025



sim_data = sim('Project_PI_example_part3.slx');
t = simout.time;
Tsigs = []
iqs = simout.data(:,1);
ids = simout.data(:,2);
idc = simout.data(:,3);
rpm = simout.data(:,4);
wr = simout.data(:,5);
Te = simout.data(:,6);
Vsq = simout.data(:,7);
Vsd = simout.data(:,8);
Vab = simout.data(:,9);
rot_angle = simout.data(:,10);
d = simout.data(:,11);
w = simout.data(:,12);
T1 = simout.data(:,13);
T2 = simout.data(:,14);
T3 = simout.data(:,15);
T4 = simout.data(:,16);
T5 = simout.data(:,17);
T6 = simout.data(:,18);
ias = simout.data(:,19);
ibs = simout.data(:,20);
ics = simout.data(:,21);
figure
for i = 0:5
    ptitle =  sprintf('T%d',i);
    subplot(6,1,i+1); plot(t,simout.data(:,13+i),'-b'); xlabel("Time [s]"); title(ptitle)
end  
saveas(gcf,"T1toT6_3.png")

figure
ptitle =  sprintf('Current i_{qs},i_{ds}');
subplot(2,1,1); plot(t,iqs,'-b'); ylabel('i_{qs}'); xlabel("Time [s]"); title(ptitle)
subplot(2,1,2); plot(t,ids,'-r'); ylabel('i_{ds}');  
saveas(gcf,"Project_iqs_id5s_3.png")
ptitle =  sprintf('Current i_{as},i_{bs}, i_{cs}');
figure
subplot(3,1,1); plot(t,ias,'-b'); ylabel('i_{as}'); xlabel("Time [s]"); title(ptitle)
subplot(3,1,2); plot(t,ibs,'-r'); ylabel('i_{bs}'); xlabel("Time [s]"); 
subplot(3,1,3); plot(t,ics,'-g'); ylabel('i_{cs}'); xlabel("Time [s]"); 
saveas(gcf,"Project_iasbscs_3.png")

figure
plot(t,Te); xlabel("Time [s]"); ylabel("Torque [Nm]"); title("Motor Torque")
saveas(gcf,"Project_Te3.png")
figure
plot(t,rpm); xlabel("Time [s]"); ylabel("RPM"); title("Motor Speed")
saveas(gcf,"Project_rpm3.png")

figure
plot(t,Vab); xlabel("Time [s]"); ylabel("Voltage");  title("Voltage ab")
saveas(gcf,"Project_vab13.png")
figure
plot(t,Vsq); xlabel("Time [s]"); ylabel("Voltage");  title("Voltage sq")
saveas(gcf,"Project_vsq13.png")
figure 
ptitle =  sprintf('Duty Ratio and Current i_{dc}');
subplot(2,1,1); plot(t,d,'-b'); ylabel('d duty ratio'); xlabel("Time [s]"); title(ptitle)
subplot(2,1,2); plot(t,idc,'-r'); ylabel('i_{dc}');  
saveas(gcf,"Project_idc_duty_3.png")

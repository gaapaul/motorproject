clc; close all;
proportional_term = 50 
integral_term = .025
sim_data = sim('Project_sinePWM_with_PI_controller.slx');
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
m = simout.data(:,12);
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
    subplot(6,1,i+1); plot(t,simout.data(:,13+i),'-b'); xlabel("Time [s]");  xlim([.85 .95]); title(ptitle)
end  
saveas(gcf,"T1toT6_sinpwm.png")

figure
ptitle =  sprintf('Current i_{qs},i_{ds}');
subplot(2,1,1); plot(t,iqs,'-b'); ylabel('i_{qs}'); xlabel("Time [s]"); title(ptitle)
subplot(2,1,2); plot(t,ids,'-r'); ylabel('i_{ds}');  
saveas(gcf,"Project_iqs_ids_sinpwm.png")
ptitle =  sprintf('Current i_{as},i_{bs}, i_{cs}');
figure
subplot(3,1,1); plot(t,ias,'-b'); ylabel('i_{as}'); xlabel("Time [s]"); title(ptitle)
subplot(3,1,2); plot(t,ibs,'-r'); ylabel('i_{bs}'); xlabel("Time [s]"); 
subplot(3,1,3); plot(t,ics,'-g'); ylabel('i_{cs}'); xlabel("Time [s]"); 
saveas(gcf,"Project_iasbscs_sinpwm.png")

figure
plot(t,Te); xlabel("Time [s]"); ylabel("Torque [Nm]"); title("Motor Torque")
saveas(gcf,"Project_Tesinpwm.png")
figure
plot(t,rpm); xlabel("Time [s]"); ylabel("RPM"); title("Motor Speed")
saveas(gcf,"Project_rpmsinpwm.png")

figure
plot(t,Vab); xlabel("Time [s]"); ylabel("Voltage"); xlim([.85 .95]); title("Voltage ab")
saveas(gcf,"Project_vabsinpwm.png")
figure
plot(t,Vab); xlabel("Time [s]"); ylabel("Voltage"); xlim([.85 .95]); title("Voltage ab")
saveas(gcf,"Project_vabsinpwm.png")


figure
ptitle =  sprintf('Current d,m');
subplot(2,1,1); plot(t,m,'-b'); ylabel('m'); xlabel("Time [s]"); title(ptitle)
subplot(2,1,2); plot(t,d,'-r'); ylabel('d');  
saveas(gcf,"Project_d_m_sinpwm.png")

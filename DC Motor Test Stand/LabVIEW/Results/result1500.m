close all
clear all
clc

% Simulation Result for desired position=1500 rad
fmu_T = xlsread('FMU_p.xlsx','A:A');
fmu_p = xlsread('FMU_p.xlsx','B:B');
fmu_v = xlsread('FMU_v.xlsx','B:B');

% Real Time
rt_T = xlsread('RT_P.xlsx','A:A');
rt_p = xlsread('RT_P.xlsx','B:B');
rt_v = xlsread('RT_v.xlsx','B:B');


plot(rt_T, rt_p,'b')
hold on
plot(fmu_T, fmu_p,'r')
hold off
title('Position Response under a step of 1500[rad]', 'FontSize',12)
legend('Real Time','Simulation with FMU')
xlabel('Time [s]','FontSize',12)
ylabel('Position [rad]','FontSize',12)

figure
plot(rt_T, rt_v,'b')
hold on
plot(fmu_T, fmu_v,'r')
hold off
title('Velocity Response under a step of 1500[rad]','FontSize',12)
legend('Real Time','Simulation with FMU')
xlabel('Time [s]','FontSize',12)
ylabel('Angular Velocity [rad/s]','FontSize',12)
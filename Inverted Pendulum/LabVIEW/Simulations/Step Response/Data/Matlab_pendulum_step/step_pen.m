close all
clear all
clc

angle_rt = xlsread('rt_angle.xlsx', 'B:B');
t_rt_a = linspace(0,8.191,8192);
angle_sim = xlsread('sim_angle.xlsx', 'B:B');
t_sim_a = xlsread('sim_angle.xlsx', 'A:A');

figure
plot(t_rt_a, angle_rt,'r--', t_sim_a, angle_sim, 'b')
title('Simulation vs. Real Time Pendulum Angle Response under a Step Input of Position', 'FontSize',14)
xlabel('Time [s]','FontSize',14)
ylabel('Angle [rad]', 'FontSize',14)
legend('Real Time', 'Simulation')
xlim([0,8])


pos_rt = xlsread('rt_position.xlsx', 'B:B');
pos_rt = pos_rt ./ 100000 .* 0.05; %conversion from ticks to meters
t_rt_p = linspace(0,0.828,829);
pos_sim = xlsread('sim_pos.xlsx', 'B:B');
t_sim_p = xlsread('sim_pos.xlsx', 'A:A');

figure
plot(t_rt_p, pos_rt, 'r--', t_sim_p, pos_sim, 'b')
title('Step Response of Position in Simulation and Real Time', 'FontSize', 14)
xlabel('Time [s]', 'FontSize',14)
ylabel('Position [m]', 'FontSize',14)
legend('Real Time', 'Simulation')
xlim([0,1])
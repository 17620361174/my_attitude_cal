%% 实现PX4中互补滤波算法
% 2019.12.6
% ljt


clc;
clear;


mag_data=csvread('2019.5.10-17_00_vehicle_magnetometer_0.csv',1,0);
mag.timestamp=mag_data(:,1);
mag.x=mag_data(:,2);
mag.y=mag_data(:,3);
mag.z=mag_data(:,4);

sensor_combined_data=csvread('2019.5.10-17_00_sensor_combined_0.csv',1,0);
sensor_combined.timestamp=sensor_combined_data(:,1);
sensor_combined.gyrox=sensor_combined_data(:,2);
sensor_combined.gyroy=sensor_combined_data(:,3);
sensor_combined.gyroz=sensor_combined_data(:,4);
sensor_combined.dt=sensor_combined_data(:,5);
sensor_combined.gyrox=sensor_combined_data(:,7);
sensor_combined.gyroy=sensor_combined_data(:,8);
sensor_combined.gyroz=sensor_combined_data(:,9);
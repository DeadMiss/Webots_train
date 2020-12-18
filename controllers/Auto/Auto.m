% MATLAB controller for Webots
% File:          Auto.m
% Date:
% Description:
% Author:
% Modifications:

% uncomment the next two lines if you want to use
% MATLAB's desktop to interact with the controller:
%desktop;
%keyboard;

TIME_STEP = 64;

% get and enable devices, e.g.:



lp_motor = wb_robot_get_device('lp_motor');
wb_motor_set_position(lp_motor, inf);
wb_motor_set_velocity(lp_motor, 1);

pp_motor = wb_robot_get_device('pp_motor');
wb_motor_set_position(pp_motor, inf);
wb_motor_set_velocity(pp_motor, -1);

lz_motor = wb_robot_get_device('lz_motor');
wb_motor_set_position(lz_motor, inf);
wb_motor_set_velocity(lz_motor, -1);

pz_motor = wb_robot_get_device('pz_motor');
wb_motor_set_position(pz_motor, inf);
wb_motor_set_velocity(pz_motor, -1);

DistanceSensor = wb_robot_get_device('AutoSensor');
wb_distance_sensor_enable(DistanceSensor, TIME_STEP);
dst = wb_distance_sensor_get_value(DistanceSensor)

if dst <= 1
wb_motor_set_velocity(lp_motor, 0);
wb_motor_set_velocity(pp_motor, 0);
wb_motor_set_velocity(lz_motor, 0);
wb_motor_set_velocity(pz_motor, 0);
end



% main loop:
% perform simulation steps of TIME_STEP milliseconds
% and leave the loop when Webots signals the termination
%
while wb_robot_step(TIME_STEP) ~= -1

  % read the sensors, e.g.:
  %  rgb = wb_camera_get_image(camera);

  % Process here sensor data, images, etc.

  % send actuator commands, e.g.:
  %  wb_motor_set_postion(motor, 10.0);

  % if your code plots some graphics, it needs to flushed like this:
  drawnow;

end

% cleanup code goes here: write data to files, etc.

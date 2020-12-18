% MATLAB controller for Webots
% File:          RotationPad.m
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
%  camera = wb_robot_get_device('camera');
%  wb_camera_enable(camera, TIME_STEP);

horny_motor = wb_robot_get_device('horny_motor');
wb_motor_set_position(horny_motor, inf);
wb_motor_set_velocity(horny_motor, -2);

spodny_motor = wb_robot_get_device('spodny_motor');
wb_motor_set_position(spodny_motor, inf);
wb_motor_set_velocity(spodny_motor, -2);

lavy_motor = wb_robot_get_device('lavy_motor');
wb_motor_set_position(lavy_motor, inf);
wb_motor_set_velocity(lavy_motor, -2);

pravy_motor = wb_robot_get_device('pravy_motor');
wb_motor_set_position(pravy_motor, inf);
wb_motor_set_velocity(pravy_motor, -2);


%Sensor = wb_robot_get_device('LightSensor');
%wb_light_sensor_enable(Sensor, 64);
%light = wb_light_sensor_get_value(Sensor);

%if light <= 5;
 % wb_motor_set_velocity(spodny_motor, 1);
  %wb_motor_set_velocity(horny_motor, 1);
  %wb_motor_set_velocity(lavy_motor, 1);
  %wb_motor_set_velocity(pravy_motor, 1);
%end


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

clc;
clear;
close all;

%% Parameters
Vs_amp = 5;              % Peak amplitude of source
VD = 0.7;                % Diode drop
t = linspace(0, 2*pi, 2000);   % One full cycle

%% Input waveform
vs = Vs_amp * sin(t);

%% Output waveform for reversed diode half-wave rectifier
vo = zeros(size(vs));
mask = vs < -VD;         % diode ON when vs < -0.7 V
vo(mask) = vs(mask) + VD;

%% Transfer characteristic
vs_sweep = linspace(-5, 5, 2000);
vo_transfer = zeros(size(vs_sweep));
mask_transfer = vs_sweep < -VD;
vo_transfer(mask_transfer) = vs_sweep(mask_transfer) + VD;

%% Exact transition points
theta1 = pi + asin(VD / Vs_amp);   % first turn-on point
theta2 = 2*pi - asin(VD / Vs_amp); % turn-off point

%% Plot transfer characteristic
figure;
plot(vs_sweep, vo_transfer, 'LineWidth', 2);
grid on;
xlabel('v_s (V)');
ylabel('v_o (V)');
title('Transfer Characteristic v_o vs v_s');
hold on;
plot(-VD, 0, 'ro', 'MarkerSize', 8, 'LineWidth', 2);
text(-VD + 0.15, 0.2, '(-0.7, 0)');

%% Plot input and output waveforms
figure;
plot(t, vs, '--', 'LineWidth', 1.5); 
hold on;
plot(t, vo, 'LineWidth', 2);
grid on;
xlabel('Time (rad)');
ylabel('Voltage (V)');
title('Input and Output Waveforms');
legend('v_s', 'v_o', 'Location', 'best');

% Mark turn-on and turn-off points
plot(theta1, 0, 'ro', 'MarkerSize', 8, 'LineWidth', 2);
plot(theta2, 0, 'ro', 'MarkerSize', 8, 'LineWidth', 2);
text(theta1 + 0.08, 0.25, sprintf('t = %.2f', theta1));
text(theta2 - 0.55, 0.25, sprintf('t = %.2f', theta2));

yline(0, ':');
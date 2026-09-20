clc;
clear;
close all;

vi = linspace(0, 10, 1000);
vo = zeros(size(vi));
iD = zeros(size(vi));

for k = 1:length(vi)
    if vi(k) <= 4.4
        vo(k) = vi(k) / 2;
        iD(k) = 0;
    else
        vo(k) = vi(k) / 3 + 0.7333;
        iD(k) = (vi(k) - 4.4) / 30000;
    end
end

figure;

subplot(2,1,1);
plot(vi, vo, 'LineWidth', 2);
grid on;
xlabel('v_i (V)');
ylabel('v_o (V)');
title('Output Voltage v_o vs Input Voltage v_i');

subplot(2,1,2);
plot(vi, iD * 1e6, 'LineWidth', 2);
grid on;
xlabel('v_i (V)');
ylabel('i_D (\muA)');
title('Diode Current i_D vs Input Voltage v_i');

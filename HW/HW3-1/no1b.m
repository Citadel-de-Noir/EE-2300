%Component values 
R1 = 1e3;
R2 = 1e3;
C1 = 1e-6;
C2 = 1e-6;

s = tf('s');

H = (s*C1*R1)/(1 + s*(C1*R1 + C2*R2 + C2*R1) + s^2*R1*R2*C1*C2);

f = logspace(0, 6, 2000);
w = 2*pi*f;

[mag, phase] = bode(H, w);
mag = squeeze(mag);
phase = squeeze(phase);


figure;
subplot(2,1,1);
semilogx(f, 20*log10(mag))l
grid on;
xlabel('Frequency (Hz)');
ylabel('Magnitude (dB)');
title('Magnitude')

subplot(2,1,2);
semilogx(f, phase);
grid on;
ylabel('Phase (degrees)');
xlabel('Frequency (Hz)');
title('Phase');

%Component values 
R1 = 1e3;
R2 = 1e3;
C1 = 1e-6;
C2 = 1e-6;

f = logspace(0, 6, 2000);
w = 2*pi*f;
s = 1j*w;

H = (s*C1*R1) ./ (1 + s.*(C1*R1 + C2*R2 + C2*R1) + (s.^2).*(R1*R2*C1*C2));




figure;
subplot(2,1,1);
semilogx(f, 20*log10(abs(H)));
grid on;
xlabel('Frequency (Hz)');
ylabel('Magnitude (dB)');
title('Magnitude')

subplot(2,1,2);
semilogx(f, angle(H)*180/pi);
grid on;
ylabel('Phase (degrees)');
xlabel('Frequency (Hz)');
title('Phase');

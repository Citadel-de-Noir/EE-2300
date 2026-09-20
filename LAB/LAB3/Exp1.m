clear
clc

E1 = readtable("D:\ISU Files\ISU Files\SPRING 2026\EE 2300\LAB\LAB3\Exp1.csv");

magE1_2 = E1.Mag_dB;
phaseE1_2 = E1.Phase_degrees;

R = 0.979e3;
C = 0.15e-6;

w = E1.Frequency_Hz*2*pi;
T = R*C;

magE1_1 = 20*log10((1./T)./sqrt((1/T).^2 + w.^2));
phaseE1_1 = atan(w*T) * (180/pi);

figure(1)

subplot(2,1,1)
semilogx(E1.Frequency_Hz, magE1_2, '-o', 'LineWidth', 2);
hold on;
semilogx(E1.Frequency_Hz, magE1_1, '-o', 'LineWidth', 2);
xlabel("Frequency(Hz)");
ylabel("Magnitude(dB)");
grid on;
set(gca, 'fontsize', 12);

subplot(2,1,2)
semilogx(E1.Frequency_Hz, phaseE1_2, '-o', 'LineWidth', 2);
hold on;
semilogx(E1.Frequency_Hz, phaseE1_1, '-o', 'LineWidth', 2);
xlabel("Frequency(Hz)");
ylabel("Phase(Degrees)");
grid on;
set(gca, 'fontsize', 12);


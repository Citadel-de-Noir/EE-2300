clear
clc

E2 = readtable("D:\ISU Files\ISU Files\SPRING 2026\EE 2300\LAB\LAB3\Exp2.csv");

magE2_2 = E2.Mag_dB;
phaseE2_2 = -E2.Phase_degrees;

R = 1.47e3;
C = 0.14e-6;

w = E2.Frequency_Hz*2*pi;
T = R*C;

magE2_1 = 20*log10(w./sqrt((1/T).^2 + w.^2));
phaseE2_1 = atan(1./(w*T)) * (180/pi);

figure(1)

subplot(2,1,1)
semilogx(E2.Frequency_Hz, magE2_2, '-o', 'LineWidth', 2);
hold on;
semilogx(E2.Frequency_Hz, magE2_1, '-o', 'LineWidth', 2);
xlabel("Frequency(Hz)");
ylabel("Magnitude(dB)");
grid on;
set(gca, 'fontsize', 12);

subplot(2,1,2)
semilogx(E2.Frequency_Hz, phaseE2_2, '-o', 'LineWidth', 2);
hold on;
semilogx(E2.Frequency_Hz, phaseE2_1, '-o', 'LineWidth', 2);
xlabel("Frequency(Hz)");
ylabel("Phase(Degrees)");
grid on;
set(gca, 'fontsize', 12);


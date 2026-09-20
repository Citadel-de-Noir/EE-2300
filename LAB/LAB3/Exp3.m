clear
clc

E3 = readtable("D:\ISU Files\ISU Files\SPRING 2026\EE 2300\LAB\LAB3\Exp3_Loop1.csv");

R1 = 0.979e3;
R2 = 9.98e3;
C = 9.96e-9;

w_c = 1./(R2*C);
w = E3.Frequency_Hz*2*pi;

magE3_1 = E3.Magnitude_dB;
magE3_2 = 20*log10(((R2./R1) * (w_c./(sqrt(w_c.^2 + w.^2)))));

phaseE3_1 = E3.Phase_Rad * (180/pi);
phaseE3_2 = (pi - atan(w./w_c)) * (180/pi);

figure(1)

subplot(2,1,1)
semilogx(E3.Frequency_Hz, magE3_1, '-o', 'LineWidth', 2);
hold on;
semilogx(E3.Frequency_Hz, magE3_2, '-o', 'LineWidth', 2);
xlabel("Frequency(Hz)");
ylabel("Magnitude(dB)");
grid on;
set(gca, 'fontsize', 12);

subplot(2,1,2)
semilogx(E3.Frequency_Hz, phaseE3_1, '-o', 'LineWidth', 2);
hold on;
semilogx(E3.Frequency_Hz, phaseE3_2, '-o', 'LineWidth', 2);
xlabel("Frequency(Hz)");
ylabel("Phase(Degrees)");
grid on;
set(gca, 'fontsize', 12);

clear
clc

E1 = readtable("D:\ISU Files\ISU Files\SPRING 2026\EE 2300\LAB\LAB4\Exp1_2ndO_Loop.csv");

magE1_2 = E1.Magnitude_dB;
phaseE1_2 = rad2deg(E1.Phase_Rad);
freq = E1.Frequency_Hz;

R1 = 4.64e3;
R2 = 9.79e3;
C = 10.007e-9;

w_c = 1./(R2*C);
w = 2*pi*freq;

magE1_1 = 20*log10(((R2./R1).^2)*(1./(1+(w./w_c).^2)));
phaseE1_1 = -2*rad2deg(atan(w./w_c));

figure(1)

subplot(2,1,1)
semilogx(freq, magE1_1, 'LineWidth', 2);
hold on;
semilogx(freq, magE1_2, 'LineWidth', 2);
xlabel('Frequency (HZ)');
ylabel('Magnitude (dB)');
grid on;
set(gca, 'fontsize', 12);

subplot(2,1,2)
semilogx(freq, phaseE1_1, 'LineWidth', 2);
hold on;
semilogx(freq, phaseE1_2, 'LineWidth', 2);
xlabel('Frequency (Hz)');
ylabel('Phase (Degrees)');
grid on;
set(gca, 'fontsize', 12);
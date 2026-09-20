clear
clc

E2c = readtable("D:\ISU Files\ISU Files\SPRING 2026\EE 2300\LAB\LAB4\Exp2_2_150_Loop.csv");
E2d = readtable("D:\ISU Files\ISU Files\SPRING 2026\EE 2300\LAB\LAB4\Exp2_2_1.5k_Loop.csv")

magE2c = E2c.Magnitude_dB;
phaseE2c = rad2deg(E2c.Phase_Rad);
freq = E2c.Frequency_Hz;

magE2d = E2d.Magnitude_dB;
phaseE2d = rad2deg(E2d.Phase_Rad);


figure(1)

subplot(2,1,1)
semilogx(freq, magE2c, 'LineWidth', 2);
hold on;
semilogx(freq, magE2d, 'LineWidth', 2);
xlabel('Frequency (HZ)');
ylabel('Magnitude (dB)');
grid on;
set(gca, 'fontsize', 12);

subplot(2,1,2)
semilogx(freq, phaseE2c, 'LineWidth', 2);
hold on;
semilogx(freq, phaseE2d, 'LineWidth', 2);
xlabel('Frequency (Hz)');
ylabel('Phase (Degrees)');
grid on;
set(gca, 'fontsize', 12);
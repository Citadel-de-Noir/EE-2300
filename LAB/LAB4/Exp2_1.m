clear
clc

E2a = readtable("D:\ISU Files\ISU Files\SPRING 2026\EE 2300\LAB\LAB4\Exp2_1_150_Loop.csv");
E2b = readtable("D:\ISU Files\ISU Files\SPRING 2026\EE 2300\LAB\LAB4\Exp2_1_1.5k_Loop.csv")

magE2a = E2a.Magnitude_dB;
phaseE2a = rad2deg(E2a.Phase_Rad);
freq = E2a.Frequency_Hz;

magE2b = E2b.Magnitude_dB;
phaseE2b = rad2deg(E2b.Phase_Rad);


figure(1)

subplot(2,1,1)
semilogx(freq, magE2a, 'LineWidth', 2);
hold on;
semilogx(freq, magE2b, 'LineWidth', 2);
xlabel('Frequency (HZ)');
ylabel('Magnitude (dB)');
grid on;
set(gca, 'fontsize', 12);

subplot(2,1,2)
semilogx(freq, phaseE2a, 'LineWidth', 2);
hold on;
semilogx(freq, phaseE2b, 'LineWidth', 2);
xlabel('Frequency (Hz)');
ylabel('Phase (Degrees)');
grid on;
set(gca, 'fontsize', 12);
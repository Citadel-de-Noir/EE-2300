clear
clc

E2e = readtable("D:\ISU Files\ISU Files\SPRING 2026\EE 2300\LAB\LAB4\Exp2_3_150_Loop.csv");
E2f = readtable("D:\ISU Files\ISU Files\SPRING 2026\EE 2300\LAB\LAB4\Exp2_3_1.5k_Loop.csv")

magE2e = E2e.Magnitude_dB;
phaseE2e = rad2deg(E2e.Phase_Rad);
freqe = E2e.Frequency_Hz;

magE2f = E2f.Magnitude_dB;
phaseE2f = rad2deg(E2f.Phase_Rad);
freqf = E2f.Frequency_Hz;

figure(1)

subplot(2,1,1)
semilogx(freqe, magE2e, 'LineWidth', 2);
hold on;
semilogx(freqf, magE2f, 'LineWidth', 2);
xlabel('Frequency (HZ)');
ylabel('Magnitude (dB)');
grid on;
set(gca, 'fontsize', 12);

subplot(2,1,2)
semilogx(freqe, phaseE2e, 'LineWidth', 2);
hold on;
semilogx(freqf, phaseE2f, 'LineWidth', 2);
xlabel('Frequency (Hz)');
ylabel('Phase (Degrees)');
grid on;
set(gca, 'fontsize', 12);
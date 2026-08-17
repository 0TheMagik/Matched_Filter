fs = 10000;
t = 0:1/fs:0.2;

signal_1 = sin(2 * pi * 100 * t);

signal_2 = sin(2 * pi * 100 * t);

noise_amp = 1.5;
noise = noise_amp * randn(size(t));
return_signal = signal_1 + noise;

h = fliplr(return_signal);
output = conv(signal_2, h, 'same');

figure('Position', [100, 100, 800, 600]);
subplot(3,1,1);
plot(t, return_signal, 'b', 'LineWidth', 2);
title('Return Signal s[n]');
xlabel('Time (s)'); grid on;

subplot(3,1,2);
plot(t, signal_2, 'r', 'LineWidth', 2);
title('Signal 2 s[n]');
xlabel('Time (s)'); grid on;

subplot(3,1,3);
plot(t, output, 'g', 'LineWidth', 2);  % Use t_out here
title('Output y[n]');
xlabel('Time (s)'); grid on;
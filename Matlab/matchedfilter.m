% --- Matched Filter Demonstration ---
clear; clc; close all;

% 1. Parameters & Signal Setup
fs = 1000;                     % Sampling rate (Hz)
t_pulse = 0:1/fs:0.05;         % Pulse duration (50 ms)
fc = 100;                      % Carrier frequency (100 Hz)

% Known reference template s[n]
s = sin(2 * pi * fc * t_pulse); 

% 2. Construct Received Signal with Delay and Noise
t_total = 0:1/fs:1;            % Total duration (1 sec)
r = zeros(size(t_total));
delay_idx = 400;               % Inject pulse at index 400 (~0.4s)
r(delay_idx : delay_idx + length(s) - 1) = s;

% Add zero-mean white Gaussian noise (burying the pulse)
noise_level = 2.5;
r_noisy = r + noise_level * randn(size(r));

% 3. Matched Filter Implementation
h = fliplr(s);                 % Time-reverse the reference template
y = conv(r_noisy, h, 'same');  % Convolve noisy input with matched filter

% 4. Visualization
figure('Position', [100, 100, 800, 600]);

subplot(3,1,1);
plot(t_pulse, s, 'b', 'LineWidth', 1.5);
title('Known Template Signal s[n]');
xlabel('Time (s)'); grid on;

subplot(3,1,2);
plot(t_total, r_noisy, 'Color', [0.4 0.4 0.4]);
title('Received Signal r[n] (Buried in Noise)');
xlabel('Time (s)'); grid on;

subplot(3,1,3);
plot(t_total, abs(y), 'r', 'LineWidth', 1.5);
title('Matched Filter Output y[n] (Peak reveals pulse arrival time)');
xlabel('Time (s)'); grid on;
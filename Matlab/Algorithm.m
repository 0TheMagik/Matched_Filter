%% Parameters
fs = 1000;                      % Sampling frequency (1 kHz)
dt = 1/fs;

% 1. Reference Signal (0.5 s pulse)
t_ref = 0:dt:0.5;
fc_ref = 10;                    % 10 Hz tone
signal_ref = sin(2 * pi * fc_ref * t_ref);

% 2. Clean Return Signal with Delay
t_ret = 0:dt:2;                 % 2-second listening window
signal_ret_clean = zeros(size(t_ret));

delay_time = 0.8;               % Pulse arrival at 0.8 seconds
delay_idx = round(delay_time * fs) + 1;

% Insert reference signal at the delay point
signal_ret_clean(delay_idx : delay_idx + length(signal_ref) - 1) = signal_ref;

% 3. Add Noise
% Method A: Using awgn from Signal Processing Toolbox (specify SNR in dB)
snr_db = -5;                    % Signal buried in noise
signal_ret_noisy = awgn(signal_ret_clean, snr_db, 'measured');

% (Alternative without toolbox using randn):
% noise_power = 0.5;
% signal_ret_noisy = signal_ret_clean + noise_power * randn(size(signal_ret_clean));

% 4. Matched Filter
h = fliplr(signal_ref);
y = conv(signal_ret_noisy, h, 'same');
output = abs(y);

%% Visualization
figure('Position', [100, 100, 800, 700]);

% Reference Signal
subplot(3, 1, 1);
plot(t_ref, signal_ref, 'r', 'LineWidth', 1.5);
title('Reference Signal s_{ref}[n]');
xlabel('Time (s)'); ylabel('Amplitude'); grid on;

% Noisy Return Signal
subplot(3, 1, 2);
plot(t_ret, signal_ret_noisy, 'Color', [0.5 0.5 0.5]);
hold on;
plot(t_ret, signal_ret_clean, 'b--', 'LineWidth', 1.2);
title(sprintf('Noisy Return Signal s_{ret}[n] (SNR = %d dB)', snr_db));
xlabel('Time (s)'); ylabel('Amplitude');
legend('Noisy Received', 'Clean Embedded Pulse', 'Location', 'northeast');
grid on;

% Filter Output
subplot(3, 1, 3);
plot(t_ret, output, 'g', 'LineWidth', 1.8);
hold on;
xline(delay_time + 0.25, 'r--', 'Expected Peak Center', 'LineWidth', 1.2);
title('Matched Filter Output |y[n]|');
xlabel('Time (s)'); ylabel('Magnitude'); grid on;
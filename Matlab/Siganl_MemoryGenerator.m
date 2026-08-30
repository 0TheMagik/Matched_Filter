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
snr_db = -5;                    % Signal buried in noise
signal_ret_noisy = awgn(signal_ret_clean, snr_db, 'measured');

% 4. Matched Filter
h = fliplr(signal_ref);
y = conv(signal_ret_noisy, h, 'same');
output = abs(y);

%% Visualization
figure('Position', [100, 100, 800, 700]);

subplot(3, 1, 1);
plot(t_ref, signal_ref, 'r', 'LineWidth', 1.5);
title('Reference Signal s_{ref}[n]');
xlabel('Time (s)'); ylabel('Amplitude'); grid on;

subplot(3, 1, 2);
plot(t_ret, signal_ret_noisy, 'Color', [0.5 0.5 0.5]);
hold on;
plot(t_ret, signal_ret_clean, 'b--', 'LineWidth', 1.2);
title(sprintf('Noisy Return Signal s_{ret}[n] (SNR = %d dB)', snr_db));
xlabel('Time (s)'); ylabel('Amplitude');
legend('Noisy Received', 'Clean Embedded Pulse', 'Location', 'northeast');
grid on;

subplot(3, 1, 3);
plot(t_ret, output, 'g', 'LineWidth', 1.8);
hold on;
xline(delay_time + 0.25, 'r--', 'Expected Peak Center', 'LineWidth', 1.2);
title('Matched Filter Output |y[n]|');
xlabel('Time (s)'); ylabel('Magnitude'); grid on;

%% Ensure Output Directory Exists
if ~exist('Signal', 'dir')
    mkdir('Signal');
end

%% Export Signal 1: Reference Signal (.coe)
BITS = 16;
s1_norm = signal_ref / max(abs(signal_ref));
s1_int = round(s1_norm * (2^(BITS-1) - 1));

s1_hex = cell(length(s1_int), 1);
for i = 1:length(s1_int)
    val = s1_int(i);
    if val < 0
        val = val + 2^BITS;
    end
    s1_hex{i} = dec2hex(val, 4); % 16-bit word represented as 4 hex digits
end

fid1 = fopen(fullfile('Signal', 'Signal_ref.coe'), 'w');
fprintf(fid1, 'memory_initialization_radix=16;\n');
fprintf(fid1, 'memory_initialization_vector=\n');
for i = 1:length(s1_hex)-1
    fprintf(fid1, '%s,\n', s1_hex{i});
end
fprintf(fid1, '%s;\n', s1_hex{end});
fclose(fid1);

%% Export Signal 2: Noisy Return Signal (.coe)
s2_norm = signal_ret_noisy / max(abs(signal_ret_noisy));
s2_int = round(s2_norm * (2^(BITS-1) - 1));

s2_hex = cell(length(s2_int), 1);
for i = 1:length(s2_int)
    val = s2_int(i);
    if val < 0
        val = val + 2^BITS;
    end
    s2_hex{i} = dec2hex(val, 4); % 16-bit word represented as 4 hex digits
end

fid2 = fopen(fullfile('Signal', 'Signal_ret_noisy.coe'), 'w');
fprintf(fid2, 'memory_initialization_radix=16;\n');
fprintf(fid2, 'memory_initialization_vector=\n');
for i = 1:length(s2_hex)-1
    fprintf(fid2, '%s,\n', s2_hex{i});
end
fprintf(fid2, '%s;\n', s2_hex{end});
fclose(fid2);

disp('Export complete: Signal_ref.coe and Signal_ret_noisy.coe saved to /Signal folder.');


%% Export to Plain .hex Files (One 16-bit word per line)
% 1. Reference Signal (.hex)
fid_hex1 = fopen(fullfile('Signal', 'Signal_ref.hex'), 'w');
for i = 1:length(s1_hex)
    fprintf(fid_hex1, '%s\n', s1_hex{i});
end
fclose(fid_hex1);

% 2. Noisy Return Signal (.hex)
fid_hex2 = fopen(fullfile('Signal', 'Signal_ret_noisy.hex'), 'w');
for i = 1:length(s2_hex)
    fprintf(fid_hex2, '%s\n', s2_hex{i});
end
fclose(fid_hex2);

disp('Export complete: Signal_ref.hex and Signal_ret_noisy.hex saved to /Signal folder.');
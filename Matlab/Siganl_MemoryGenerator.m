% Signal 1
fs = 10000;
t = 0:1/fs:0.2;

signal_1 = sin(2 * pi * 100 * t);

plot(t, signal_1, 'b', 'LineWidth', 2);
title('Known Template Signal s[n]');
xlabel('Time (s)'); grid on;

BITS = 32;
s_norm = signal_1 / max(signal_1);
s_int = round(s_norm * (2^(BITS-1) - 1));

% Convert negative numbers to 8-bit Two's Complement hex
s_hex = cell(length(s_int), 1);
for i = 1:length(s_int)
    val = s_int(i);
    if val < 0
        val = val + 2^BITS;
    end
    s_hex{i} = dec2hex(val, 8);
end

% --- Format A: Xilinx Vivado Block RAM (.coe) ---
fid = fopen('Signal\Signal_1.coe', 'w');
fprintf(fid, 'memory_initialization_radix=16;\n');
fprintf(fid, 'memory_initialization_vector=\n');
for i = 1:length(s_hex)-1
    fprintf(fid, '%s,\n', s_hex{i});
end
fprintf(fid, '%s;\n', s_hex{end});
fclose(fid);

% Signal 2 
% Signal 3
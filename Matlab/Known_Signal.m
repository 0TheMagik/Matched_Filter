% --- Generate Memory Files for Known Signal ---
clear; clc;

% 1. Create Reference Signal
fs = 1000;
t = 0:1/fs:0.03; % 31 samples
s = sin(2 * pi * 100 * t); % 100 Hz sine wave

subplot(3,1,1);
plot(t, s, 'b', 'LineWidth', 1.5);
title('Known Template Signal s[n]');
xlabel('Time (s)'); grid on;

% 2. Quantize to 8-Bit Signed Fixed-Point
BITS = 8;
s_norm = s / max(abs(s)); % Normalize to [-1.0, 1.0]
s_int = round(s_norm * (2^(BITS-1) - 1)); % Scale to [-128, 127]

% Convert negative numbers to 8-bit Two's Complement hex
s_hex = cell(length(s_int), 1);
for i = 1:length(s_int)
    val = s_int(i);
    if val < 0
        val = val + 2^BITS;
    end
    s_hex{i} = dec2hex(val, 2);
end

% --- Format A: Xilinx Vivado Block RAM (.coe) ---
fid = fopen('known_signal.coe', 'w');
fprintf(fid, 'memory_initialization_radix=16;\n');
fprintf(fid, 'memory_initialization_vector=\n');
for i = 1:length(s_hex)-1
    fprintf(fid, '%s,\n', s_hex{i});
end
fprintf(fid, '%s;\n', s_hex{end});
fclose(fid);

% --- Format B: Intel / Altera Quartus ROM (.mif) ---
fid = fopen('known_signal.mif', 'w');
fprintf(fid, 'WIDTH=8;\nDEPTH=%d;\n', length(s_int));
fprintf(fid, 'ADDRESS_RADIX=UNS;\nDATA_RADIX=HEX;\nCONTENT BEGIN\n');
for i = 1:length(s_hex)
    fprintf(fid, '  %d : %s;\n', i-1, s_hex{i});
end
fprintf(fid, 'END;\n');
fclose(fid);

% --- Format C: Plain Hex File (.mem) for Simulation & VHDL TextIO ---
fid = fopen('known_signal.mem', 'w');
for i = 1:length(s_hex)
    fprintf(fid, '%s\n', s_hex{i});
end
fclose(fid);


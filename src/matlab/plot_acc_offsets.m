% TODO: Plot accumulated offset curves for both state-of-the-art and NTP-based IDSs.
function plot_acc_offsets(ids, mode)

if strcmp(mode, 'state-of-the-art')
    % ====================== Start of Your Code =========================
    % Example: Plot accumulated offset curve for 0x184. 
    %       plot(ids.sota_184.elapsed_time_sec_hist, ids.sota_184.acc_offset_us_hist, ...
    %            'DisplayName', '0x184', 'LineWidth', 3, 'Color', 'black');
    
    % Your code goes here.
    figure(1);
    subplot(3,1,1);
    plot(ids.sota_184.elapsed_time_sec_hist, ids.sota_184.acc_offset_us_hist, ...
                'DisplayName', '0x184', 'LineWidth', 3, 'Color', 'black');
    title('State-Of-The-Art 0x184');
    subplot(3,1,2);
    plot(ids.sota_3d1.elapsed_time_sec_hist, ids.sota_3d1.acc_offset_us_hist, ...
                'DisplayName', '0x3d1', 'LineWidth', 3, 'Color', 'black');
    title('State-Of-The-Art 0x3d1');
    subplot(3,1,3);
    plot(ids.sota_180.elapsed_time_sec_hist, ids.sota_180.acc_offset_us_hist, ...
                'DisplayName', '0x180', 'LineWidth', 3, 'Color', 'black');
    title('State-Of-The-Art 0x180');
    % ====================== End of Your Code =========================
    
elseif strcmp(mode, 'ntp-based')
    % ====================== Start of Your Code =========================
    
    % Your code goes here.
    figure(2);
    subplot(3,1,1);
    plot(ids.ntp_184.elapsed_time_sec_hist, ids.ntp_184.acc_offset_us_hist, ...
                'DisplayName', '0x184', 'LineWidth', 3, 'Color', 'black');
    title('NTP 0x184');
    subplot(3,1,2);
    plot(ids.ntp_3d1.elapsed_time_sec_hist, ids.ntp_3d1.acc_offset_us_hist, ...
                'DisplayName', '0x184', 'LineWidth', 3, 'Color', 'black');
    title('NTP 0x3d1');
    subplot(3,1,3);
    plot(ids.ntp_180.elapsed_time_sec_hist, ids.ntp_180.acc_offset_us_hist, ...
                'DisplayName', '0x184', 'LineWidth', 3, 'Color', 'black');
    title('NTP 0x180');
    % ====================== End of Your Code =========================
    
else
    error('Error: Unknown IDS mode');
end
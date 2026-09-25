clc;
clear;
close all


A = 4;
f = 3;
sigma = 1;
U1 = 2.5;
U2 = 1.5;

t = 0:0.002:1.5;
s = A*sin(2*pi*f*t);
n = sigma*randn(size(t));
x = s + n;                      
filtered = x;
filtered(abs(filtered) < U2) = 0; 

selected = x > U1;                
t_selected = t(selected);
x_selected = x(selected);


maximum = max(x_selected);
minimum = min(x_selected);
max_points = x_selected == maximum;
min_points = x_selected == minimum;

figure

subplot(2,1,1)
plot(t, x, 'k-')
hold on
plot(t, filtered, 'b:')
yline(U1, 'k--')
yline(U2, 'r--')
hold off
title('Original and filtered signals')
xlabel('Time (s)')
ylabel('Voltage (V)')
legend('Original', 'Filtered', 'U1', 'U2', 'Location', 'southeast')
grid on
xlim([t(1) t(end)])
ylim([min([x -1]) - 1, max([x U1 U2]) + 1])

subplot(2,1,2)
stem(t_selected, x_selected, 'k')
hold on
plot(t_selected(max_points), x_selected(max_points), 'ro', ...
    'MarkerFaceColor', 'r', 'LineStyle', 'none')
plot(t_selected(min_points), x_selected(min_points), 'gd', ...
    'MarkerFaceColor', 'g', 'LineStyle', 'none')
hold off
title('Original signal values above U1')
xlabel('Time (s)')
ylabel('Voltage (V)')
legend('Above U1', 'Maximum', 'Minimum', 'Location', 'southeast')
grid on
xlim([t(1) t(end)])
ylim([0 maximum + 1])

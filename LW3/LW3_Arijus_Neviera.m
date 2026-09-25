clear; clc; close all;

%% Task 1:
x = 0:0.1:2*pi;        
f1 = x.^3 + tan(x);
f2 = exp(x);
f3 = exp(3*x);
f4 = exp(5*x);


f1_for_plot = f1;
f1_for_plot(abs(cos(x)) < 0.08) = NaN;

figure(1);
plot(x, f1_for_plot, 'b-', 'LineWidth', 1.5);
title('f_1(x) = x^3 + tan(x)');
xlabel('x (radians)');
ylabel('f_1(x)');
grid on;
axis([0 2*pi -100 300]);

figure(2);
plot(x, f2, 'b-o', x, f3, 'r--s', x, f4, 'k:d', ...
    'LineWidth', 1.2, 'MarkerSize', 3);
title('Exponential functions');
xlabel('x (radians)');
ylabel('Function value (logarithmic scale)');
legend('f_2(x) = e^x', 'f_3(x) = e^{3x}', ...
       'f_4(x) = e^{5x}', 'Location', 'northwest');
grid on;
set(gca, 'YScale', 'log'); % Makes all three rapidly growing curves visible.
axis([0 2*pi 1 1e14]);

%% Task 2:
marks = [5 8 5 2;
         4 9 8 3;
         4 6 9 6;
         3 4 6 2;
         5 8 6 9;
         5 5 6 3];
students = 1:6;

figure(3);
bar(students, marks, 'grouped');
title('Marks of six students in four exams');
xlabel('Student number');
ylabel('Exam mark');
legend('Exam 1', 'Exam 2', 'Exam 3', 'Exam 4', ...
       'Location', 'northeast');
grid on;
axis([0.5 6.5 0 10]);
xticks(students);

figure(4);
bar(students, marks, 'stacked');
title('Total marks for each student');
xlabel('Student number');
ylabel('Total of four exam marks');
grid on;
axis([0.5 6.5 0 40]);
xticks(students);

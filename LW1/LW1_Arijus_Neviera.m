% Arijus Neviera
% Group EKFU-25/1
% Laboratory Work 1
% 11 September 2026

x = 1:32;
y = x.^2;

plot(x, y, 'o-r', x, y/3, 'xb')
title('Dvi funkcijos')
xlabel('X-ai')
ylabel('F_1 [-o-]    |    F_2 [-x-]')

% Complementary task


N = 2


v = N+1:0.5:N+4


A = [N N+1 N+2;
     N+3 N+4 N+5;
     N+6 N+7 N+8]


a = A(3,2)


b = A(2:3, 1:2)


c = A([1 3], [1 3])


v_modified = v(1:3)
combined = [A; v_modified]

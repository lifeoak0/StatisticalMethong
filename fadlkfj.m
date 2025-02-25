T=2;
t = linspace(-T, T, 1000);
f = @(t) square(2*pi*t/T);

figure;
plot(t,f(t));
title('square wave for function graph');
xlabel('t');
ylabel('f(t)');

N = 5;

a0 = (1/T) * integral(@(t) f(t), -T/2, T/2);
an = zeros(1, N);
bn = zeros(1, N);

for n = 1:N
    an(n) = (2/T) * integral(@(t) f(t).* cos(2*pi*n*t/T), -T/2, T/2);
    bn(n) = (2/T) * integral(@(t) f(t).* sin(2*pi*n*t/T), -T/2, T/2);
end

disp('fourier coeffcient');
disp(['a0 = ', num2str(a0)]);
disp('an =');
disp(an);
disp('bn =');
disp(bn);

f_reconstructed = zeros(size(t))

f_reconstructed = f_reconstructed + a0/2;

for n = 1:N
    f_reconstructed = f_reconstructed + an(n) * cos(2*pi*n*t/T) + bn(n) * sin(2*pi*n*t/T);
end

figure;
plot(t, f(t), 'b', t, f_reconstructed, 'r--');
legend('original', 'reconstructed');
title('original and reconstructed signal');
xlabel('Time t');
ylabel('f(t)');
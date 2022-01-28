fc = 10e3;
tau = 1/(2*pi*fc);
s = tf('s');
h=tf([tau,0],[tau, 1])

Ts = 1e-6;
numerator = [tau, 0];
denominator = [tau, 1];

Gs = tf(numerator, denominator)
Gz = tf(numerator, denominator, Ts);


Gz2=c2d(Gs, Ts)

figure;
bode(Gz2);


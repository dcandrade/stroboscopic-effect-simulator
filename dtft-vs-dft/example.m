T=4; %width of the rectangule pulse in seconds
t=0:1:3; %time base
x=rectpuls(t-T/2,T); %generating the square wave
stem(t,x);
N = 128;
X = fft(x, 128);
subplot(2,2,1)
stem(abs(X));
subplot(2,2,2);
stem(phase(X));
subplot(2,2,3);
X = dft(x, N);
plot(abs(X));
subplot(2,2,4);
stem(wrapToPi(phase(X)));

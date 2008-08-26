%Funcion para calcular y graficar el espectro de una Señal EMG

function [spectrum,f]=espectro(signal,Fs)

L=Fs;
NFFT = 2^nextpow2(L);
Y = fft(signal,NFFT)/L;
f = Fs/2*linspace(0,1,NFFT/2);

% Plot single-sided amplitude spectrum.
spectrum=2*abs(Y(1:NFFT/2));
figure
plot(f,spectrum) 
title('Single-Sided Amplitude Spectrum')
xlabel('Frequency (Hz)')
ylabel('|Y(f)|')
axis([0 700 0 0.01]);
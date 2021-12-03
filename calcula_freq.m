function [freq_corda] = calcula_freq()
    recObj = audiorecorder;
    disp('Toque a corda!') 
    recordblocking(recObj, 3); 
    disp('Fim da gravação...');
    audio = getaudiodata(recObj); 

    fft1 = fft(audio);
    L = length(audio);
    P2 = abs(fft1/L);
    P1 = P2(1:L/2 +1);
    P1(2:end - 1) = 2 * P1(2:end - 1);
    f = 8000 * (0: (L/2))/L;

    [B, IX] = sort(P1);
    freq_corda = f(IX(end));
 
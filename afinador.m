function [] = afinador()
    clc
    clear

    continuar = 1; 

    while(continuar == 1)   

        corda = input('Qual corda você deseja afinar? \nMi (6) \nLá(5) \nRé(4) \nSol(3) \nSi(2) \nMi(1) \nDigite o número da corda: ');          

        while(corda < 1 || corda > 6) 
            corda = input('Corda inexistente, digite um número válido. \nMi (6) \nLá(5) \nRé(4) \nSol(3) \nSi(2) \nMi(1) \nDigite o número da corda: ');    
        end

        freq_corda = calcula_freq();

        afinado = 0;

        while(afinado == 0)
            if(corda == 6)
                if(freq_corda <= 100)

                    if(freq_corda >= 81.4069 && freq_corda <= 83.4069)
                        disp('Corda Mi (6) afinada'); 

                        afinado = 1;
                    elseif(freq_corda < 81.4069)
                        disp('Corda Mi (6) desafinada! Aperte a corda'); 
                        fprintf('Frequência da corda: %.4f Hz \nFrequência desejada (E2): 82.4069 Hz\n', freq_corda);
                        pause(3);

                        freq_corda = calcula_freq();
                    else
                        disp('Corda Mi (6) desafinada! Solte a corda'); 
                        fprintf('Frequência da corda: %.4f Hz \nFrequência desejada (E2): 82.4069 Hz\n', freq_corda);
                        pause(3);

                        freq_corda = calcula_freq();
                    end
                end
                if(freq_corda >= 101)
                    if(freq_corda >= 163.8138 && freq_corda <= 165.8138)
                        disp('Corda Mi (6) afinada'); 
                        afinado = 1;
                    elseif(freq_corda < 163.8138)
                        disp('Corda Mi (6) desafinada! Aperte a corda'); 
                        fprintf('Frequência da corda: %.4f Hz \nFrequência desejada (E3): 164.8138 Hz\n', freq_corda);
                        pause(3);
                        freq_corda = calcula_freq();
                    else
                        disp('Corda Mi (6) desafinada! Solte a corda');
                        fprintf('Frequência da corda: %.4f Hz \nFrequência desejada (E3): 164.8138 Hz\n', freq_corda);
                        pause(3);
                        freq_corda = calcula_freq();
                    end
                end
            end

            if(corda == 5)
                if(freq_corda <= 175)
                    if(freq_corda >= 109.00 && freq_corda <= 111.00)
                        disp('Corda Lá (5) afinada'); 
                        afinado = 1;
                    elseif(freq_corda < 109.00)
                        disp('Corda Lá (5) desafinada! Aperte a corda'); 
                        fprintf('Frequência da corda: %.4f Hz \nFrequência desejada (A2): 110.00 Hz\n', freq_corda);
                        pause(3);
                        freq_corda = calcula_freq();
                    else
                        disp('Corda Lá (5) desafinada! Solte a corda'); 
                        fprintf('Frequência da corda: %.4f Hz \nFrequência desejada (A2): 110.00 Hz\n', freq_corda);
                        pause(3);
                        freq_corda = calcula_freq();
                    end
                end
                
                if(freq_corda >= 176)
                    if(freq_corda >= 219.00 && freq_corda <= 221.00)
                        disp('Corda Lá (5) afinada'); 
                        afinado = 1;
                    elseif(freq_corda < 219.00)
                        disp('Corda Lá (5) desafinada! Aperte a corda');
                        fprintf('Frequência da corda: %.4f Hz \nFrequência desejada (A3): 220.00 Hz\n', freq_corda);
                        pause(3);
                        freq_corda = calcula_freq();
                    else
                        disp('Corda Lá (5) desafinada! Solte a corda');
                        fprintf('Frequência da corda: %.4f Hz \nFrequência desejada (A3): 220.00 Hz\n', freq_corda);
                        pause(3);
                        freq_corda = calcula_freq();
                   end
                end     
            end

            if(corda == 4)
                if(freq_corda <= 230)
                    if(freq_corda >= 145.8324 && freq_corda <= 147.8324)
                        disp('Corda Ré (4) afinada'); 
                        afinado = 1;  
                    elseif(freq_corda < 145.8324)
                        disp('Corda Ré (4) desafinada! Aperte a corda'); 
                        fprintf('Frequência da corda: %.4f Hz \nFrequência desejada (D3): 146.8324 Hz\n', freq_corda); 
                        pause(3);
                        freq_corda = calcula_freq();
                    else
                        disp('Corda Ré (4) desafinada! Solte a corda');
                        fprintf('Frequência da corda: %.4f Hz \nFrequência desejada (D3): 146.8324 Hz\n', freq_corda); 
                        pause(3);
                        freq_corda = calcula_freq();
                    end
                end
                
                if(freq_corda >= 231)
                    if(freq_corda >= 292.6648 && freq_corda <= 294.6648)
                        disp('Corda Ré (4) afinada'); 
                        afinado = 1;
                    elseif(freq_corda < 292.6648)
                        disp('Corda Ré (4) desafinada! Aperte a corda'); 
                        fprintf('Frequência da corda: %.4f Hz \nFrequência desejada(D4): 293.6648 Hz\n', freq_corda); 
                        pause(3);
                        freq_corda = calcula_freq();
                    else
                        disp('Corda Ré (4) desafinada! Solte a corda');
                        fprintf('Frequência da corda: %.4f Hz \nFrequência desejada (D4): 293.6648 Hz\n', freq_corda); 
                        pause(3);
                        freq_corda = calcula_freq();
                    end
                end
            end

            if(corda == 3)
                if(freq_corda <= 275)
                    if(freq_corda >= 194.9977 && freq_corda <= 196.9977)
                        disp('Corda Sol (3) afinada'); 
                        afinado = 1; 
                    elseif(freq_corda < 194.9977)
                        disp('Corda Sol (3) desafinada! Aperte a corda'); 
                        fprintf('Frequência da corda: %.4f Hz \nFrequência desejada (G3): 195.9977 Hz\n', freq_corda);
                        pause(3);
                        freq_corda = calcula_freq();
                    else
                        disp('Corda Sol (3) desafinada! Solte a corda'); 
                        fprintf('Frequência da corda: %.4f Hz \nFrequência desejada (G3): 195.9977 Hz\n', freq_corda);
                        pause(3);
                        freq_corda = calcula_freq();
                    end
                end
                
                if(freq_corda >= 276)
                    if(freq_corda >= 390.9954 && freq_corda <= 392.9954)
                        disp('Corda Sol (3) afinada'); 
                        afinado = 1; 
                    elseif(freq_corda < 390.9954)
                        disp('Corda Sol (3) desafinada! Aperte a corda');
                        fprintf('Frequência da corda: %.4f Hz \nFrequência desejada (G4): 391.9954 Hz\n', freq_corda);
                        pause(3);
                        freq_corda = calcula_freq();
                    else
                        disp('Corda Sol (3) desafinada! Solte a corda');
                        fprintf('Frequência da corda: %.4f Hz \nFrequência desejada (G4): 391.9954 Hz\n', freq_corda);
                        pause(3);
                        freq_corda = calcula_freq();
                    end             
                end  
            end
            
            if(corda == 2)
                if(freq_corda <= 330)
                    if(freq_corda >= 245.9417 && freq_corda <= 247.9417)
                        disp('Corda Sí (2) afinada'); 
                        afinado = 1;
                    elseif(freq_corda < 245.9417)
                        disp('Corda Sí (2) desafinada! Aperte a corda'); 
                        fprintf('Frequência da corda: %.4f Hz \nFrequência desejada (B3): 246.9417 Hz\n', freq_corda);
                        pause(3);
                        freq_corda = calcula_freq(); 
                    else                         
                        disp('Corda Sí (2) desafinada! Solte a corda'); 
                        fprintf('Frequência da corda: %.4f Hz \nFrequência desejada (B3): 246.9417 Hz\n', freq_corda);
                        pause(3);
                        freq_corda = calcula_freq();
                    end
                end
                if(freq_corda >= 331)
                    if(freq_corda >= 492.8333 && freq_corda <= 494.8333)
                        disp('Corda Sí (2) afinada'); 
                        afinado = 1;
                    elseif(freq_corda < 492.8333)
                        disp('Corda Sí (2) desafinada! Aperte a corda'); 
                        fprintf('Frequência da corda: %.4f Hz \nFrequência desejada (B4): 493.8333 Hz\n', freq_corda);
                        pause(3);
                        freq_corda = calcula_freq();
                    else
                        disp('Corda Sí (2) desafinada! Solte a corda');
                        fprintf('Frequência da corda: %.4f Hz \nFrequência desejada (B4): 493.8333 Hz\n', freq_corda);
                        pause(3);
                        freq_corda = calcula_freq();
                    end
                end
            end

            if(corda == 1)
                if(freq_corda <= 490)
                    if(freq_corda >= 328.6276 && freq_corda <= 330.6276)
                        disp('Corda Mi (1) afinada'); 
                        afinado = 1;
                    elseif(freq_corda < 328.6276)
                        disp('Corda Mi (1) desafinada! Aperte a corda'); 
                        fprintf('Frequência da corda: %.4f Hz \nFrequência desejada (E4): 329.6276 Hz\n', freq_corda);
                        pause(3);
                        freq_corda = calcula_freq();
                    else
                        disp('Corda Mi (1) desafinada! Solte a corda'); 
                        fprintf('Frequência da corda: %.4f Hz \nFrequência desejada (E4): 329.6276 Hz\n', freq_corda);
                        pause(3);
                        freq_corda = calcula_freq();
                    end
                end
                if(freq_corda >= 491)
                    if(freq_corda >= 658.2551 && freq_corda <= 660.2551)
                        disp('Corda Mi (1) afinada');
                        afinado = 1; 
                    elseif(freq_corda < 658.2551)
                        disp('Corda Mi (1) desafinada! Aperte a corda'); 
                        fprintf('Frequência da corda: %.4f Hz \nFrequência desejada (E5): 659.2551 Hz\n', freq_corda);
                        pause(3);
                        freq_corda = calcula_freq();
                    else
                        disp('Corda Mi (1) desafinada! Solte a corda');
                        fprintf('Frequência da corda: %.4f Hz \nFrequência desejada (E5): 659.2551 Hz\n', freq_corda);
                        pause(3);
                        freq_corda = calcula_freq();
                    end
                end                
            end
        end

        continuar = input('Você deseja continuar? Se sim, digite 1: ');          
    end    
      

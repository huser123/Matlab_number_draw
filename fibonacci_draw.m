% Ez a program a Fibonacci-szamok szamjegyei alapjan rajzol
% V2.1 - 2021.01.10.

clear, clc

system('python fibonacci.py')               % A Fibonacci-szamok generalasa Pythonnal

x=0                                         % X-tengely
y=0                                         % Y-tengely

kettes=0                                    % Szamjegyek szamolasa
negyes=0
hatos=0
nyolcas=0

egyes=0
harmas=0
hetes=0
kilences=0

count=0                                     % Muveletek szamolasa

fajl = fopen('fib.txt','r')                 % A Fibonacci-szamokat tartalmazo fajl megnyitasa

form = '%s'                                 % Fajl formatumanak beallitasa

A = fscanf(fajl,form)                       % A fajl tartalmat az A valtozoba olvastatjuk

fclose(fajl)                                % A fajl bezarasa

hold on                                     % Az összes rajzelem megtartasa

    for karakter = int2str(A)               % Az A tomb karaktereinek feldolgozasa
        %disp(karakter)
        count = count+1                     % Szamlalo egyel novelese
        if karakter == '2'                  % Karakterek elemzese
            %disp("KETTES")
            y=y-1                           % Lepes a szamtengelyesen
            plot(x,y,'r.')                  % Rajz a szamtengelyen
            %drawnow
            kettes=kettes+1                 % A karakterek szamolasanak novese
        end
        if karakter == '4'
            %disp("NEGYES")
            x=x-1
            plot(x,y,'g.')
            %drawnow
            negyes=negyes+1
        end
        if karakter == '6'
            %disp("HATOS")
            x=x+1
            plot(x,y,'b.')
            %drawnow
            hatos=hatos+1
        end
        if karakter == '8'
            %disp("NYOLCAS")
            y=y+1
            plot(x,y,'k.')
            %drawnow
            nyolcas=nyolcas+1
        end
        
        if karakter == '1'
            %disp("EGYES")
            x=x-1
            y=y-1
            plot(x,y,'c.')
            %drawnow
            egyes=egyes+1
        end
        if karakter == '3'
            %disp("HARMAS")
            x=x+1
            y=y-1
            plot(x,y,'m.')
            %drawnow
            harmas=harmas+1
        end
        if karakter == '7'
            %disp("HETES")
            x=x-1
            y=y+1
            plot(x,y,'y.')
            %drawnow
            hetes=hetes+1
        end
        if karakter == '9'
            %disp("KILENCES")
            x=x+1
            y=y+1
            plot(x,y,'r.')
            %drawnow
            kilences=kilences+1
        end
    end
    


MAX = [egyes, kettes, harmas, negyes, hatos, hetes, nyolcas, kilences]

disp("Egyes: ")
egyes

disp("Kettes: ")
kettes

disp("Harmas: ")
harmas

disp("Negyes: ")
negyes

disp("Hatos: ")
hatos

disp("Hetes: ")
hetes

disp("Nyolcas: ")
nyolcas

disp("Kilences: ")
kilences

disp("Legtobb: ")
legtobb=max(MAX)

karakter

A

L = strlength(A)
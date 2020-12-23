clear, clc

format rat

x=0
y=0

kettes=0
negyes=0
hatos=0
nyolcas=0

egyes=0
harmas=0
hetes=0
kilences=0

plusz=0

count=0

hold on

%while count < 100
    for karakter = int2str(fibonacci(1:30000))
        disp(karakter)
        if karakter == '2'
            %disp("KETTES")
            y=y-1
            plot(x,y,'r.')
            %drawnow
            kettes=kettes+1
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
        if karakter == '+'
            plusz=plusz+1
        end
        count=count+1
    end
    
    
%end

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
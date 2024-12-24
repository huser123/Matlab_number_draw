 % Ez a program a szamok szamjegyei alapjan rajzol
% V1.4 - 2020.12.25.

clear, clc

x=0
y=0

hold on

for i = 1:1000
    for karakter = num2str(i)
        disp(karakter)
        if karakter == '2'
            %disp("KETTES")
            y=y-1
            plot(x,y,'r.')
        end
        if karakter == '4'
            %disp("NEGYES")
            x=x-1
            plot(x,y,'g.')
        end
        if karakter == '6'
            %disp("HATOS")
            x=x+1
            plot(x,y,'b.')
        end
        if karakter == '8'
            %disp("NYOLCAS")
            y=y+1
            plot(x,y,'k.')
        end
        
        if karakter == '1'
            %disp("EGYES")
            x=x-1
            y=y-1
            plot(x,y,'y.')
        end
        if karakter == '3'
            %disp("HARMAS")
            x=x+1
            y=y-1
            plot(x,y,'m.')
        end
        if karakter == '7'
            %disp("HETES")
            x=x-1
            y=y+1
            plot(x,y,'c.')
        end
        if karakter == '9'
            %disp("KILENCES")
            x=x+1
            y=y+1
            plot(x,y,'r.')
        end
    end
end

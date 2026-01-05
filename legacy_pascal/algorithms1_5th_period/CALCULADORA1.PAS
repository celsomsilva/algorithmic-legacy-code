program Calculadora;
uses crt;
const max=30;
var num:char;

function soma(a1,a2:real):real;
         begin
         soma:=(a1+a2);
         end;
function diminui(a1,a2:real):real;
         begin

         diminui:=(a1-a2);
         end;
function multiplica(a1,a2:real):real;
         begin
         multiplica:=(a1*a2);
         end;
function divide(a1,a2:real):real;
         begin
         divide:=(a1/a2);
         end;
function seno(a2:real):real;
         begin
         seno:=sin(a2);
         end;
function cosseno(a2:real):real;
         begin
         cosseno:=cos(a2);
         end;
function tangente(a2:real):real;
         begin
         tangente:=(sin(a2)/cos(a2));
         end;
function raiz(a2:real):real;
         begin
         raiz:=sqrt(a2);
         end;
function lg(a2:real):real;
         begin
         lg:=(ln(a2)/ln(10));
         end;
function dez_el(a2:real):real;
         begin
         dez_el:=exp(a2*ln(10));
         end;
function log_nat(a2:real):real;
         begin
         log_nat:=ln(a2);
         end;
function e_el(a2:real):real;
         begin
         e_el:=exp(a2);
         end;
function x_el_2(a2:real):real;
         begin
         x_el_2:=sqr(a2);
         end;
function fat(a2:real):longint;
         var b:integer;
             c:longint;
         begin
         c:= trunc(a2);
         for b:=1 to (c-1) do
                  begin
                  c:=c*(trunc(a2)-b);
                  end;
         fat:=c;
         end;
function inverso(a2:real):real;
         begin
         inverso:=(1/a2);
         end;
function x_el_y(a1,a2:real):real;
         begin
         x_el_y:=exp(a2*(ln(a1)));
         end;
function mr(a2:real):real;
         begin
         mr:=a2;
         end;
function lg2(a2:real):real;
         begin
         lg2 := (ln(a2)/ln(2));
         end;
function result(d1,d2:real; operacao:char; e:boolean) : real;
         var angulo:longint;
         begin
         if ((operacao='s') or (operacao='c') or (operacao='t')) then
            begin
            if (e=true) then
                  begin
                  angulo:=round(d2);
                  d2:=(angulo mod 360);
                  d2:=(Pi*d2)/180;
                  end;
            end;
            case operacao of
            '+':begin
                     result:=soma(d1,d2);
                end;
            '-':begin
                     result:=diminui(d1,d2);
                end;
            '*':begin
                     result:=multiplica(d1,d2);
                end;
            '/':begin
                     result:=divide(d1,d2);
                end;
            's':begin
                     result:=seno(d2);
                end;
            'c':begin
                     result:=cosseno(d2);
                end;
            't':begin
                     result:=tangente(d2);
                end;
            'r':begin
                     result:=raiz(d2);
                end;
            'l':begin
                     result:=lg(d2);
                end;
            'd':begin
                     result:=dez_el(d2);
                end;
            'n':begin
                     result:=log_nat(d2);
                end;
            'q':begin
                     result:=e_el(d2);
                end;

            '!':begin
                     result:=fat(d2);
                end;
            'v':begin
                     result:=x_el_2(d2);
                end;
            'i':begin
                     result:=inverso(d2);
                end;
            'x':begin
                     result:=x_el_y(d1,d2);
                end;
            'a':begin
                     result:=mr(d2);
                end;
            'z':begin
                     result:=lg2(d2);
                end;
           end;
        end;
procedure marca_angulo(an:boolean);
          begin
          if (an=true) then
             begin
             gotoxy(52,6);
             write('  ');
             gotoxy(52,4);
             write('>>');
             end
           else
             begin
             gotoxy(52,4);
             write('  ');
             gotoxy(52,6);
             write('>>');
             end;
           end;

procedure mostra_calc(g:boolean);

          begin

   gotoxy(1,5);
   writeln(' -----------------------------------------------------------------------------');
   writeln('                                                       Graus        ');
   writeln('                                                                    ');
   writeln('                                                       Radianos     ');
   writeln('                                                                    ');
   writeln('                                                                              ');
   writeln(' -----------------------------------------------------------------------------');
   writeln('   Bemvindo a calculadora do Celso!  ');
   writeln;
   writeln('    Escola a funcao de acordo com a letra, tecle os numeros do teclado e para');
   writeln('igual, use ENTER');
   writeln;
   writeln('RESET - b; DESLIGA - o');
   writeln('GRAUS/RADIANOS - g; PI - p');
   writeln('e (NEPERIANO) - e; +/- : w');
   writeln('e ELEVADO A x - q; MR - m');
   writeln('x ELEVADO A 2 - v; x ELEVADO A y - x');
   writeln('FATORIAL DE x - !; LOGARITMO - l');
   writeln('TANGENTE - t; INVERSO - i; LOGARITIMO DE 2 - z');
   writeln('SENO - s; COSSENO - c; LOGARITMO NEPERIANO - n');
   writeln('M+ : a; RAIZ - r; 10 ELEVADO A x - d');
   writeln;

   marca_angulo(g);
         end;
procedure calc_on;
   var  first,menos_de_cara,nova_conta,grau:boolean;
        valor1,valor2:real;
        frase,visor,visor_aux:string;
        sinal,sinal_aux,a_bug:char;
        i,erro,posx_visor,posy_visor,pos_op:integer;
begin
        i := 0;
        num := '0';
        visor := '';
        posx_visor := 8;
        posy_visor := 8;
        pos_op := 0;
        gotoxy(posy_visor,posx_visor);
        first := true;
        menos_de_cara := true;
        nova_conta := false;
        frase := '';
        sinal := #0;
        sinal_aux := #0;
        valor1 := 0;
        valor2 := 0;
        a_bug := #0;
        gotoxy(54,10);
        write('>>');
        gotoxy(posy_visor,posx_visor);
        grau := false;
        while ((num <> 'o') and (num <> 'b')) do
           begin
           pos_op := length(frase);
           if (pos_op = 0) then
                   begin
                   clreol;
                   mostra_calc(grau);
                   end;
            gotoxy(posy_visor + pos_op,posx_visor);
            write('                          ');
            gotoxy(posy_visor + pos_op,posx_visor);
            write(visor);
            if ((pos_op <> 0) and (num <> #8)) then
            begin
                 write(')');
                 case sinal of
                 '!': write('!');
                 'v': write(' ^ 2');
                 'x': begin
                  if (first = true) then
                    begin
                    write(' ^ ()');
                    end;
                  end;
            end;
            end;

                if (nova_conta = false)  then

                    begin

                        num := readkey;

                    end;

                i := i + 1;


            if ((num = '+') or (num = '-') or (num = '*') or (num = '/') or
             (num = 's') or (num = 'c') or (num = 't') or (num = 'r')
             or (num = 'l') or (num = 'd') or (num = 'n') or (num = 'q')
             or (num = '!') or (num = 'v') or (num = 'x') or (num = 'i')
             or (num = 'z') or (num = 'u') or (num = 'a'))  then

                begin

                    if (first = true) then
                       begin
                            val(visor,valor1,erro);
                            first := false;
                       end;

                    gotoxy(posy_visor,posx_visor);
                    clreol;

                    case num of

                         '-':begin

                                  if ((sinal = 's') or (sinal = 'c') or
                                     (sinal = 't') or (sinal = 'd') or
                                     (sinal = 'q') or (sinal = 'v') or
                                     (sinal = 'i') or (sinal = 'a')) then

                                            begin

                                                 visor := num;

                                            end
                                  else if ((sinal = 'r') or (sinal = 'l')
                                          or (sinal = 'n') or (sinal = '!')
                                             or (sinal = 'z')) then

                                             begin

                                                 num := sinal;

                                             end

                                  else
                                      begin

                                           if (menos_de_cara = true) then

                                           begin
                                                first := true;
                                                num := 'w';
                                                nova_conta := true;
                                                sinal := '-';
                                                visor := '';
                                                menos_de_cara := false;

                                           end

                                      end;

                             end;
                         end;
                    if (sinal <> #0) then
                       begin
                                sinal_aux := sinal;

                       end
                    else
                        begin
                             sinal_aux := num;
                             a_bug := sinal_aux;

                        end;

                        sinal := num;

                          case sinal of
                             's': frase := 'seno (';
                             'c': frase := 'cosseno (';
                             't': frase := 'tangente (';
                             'r': frase := 'raiz (';
                             'l': frase := 'log (';
                             'd': frase := '10 ^ (';
                             'n': frase := 'ln (';
                             'q': frase := 'e ^ (';
                             '!': frase := '(';
                             'v': frase := '(';
                             'i': frase := '1 / (';
                             'z': frase := 'lg2 (';
                             'a':begin

                                      frase := 'M (';
                                      val(visor,valor1,erro);

                                      if (a_bug <> 'a') then
                                         valor2 := 0;

                                      valor2  := valor2 + valor1;
                                      visor := '';

                                 end;

                             'x':begin
                                      frase := '(';
                                      first := true;
                                 end;
                             'u':begin
                                      if (first = false) then
                                         begin
                                              nova_conta := false;
                                              sinal := sinal_aux;
                                              str(valor1:1:4,visor);
                                              visor := concat(frase,visor);
                                              frase := concat(visor,') ^ (');
                                              visor := '';
                                         end;
                                 end;

                            end;

                          if ((visor <> '-') and ((num = '+') or (num = '-')
                             or (num = '*') or (num = '/'))) then

                             begin

                                  visor := '';
                                  i := 0;
                             end
                          else
                              begin
                                   i := 1;
                                   sinal := sinal_aux;
                              end;

                          if (frase <> '') then
                             begin
                                  mostra_calc(grau);
                                  gotoxy(posy_visor,posx_visor);
                                  write(frase);
                             end;

                    if (num <> 'w') then
                      nova_conta := false;



                end


            else if ((num = '=') or (num = #13) or (num = 'm')) then

                begin

                     if ((sinal = 'x') and (first = true)) then

                          begin

                               nova_conta := true;
                               num := 'u';
                               sinal_aux := sinal;

                          end

                     else

                     begin

                     gotoxy(posy_visor,posx_visor);
                     clreol;

                     if (sinal <> 'a') then
                        begin
                             val(visor,valor2,erro);
                        end
                     else
                         begin
                              val(visor,valor1,erro);
                              valor2 := valor2 + valor1;
                         end;


                     if (((sinal = '/') or (sinal = 'z') or (sinal = 'l') or (sinal = 'n') or (sinal = 'i'))
                             and (valor2 = 0)) then

                        begin

                            gotoxy(posy_visor,posx_visor);
                            write('Erro');

                        end

                    else if (((sinal = 'l') or (sinal = 'z') or (sinal = 'n') or (sinal = 'r')) and (valor2 < 0)) then

                        begin

                            gotoxy(posy_visor,posx_visor);
                            write('Erro');


                        end

                    else
                     valor1 := result(valor1,valor2,sinal,grau);
                     str(valor1:1:9,visor);
                     mostra_calc(grau);
                     gotoxy(posy_visor,posx_visor);
                     write(visor);
                     sinal := #0;
                     pos_op := 0;
                     frase := '';
                     gotoxy(posy_visor,posx_visor);
                     num := readkey;

                     if ((num <> #8) and (num <> 'w') and (num <> 'g')
                              and (num <> #13))  then

                        begin
                             nova_conta := true;

                        end
                     else if ((num = #8) or (num = 'w') or (num = 'g')
                                   or (num = #13)) then
                          begin
                               first := true;

                               if ((num = 'w') or (num = 'g')) then
                                  nova_conta := true;


                          end;

                     if (num = 'a') then
                        begin
                            visor := '';
                            valor1 := 0;
                        end;

                     if ((num >= #48) and (num <= #57) or (num = '.')
                        or (num = 'p')
                        or (num = 'e')) then

                        begin
                            first := true;
                            visor := '';
                        end;

                     end;

                end

            else if ((num >= #48) and (num <= #57) or (num = '.')
                    or (num = 'p')
                     or (num = 'e')) then

                begin

                     if (menos_de_cara = true) then
                                        menos_de_cara := false;

                     case num of
                          'p':begin

                                 visor_aux := '3.1415926535897932385';

                              end;
                          'e':begin

                                 visor_aux := '2.7182818285';

                              end;
                          else
                              visor_aux := num;

                     end;

                     insert(visor_aux,visor,i);
                     nova_conta := false;

                end

            else if (num = #8) then
                 begin

                      visor_aux := visor;
                      visor := '';
                      visor := copy(visor_aux,1,(length(visor_aux)-1));

                 end

            else if (num = 'w') then

                begin

                     visor_aux := copy(visor,1,1);
                     nova_conta := false;

                     if (visor_aux <> '-') then

                        begin

                             visor_aux := '-';
                             insert(visor_aux,visor,1);

                        end

                        else
                           begin

                            visor_aux := copy(visor,2,length(visor));
                            visor := '';
                            visor := copy(visor_aux,1,length(visor_aux));

                         end;

                end

            else if (num = 'g') then

                 begin

                      nova_conta := false;

                      if (grau = true)  then
                         begin
                               grau := false;
                         end
                      else
                          begin
                               grau := true;
                          end;
                 end

            else

                begin

                    nova_conta := false;

                end;
    end;
  end;
begin
clrscr;
    num := 'b';
    while (num = 'b') do
          begin
               num := '0';
               calc_on;
          end;
clrscr;
end.
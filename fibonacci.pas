PROGRAM fibonacci;//Anthony Khan
USES crt;

VAR
flg, flag:boolean;
a,b,c,r,n,cont:longint;
resp:integer;

BEGIN
flg:=true;

while flg do
  begin
   cont:=3;
   flag:=false;
   clrscr;
   writeln(' Ingrese el numero de serie: ');
   readln(n);
   writeln;
   writeln(' Ingrese el numero a buscar: ');
   readln(r);
   writeln;
   
a:=0;
b:=1;
c:=a+b;
	if n=1 then
		writeln(a);
	if n=2 then
		writeln(a,'-',b);
	if n=3 then
		writeln(a,'-',b,'-',c);
	if n>3 then
	while cont<n do
	begin
		if flag=false then
			begin
			  write(a,' ',b,' ',c,' ');
			  flag:=true;
			end;
		 a:=b;
		 b:=c;
		 c:=a+b;
		 textcolor(white);			
         write(c,' ');
		 if r=c then
			begin
				textcolor(red);
				write(c,' ');  
			end;
		 cont:=cont+1;  
		 
    end; 
readkey;
clrscr;
     textcolor(white);
     writeln('Desea continuar? (si=1, no=2)');
     readln(resp);
     if resp <> 1 then
        flg:=false;
  end;
END.

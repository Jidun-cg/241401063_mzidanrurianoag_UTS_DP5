program DeretFibonacci;
uses crt;

var
    n,i,a,b,jmh,total: integer;

begin
    clrscr;
    write('Masukkan jumlah suku: '); readln(n);
    

    a := 0;
    b := 1;
    total := a + b;

    write('Sequence = ', a, ', ', b);

    for i := 2 to n-1 do
    begin
        jmh := a + b;
        write(', ', jmh);
        total := total + jmh;
        a := b;
        b := jmh;
    end;

    writeln;
    writeln('Total  = ', total);
end.
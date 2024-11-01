program Nala10k;
uses crt;
var
    n, i: longint;
    harga: array[1..100] of longint;
begin
    clrscr;
    write('Banyak minuman: '); readln(n);
        for i := 1 to n do
            begin
                write('Minuman ke-', i, ' : '); readln(harga[i]);
            end;
    writeln('Minuman yang bisa dibeli Nala:');
        for i := 1 to n do
            begin
                if harga[i] < 10000 then
                    writeln('Minuman ke-', i, ' : ', harga[i]);
            end;
end.
program KokoYangPunyaToko;
uses crt;

var

  kembalian,minimum,i: longint;
  PecahanKembalian: array [1..11] of longint;
  

begin
  clrscr;

  PecahanKembalian[1] := 100000;
  PecahanKembalian[2] := 75000;
  PecahanKembalian[3] := 50000;
  PecahanKembalian[4] := 20000;
  PecahanKembalian[5] := 10000;
  PecahanKembalian[6] := 5000;
  PecahanKembalian[7] := 2000;
  PecahanKembalian[8] := 1000;
  PecahanKembalian[9] := 500;
  PecahanKembalian[10] := 200;
  PecahanKembalian[11] := 100;

  writeln('Selamat datang di Toko IKLC');
  write('Masukkan total kembalian: '); readln(kembalian);

  minimum := 0;
  for i := 1 to 11 do
  begin
    while kembalian >= PecahanKembalian[i] do
    begin
      kembalian := kembalian - PecahanKembalian[i];
      minimum := minimum + 1;
    end;
  end;

  writeln('Jumlah Pecahan kembalian minimal: ', minimum);

end.
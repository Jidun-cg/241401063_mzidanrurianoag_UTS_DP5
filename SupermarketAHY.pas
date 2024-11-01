program kasirSupermarketAHY;
uses crt;

var 
    member,lagi:char;
    hari,kategoriProduk,namaAnggota,namaProduk:string;
    totalPembayaran,hargaProduk,jumlahProduk,diskon,subtotal: real;
    totalItem,poin:longint;

begin
    clrscr;
    write('Nama anggota: '); readln(namaAnggota);
    write('Hari: '); readln(hari);
    write('Apakah kamu member? (Y/N): '); readln(member);

    totalPembayaran := 0;
    totalItem := 0;
    diskon := 0;

    repeat
        write('Masukkan nama produk: '); readln(namaProduk);
        write('Masukkan kategori produk (Hygiene/Frozen Food/Elektronik/Laktosa): '); readln(kategoriProduk);
        write('Jumlah produk: '); readln(jumlahProduk);
        write('Harga produk: '); readln(hargaProduk);

        subtotal := jumlahProduk * hargaProduk;
        totalPembayaran := totalPembayaran + subtotal;
        totalItem := totalItem + Trunc(jumlahProduk);

        if (hari = 'Senin') and (kategoriProduk = 'Hygiene') then
            begin
                diskon := diskon + 0.10 * subtotal
            end          
        else if (hari = 'Selasa') and (kategoriProduk = 'Frozen Food') then
            begin
                diskon := diskon + 0.05 * subtotal
            end
        else if (hari = 'Rabu') and (kategoriProduk = 'Elektronik') then
            begin
                diskon := diskon + 0.30 * subtotal
            end
        else if (hari = 'Kamis') and (kategoriProduk = 'Laktosa') then
            begin
                diskon := diskon + 0.08 * subtotal;
            end;

        write('Apakah ingin menambah barang lain? (Y/N): '); readln(lagi);
    until (lagi = 'N') or (lagi = 'n');

    if (member = 'Y') or (member = 'y') then
        diskon := diskon + 0.10 * (totalPembayaran - diskon);

    if totalItem >= 10 then
        diskon := diskon + 0.05 * (totalPembayaran - diskon);


    poin := Trunc(totalPembayaran / 50000); //trunc karena poin tidak bisa berkoma :)

    totalPembayaran := totalPembayaran - diskon;

    

    writeln('Total: Rp', (totalPembayaran + diskon):0:0);
    writeln('Diskon: Rp', diskon:0:0);
    writeln('Pembayaran: Rp', totalPembayaran:0:0);
    writeln('Poin: ', poin);

    readln;
end.
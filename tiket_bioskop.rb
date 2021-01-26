#!/usr/bin/ruby
# membuat program tiket bioskop
$sisa_tiket = 50
$tiket_dewasa = 40000
$tiket_anak = 20000
$harga = 0
$daftar = """
------=[ tiket bioskop @Tegar_Dev ]=------
1.tiket dewasa : #{$tiket_dewasa}
2.tiket anak   : #{$tiket_anak}
------------------------------------------
"""
def main()
    puts $daftar
    pilihTiket()
end
def pilihTiket()
    if $sisa_tiket > 0
        puts "sisa tiket: #{$sisa_tiket}"
        print "pilih tiket: "
        pilih = gets.chomp.to_i
        case pilih
        when 1
            print "beli berapa tiket: "
            jumlah = gets.chomp.to_i
            hasil = jumlah * $tiket_dewasa
            $sisa_tiket -= jumlah
            $harga += hasil
            print "beli lagi? y/n: "
            lagi = gets.chomp
            if lagi == "y"
                pilihTiket()
            elsif lagi == "n"
                eksekusi()
            end
        when 2
            print "beli berapa tiket: "
            jumlah = gets.chomp.to_i
            hasil = jumlah * $tiket_anak
            $sisa_tiket -= jumlah
            $harga += hasil
            print "beli lagi? y/n: "
            lagi = gets.chomp
            if lagi == "y"
                pilihTiket()
            elsif lagi == "n"
                eksekusi()
            end
        end
    else
        puts "tiket sudah habis anda tidak dapat membeli"
    end
end
def eksekusi()
    jumlah_tiket = 50 - $sisa_tiket
    puts "------------------------------------------"
    puts "anda membeli #{jumlah_tiket} tiket"
    puts "harga yang harus anda bayar: #{$harga}"
end
main()

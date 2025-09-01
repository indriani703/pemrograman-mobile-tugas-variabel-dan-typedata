void main(){
    List<Map<String, dynamic>> daftar_karyawan = [
        {
            "nama" : "Indriani",
            "jam_kerja_seminggu" : 56,
            "upah" : 600000.0,
            "status" : true
        },
        {
            "nama" : "Wulan",
            "jam_kerja_seminggu" : 65,
            "upah" : 40000.0,
            "status" : false
        },
    ];

    // fungsi perhitungan gaji karyawan pertama
    String nama_karyawan1 = daftar_karyawan[0]["nama"];
    int jam_kerja_karyawan1 = daftar_karyawan[0]["jam_kerja_seminggu"];
    double upah_karyawan1 = daftar_karyawan[0]["upah"];
    bool status_karyawan1 = daftar_karyawan[0]["status"];
    double pajak_karyawan1;

    double gaji_kotor_karyawan1 = jam_kerja_karyawan1 * upah_karyawan1;
    if (status_karyawan1){
        pajak_karyawan1 = 0.10 * gaji_kotor_karyawan1;
    } else {
        pajak_karyawan1 = 0.05 * gaji_kotor_karyawan1;
    }
    double gaji_bersih_karyawan1 = gaji_kotor_karyawan1 - pajak_karyawan1;

    String nama_karyawan2 = daftar_karyawan[1]["nama"];
    int jam_kerja_karyawan2 = daftar_karyawan[1]["jam_kerja_seminggu"];
    double upah_karyawan2 = daftar_karyawan[1]["upah"];
    bool status_karyawan2 = daftar_karyawan[1]["status"];
    double pajak_karyawan2;

    double gaji_kotor_karyawan2 = jam_kerja_karyawan2 * upah_karyawan2;
    if (status_karyawan2){
        pajak_karyawan2 = 0.10 * gaji_kotor_karyawan2;
    } else {
        pajak_karyawan2 = 0.05 * gaji_kotor_karyawan2;
    }
    double gaji_bersih_karyawan2 = gaji_kotor_karyawan2 - pajak_karyawan2;
    
    print("""
====== Slip Gaji Karyawan ======
Nama Karyawan : $nama_karyawan1
Gaji Kotor    : Rp $gaji_kotor_karyawan1
pajak         : Rp $pajak_karyawan1
Gaji Bersih   : RP $gaji_bersih_karyawan1
====== Slip Gaji Karyawan ======
Nama Karyawan : $nama_karyawan2
Gaji Kotor    : Rp $gaji_kotor_karyawan2
pajak         : Rp $pajak_karyawan2
Gaji Bersih   : RP $gaji_bersih_karyawan2
""");
}
class kasltem{
final string id;
final string jenis;//"pemasukan"atau"pengeluaran"
final double nominal;
final string keterangan;
final date time tanggal;
KasItem({
required this.id,
required this.jenis,
required this.nominal,
required this.keterangan,
required this.tanggal,
});
//  Convert object to Map (untuk disimpan ke local storage atau Firebase)
map<string,dynamic> toMap(){
    return{
        'id':id,
        'jenis':jenis,
        'nominal':nominal,
        'keterangan': keterangan,
        'tanggal': tanggal.toIso8601String(), // format tanggal agar bisa disimpan
    }
}
// convert map ke object(saat membaca dari storage)
factory KasItem.fromMap(Map<String, dynamic> map) {
    return kasltem(
        id:map['id'],
        jenis:map['jenis'],
        nominal:map['nominal'] is int
        ?(map['nominal'] as int).toDouble()
        :map['nominal'],
        keterangan:map['keterangan'],
        tanggal;date time.parse(map['tanggal']),
    );
}

}
    
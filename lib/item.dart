class Item {
  int _id;
  String _nama;
  String _kategori;
  int _harga;
  int _stok;

  //setter dan getter untuk setiap baris
  int get id => _id;

  String get nama => this._nama;
  set nama(String value) => this._nama = value;

  String get kategori => this._kategori;
  set kategori(String value) => this._kategori = value;

  get harga => this._harga;
  set harga(value) => this._harga = value;

  get stok => this._stok;
  set stok(value) => this._stok = value;

  Item(this._nama, this._kategori, this._harga, this._stok);

  //mengkonversi Map ke Item digunakan untuk menampung baris data dari tabel database
  Item.fromMap(Map<String, dynamic> map) {
    this._id = map['id'];
    this._nama = map['nama'];
    this._kategori = map['kategori'];
    this._harga = map['harga'];
    this._stok = map['stok'];
  }

  //mengkonversi Item ke Map digunakan untuk memasukkan data ke dalam tabel
  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = Map<String, dynamic>();
    map['id'] = this._id;
    map['nama'] = nama;
    map['kategori'] = kategori;
    map['harga'] = harga;
    map['stok'] = stok;
    return map;
  }
}
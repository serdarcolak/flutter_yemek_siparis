class Yemekler {
  String yemek_id;
  String yemek_adi;
  String yemek_resim_adi;
  String yemek_siparis_adet;
  String yemek_fiyat;
  String kullanici_adi;

  Yemekler(
      {required this.yemek_id,
      required this.yemek_adi,
      required this.yemek_resim_adi,
      required this.yemek_siparis_adet,
      required this.yemek_fiyat,
      required this.kullanici_adi});



  factory Yemekler.fromJson(Map<String,dynamic> json){
    return Yemekler(
        yemek_id: json["yemek_id"] as String,
        yemek_adi: json["yemek_adi"] as String,
        yemek_resim_adi: json["yemek_resim_adi"] as String,
        yemek_fiyat: json["yemek_fiyat"] as String,
        yemek_siparis_adet: json["yemek_siparis_adet"] as String,
        kullanici_adi: json["kullanici_adi"] as String,
    );
  }
}
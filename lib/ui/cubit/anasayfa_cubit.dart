import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yemek_siparis_app/data/entity/yemekler.dart';
import 'package:yemek_siparis_app/data/repo/yemeklerdao_repository.dart';

class AnasayfaCubit extends Cubit<List<Yemekler>> {
  AnasayfaCubit():super(<Yemekler>[]);

  var frepo = YemeklerDaoRepository();

  Future<void> yemekleriYukle() async {
    var liste = await frepo.yemekleriYukle();
    emit(liste);
  }
}
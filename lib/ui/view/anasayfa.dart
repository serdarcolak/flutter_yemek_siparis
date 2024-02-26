import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yemek_siparis_app/data/entity/yemekler.dart';
import 'package:yemek_siparis_app/ui/cubit/anasayfa_cubit.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {

  @override
  void initState() {
    super.initState();
    context.read<AnasayfaCubit>().yemekleriYukle();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Yemekler"),),
      body: BlocBuilder<AnasayfaCubit,List<Yemekler>>(
        builder: (context,yemeklerListesi){
          if(yemeklerListesi.isNotEmpty){
            return GridView.builder(
              itemCount: yemeklerListesi.length,//6
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,childAspectRatio: 1 / 1.8
              ),
              itemBuilder: (context,indeks){//0,1,2,3,4,5
                var yemek = yemeklerListesi[indeks];
                return GestureDetector(
                  onTap: (){
                    //Navigator.push(context, MaterialPageRoute(builder: (context) => DetaySayfa(film: film)));
                  },
                  child: Card(
                    child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.network("http://kasimadalan.pe.hu/yemekler/resimler/${yemek.yemek_resim_adi}"),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("${yemek.yemek_fiyat} ₺",style: const TextStyle(fontSize: 24),),
                            ElevatedButton(onPressed: (){
                              print("${yemek.yemek_adi} sepete eklendi");
                            }, child: const Text("Sepet"))
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            );
          }else{
            return const Text("data");
          }

        },
      ),
    );
  }
}









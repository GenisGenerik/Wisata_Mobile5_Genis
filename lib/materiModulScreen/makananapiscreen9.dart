import 'package:flutter/material.dart';
import 'package:wisata_mobile5_genis/services/makanan_service.dart';
import 'package:wisata_mobile5_genis/widget/makanan_card.dart';

class Makananapiscreen9 extends StatelessWidget {
  final MakananService _makananService = MakananService();
   Makananapiscreen9({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("daftar makanan seafood",style: TextStyle(color: Colors.white),),backgroundColor: Colors.blueAccent,),
      body: FutureBuilder(future: _makananService.fetchMakanan(), builder: (context,snapshot){
        if(snapshot.connectionState==ConnectionState.waiting)
        {
          return Center(child: CircularProgressIndicator(),);
        }else if(snapshot.hasError)
        {
           return Center(child:Text("eror : ${snapshot.error}"),);
        }else{
          final daftarseafood = snapshot.data!;
          return ListView.builder(itemCount: daftarseafood.length, itemBuilder: (context,index){
            return MakananCard(makananModel: daftarseafood[index]);
          });
        }
      }),
    );
  }
}
import 'package:udemy/collections/list_kullanimi.dart';

void main(){

 var o1=Ogrenciler(no: 100, ad: "Melek", sinif: "12A");
 var o2=Ogrenciler(no:200 , ad:"Zeynep", sinif: "12B");
 var o3=Ogrenciler(no: 300, ad:"Ali", sinif:"12c");


 var ogrenciListesi =<Ogrenciler>[];
 ogrenciListesi.add(o1);
 ogrenciListesi.add(o2);
 ogrenciListesi.add(o3);


 for(var o in ogrenciListesi){
 print("No: ${o.no}, Ad:${o.ad}, Sınıf:${o.sinif}");

 }






}
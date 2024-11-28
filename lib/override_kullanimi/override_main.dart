import 'package:udemy/override_kullanimi/hayvan.dart';
import 'package:udemy/override_kullanimi/kopek.dart';
import 'package:udemy/override_kullanimi/kedi.dart';
import 'package:udemy/override_kullanimi/memeli.dart';

void main(){
  
  var hayvan=Hayvan();
  var memeli=Memeli();
  var kedi=Kedi();
  var kopek=Kopek();


  hayvan.sesCikar(); //kalitim yok kendi metoduna erişti
  memeli.sesCikar();//kalıtım var .üst sınıfın metoduna erişti
  kedi.sesCikar();//kalıtım yok. kendi metoduna erişti
  kopek.sesCikar();//kalıtım yok. kendi metoduna erişti



}
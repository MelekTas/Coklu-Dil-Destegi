import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PizzaPage extends StatefulWidget {
  const PizzaPage({super.key});

  @override
  State<PizzaPage> createState() => _PizzaPageState();
}

class _PizzaPageState extends State<PizzaPage> {
  @override
  Widget build(BuildContext context) {
    var d = AppLocalizations.of(context);

    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;
    print("ekran yüksekliği: $ekranYuksekligi");
    print("ekran genisliği: $ekranGenisligi");

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text(
          "Pizza",
          style: GoogleFonts.pacifico(color: Colors.white),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(
                8.0), 
            child: Text(
              d!.pizzaBaslik,
              style: TextStyle(
                  fontSize: ekranYuksekligi / 20,
                  color: Colors.red,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
              height: 250,
              width: 250,
              child: Image(image: AssetImage("assets/images/pizza.png"))),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Chip(icerik: d.peynirYazi),
              Chip(icerik: d.zeytinYazi),
              Chip(icerik: d.sucukYazi),
              Chip(icerik: d.biberYazi),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                d.teslimatSure,
                style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                d.teslimatBaslik,
                style: const TextStyle(color: Colors.red, fontSize: 20),
              ),
              Text(
                d.pizzaAciklama,
                style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                d.fiyat,
                style: const TextStyle(
                  color: Colors.red,
                  fontSize: 44,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                    backgroundColor: Colors.red,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)))),
                child: Text(d.butonYazi,
                    style: const TextStyle(color: Colors.white, fontSize: 18)),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class Chip extends StatelessWidget {
  final String icerik;
  Chip({required this.icerik});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(backgroundColor: Colors.red),
        child: Text(icerik, style: const TextStyle(color: Colors.white)));
  }
}

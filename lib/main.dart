import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterappmakanan/detail.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text("resep makanan"),
      ),
      body: _PageList(),
    );
  }
}

class _PageList extends StatefulWidget {
  _PageStateListState createState() => _PageStateListState();
}

class _PageStateListState extends State<_PageList> {
  List<String> judul = [
    "Nasi Goreng",
    "Iga Bakar",
    "Sate Kambing",
    "Sate Ayam",
  ];

  List<String> subJudul = [
    "- 2 butir telur \n"
        "- 2 sdm minyak goreng \n"
        "- 3 buah tomat ceri (potong sesuai selera) \n"
        "- 1 piring nasi \n"
        "- 1 batang daun bawang (cincang kasar) \n"
        "- Kerupuk (secukupnya) \n"
        "- 1 sdm margarin \n"
        "- 2 siung bawang putih \n"
        "- 5 buah cabai rawit \n"
        "- Kecap manis (secukupnya) \n"
        "- 3 siung bawang merah \n"
        "- Garam (secukupnya) \n"
        "- Gula (secukupnya) \n",
    "- 500 gr iga sapi"
        "- 3 sdm Kecap manis\n"
        "- 1 butir Kemiri\n"
        "- 2 siung Bawang merah\n"
        "- 2 siung Bawang putih\n"
        "- Merica bubuk secukupnya\n"
        "- seruas Jahe\n"
        "- 1 sdm Garam\n"
        "- Gula merah 1 buah\n"
        "- 5 butir cengkeh\n"
        "- Sebatang kayu manis\n"
        "- 1 sdt Kaldu bubuk\n"
        "Bumbu Olesan(\n1 sdt Blueband,\n1 sdm Kecap manis)"
        "Sambal kecap(\n4 sdm Kecap,\n3 buah cabe,\n1/2 buah tomat)",
    "- 500 gram daging kambing\n"
        "- 1 sendok teh ketumbar\n"
        "- 2 butir kemiri\n"
        "- 6 siung bawang merah\n"
        "- 6 siung bawang putih\n"
        "- 1 ruas jahe\n"
        "- kecap secukupnya\n"
        "- garam secukupnya\n"
        "- parutan nanas\n"
        "- perasan lemon\n"
        "- daun jeruk\n",
    "- 1 kg daging ayam fillet\n"
        "- 1 sdt garam\n"
        "- 2 sdm kecap manis\n"
        "- perasan air lemon/jeruk limau\n"
        "- tusuk sate\n"
        "- kacang tanah 300 gram, goreng/sangrai\n"
        "- bawang merah 8 siung\n"
        "- cabai merah 4 buah\n"
        "- air 500 ml\n"
        "- daun jeruk 3 lembar\n"
        "- garam gula secukupnya\n"
        "- kecap manis 100 ml\n"
        "- lontong atau ketupat\n"
        "- kecap manis\n"
        "- bawang goreng\n"
        "- jeruk limau\n"
        "- sambal\n",
  ];

  List<String> gambar = [
    "images/nasigoreng.jpg",
    "images/igabakar.jpg",
    "images/satekambing.jpg",
    "images/sateayam.jpg",
  ];

  List<String> stok = [
    "- Panaskan margarin sampai leleh, masak telur orak-arik lalu sisihkan.\n"
        "- Tambahkan minyak goreng dan bumbu halus, aduk rata, masak hingga harum.\n"
        "- Masukkan nasi ke dalam adonan telur dan bumbu, aduk rata. Tambahkan daun\nbawang, aduk kembali.\n"
        "- Sajikan bersama topping tomat ceri dan kerupuk juga sedikit hiasan daun seledri\njuga irisan cabai merah.",
    "- Haluskan duo bawang, kemiri, jahe dan cuci bersih iga sapi.\n"
        "- Masukkan bumbu halus ke dalam panci berisi iga sapi, tambahkan cengkeh, kecap manis, kayu manis, gula merah, garam, kaldu bubuk. Rebus hingga empuk. Saya pakai panci presto kurleb 30menit.\n"
        "- Setelah 30 menit, siapkan bumbu olesan dan kemudian bakar diatas teflon sambil diolesi bumbu olesan.\n"
        "- Sajikan iga bakar dipiring",
    "- Siapkan air redaman untuk daging kambing, terdiri dari parutan nanas, perasan lemon, dan daun jeruk\n"
        "- Rendam daging kambing selama 20-30 menit untuk menghilangkan bau\n"
        "- Potong dadu daging kambing yang sudah direndam\n"
        "- Tusukkan daging ke tusuk sate yang sudah dipersiapkan\n"
        "- Haluskan semua bumbu, yakni bawang merah, bwang putih, kemiri, jahe, dan ketumbar\n"
        "- Siram sate dengan bumbu, diamkan selama 10 menit agar bumbu meresap\n"
        "- Sate siap dibakar\n"
        "- Saat daging sudah setengah matang, olesi kembali dengn bumbu\n"
        "- Ketika hampir matang, olesi lagi dengan kecap dan bakar hingga matang dan daging sudah empuk\n"
        "- Sate kambing siap disajikan",
    "- Potong daging ayam bentuk dadu, beri garam dan perasan jeruk lemon dan kecap manis, simpan dikulkas minimal 1 jam.\n"
        "- Lalu tusuk-tusuk dengan tusuk sate dan lakukan hingga habis, sisihkan.\n"
        "- Haluskan semua bahan bumbu kacang, kecuali kecap, daun jeruk.\n"
        "- Lalu masukkan kecap, air, daun jeruk dan masak dengan api kecil hingga air surut dan mengeluarkan minyak. Koreksi rasa.\n"
        "- Siapkan bakaran/ panggangan. Lumuri sate ayam dengan bumbu kacang dan sedikit kecap manis.\n"
        "- Bakar sate hingga matang sambil dibolak-balik.\n"
        "- Sajikan sate ayam dengan bumbu kacang, jeruk limau, kecap manis dan lontong dan pelengkap lainnya.\n",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: judul.length,
          itemBuilder: (
            BuildContext contex,
            int index,
          ) {
            final title = judul[index].toString();
            final subTitle = subJudul[index].toString();
            final stokItem = stok[index].toString();
            final image = gambar[index].toString();
            return Container(
              height: 200,
              padding: EdgeInsets.all(8.0),
              child: GestureDetector(
                child: Stack(
                  children: <Widget>[
                    backgroundImage(image),
                    Container(
                      padding: EdgeInsets.only(left: 7.0, bottom: 7.0),
                      child: topContent(title, subTitle, stokItem),
                    )
                  ],
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Detailpage(
                                itemJudul: title,
                                itemSub: subTitle,
                                qty: stokItem,
                                itemImg: image,
                              )));
                },
              ),
            );
          }),
    );
  }

  backgroundImage(String gambar) {
    return new Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        image: DecorationImage(
            fit: BoxFit.fill,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.5), BlendMode.luminosity),
            image: AssetImage(gambar)),
      ),
    );
  }

  topContent(String nama, String deskripsi, String stok) {
    return new Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Text(
            nama,
            style: bigHeaderTextStyle,
          ),
        ],
      ),
    );
  }
}

final baseTextStyle = const TextStyle(color: Colors.white, fontFamily: 'arial');
final bigHeaderTextStyle =
    baseTextStyle.copyWith(fontSize: 24.0, fontWeight: FontWeight.bold);
final descTextStyle =
    baseTextStyle.copyWith(fontSize: 18.0, fontWeight: FontWeight.w400);
final footerTextStyle =
    baseTextStyle.copyWith(fontSize: 14.0, fontWeight: FontWeight.w400);

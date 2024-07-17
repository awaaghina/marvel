import 'package:flutter/material.dart';
import 'package:myapp/marvel/detail_marvel.dart';

import 'detail_marvel.dart';

class ListMarvel extends StatelessWidget {
  final List<Map<String, dynamic>> MarvelData = [
    {
     "nama_karakter": "Ant_Man",
      "nama_pemeran": "Paul Stephen Rudd",
      "image": "assets/images/antmant.jpeg",
      "gallery": [
        "assets/images/antmant1.jpeg",
        "assets/images/antmant2.jpeg",
        "assets/images/antmant3.jpeg"
      ],
      "desc":
          "Ant-Man adalah film pahlawan super Amerika tahun 2015 berdasarkan Marvel Comics karakter dengan nama yang sama: Scott Lang dan Hank Pym. Diproduksi oleh Marvel Studios dan didistribusikan oleh Walt Disney Studios Motion Pictures.",
    },
    {
      "nama_karakter": "Captain Amerika",
      "nama_pemeran": "Matthew Douglas Salinger",
      "image": "assets/images/captain_amerika.jpeg",
      "gallery": [
        "assets/images/captain_amerika1.jpeg",
        "assets/images/captain_amerika2.jpeg",
        "assets/images/captain_amerika3.jpeg"
      ],
      "desc":
          "Captain America adalah sosok pahlawan super fiktif dari Marvel Comics. Memiliki musuh besar bernama Salwi Ackerman dan Baron Zemo, Rogers adalah tentara AS yang tidak memiliki kemampuan sama sekali. Berkat bantuan Dr. Joshef Reinstein dengan serum super soldiernya",
    },
    {
      "nama_karakter": "Spider-Man",
      "kota_pemeran": "Tobey Maguire",
      "image": "assets/images/spiderman.jpeg",
      "gallery": [
        "assets/images/spiderman1.jpeg",
        "assets/images/spiderman2.jpeg",
        "assets/images/spiderman3.jpeg"
      ],
      "desc":
          "Spider-Man adalah pahlawan super fiktif dari Marvel Comics yang diciptakan oleh penulis Stan Lee dan artis Steve Ditko. Ia pertama muncul dalam Amazing Fantasy #15 (Agustus 1962). Ia telah menjadi salah satu pahlawan super yang paling terkenal di dunia.",
    },
    {
      "nama_karakter": "Iron-Man",
      "nama_pemeran": "Robert John Downey Jr",
      "image": "assets/images/ironman.jpeg",
      "gallery": [
        "assets/images/ironman1.jpeg",
        "assets/images/ironman2.jpeg",
        "assets/images/ironman3.jpeg"
      ],
      "desc":
          "Iron Man, atau Tony Stark, adalah karakter superhero fiksi dari komik Marvel yang diciptakan oleh penulis Stan Lee, penulis naskah Larry Lieber, serta desainer Don Heck dan Jack Kirby. Karakter ini pertama kali muncul di Tales of Suspense #39 pada Maret 1963",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Marvel'),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/background_marvel.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView.builder(
            itemCount: MarvelData.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailMarvel(
                        nama_karakter: MarvelData[index]["nama_karakter"],
                        nama_pemeran: MarvelData[index]["nama_pemeran"],
                        image: MarvelData[index]["image"],
                        gallery: MarvelData[index]["gallery"],
                        desc: MarvelData[index]["desc"],
                      ),
                    ),
                  );
                },
                child: Container(
                  alignment: Alignment.bottomLeft,
                  height: 200,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage("${MarvelData[index]["image"]}"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black.withOpacity(0.5),
                    ),
                    child: Text(
                      "${MarvelData[index]["nama_karakter"]} - ${MarvelData[index]["nama_pemeran"]}",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.orangeAccent,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
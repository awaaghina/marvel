import 'package:flutter/material.dart';

class LatihanListView extends StatelessWidget {
  final List<Map<String, dynamic>> data = [
    {
      'name': 'Rafly Al Karim', 
      'Umur': 18, 
      'Alamat': 'Rancamanyar',
      'photo' : [
        'https://picsum.photos/200/300',
        'https://picsum.photos/200/300',
        'https://picsum.photos/200/300',
      ]  
    },
    {
      'name': 'Ryan Al Dawsari', 
      'Umur': 18, 
      'Alamat': 'Cangkuang',
      'photo' : [
        'https://picsum.photos/200/300',
        'https://picsum.photos/200/300',
        'https://picsum.photos/200/300',
      ]
    },

    {
      'name': 'Zidan Al Karawi', 
      'Umur': 17, 
      'Alamat': 'Rancamanyar',
      'photo' : [
        'https://picsum.photos/200/300',
        'https://picsum.photos/200/300',
        'https://picsum.photos/200/300',
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        return Card(
          color: Colors.grey[400],
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Nama :${data[index]['name']}'),
                Text('Umur :${data[index]['Umur']}'),
                Text('Alamat :${data[index]['Alamat']}'),
                Text('Galery'),
                SizedBox(
// Suggested code may be subject to a license. Learn more: ~LicenseLog:186594720.
                  height: 100,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: data[index]['photo'].length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(right: 5),
                        child: Image.network(
                        data[index]['photo'][index],
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        );
      }
    );
  }
}
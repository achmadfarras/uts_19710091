import 'dart:html';

import 'package:flutter/material.dart';

/*void main() {
  runApp(const MaterialApp(
    title: 'UTS',
    home: CardProfile(),
  ));
}*/

void main() {
  runApp(new MaterialApp(
    home: new CardProfile(),
    routes: <String, WidgetBuilder>{
      'HalamanProfile': (BuildContext context) => new HalamanProfile(),
      'HalamanPendidikan': (BuildContext context) => new HalamanPendidikan(),
      'HalamanAlamat': (BuildContext context) => new HalamanAlamat(),
      'HalamanKontak': (BuildContext context) => new HalamanKontak(),
      'HalamanHobi': (BuildContext context) => new HalamanHobi(),
      'HalamanFilm': (BuildContext context) => new HalamanFilm(),
    },
  ));
}

class CardProfile extends StatelessWidget {
  const CardProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal[300],
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('assets/img/farras.jpg'),
            ),
            Text(
              'FARRAS',
              style: TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'FLUTTER DEVELOPPER',
              style: TextStyle(
                  fontFamily: 'Coco Gothic',
                  fontSize: 20.0,
                  letterSpacing: 2.5,
                  color: Colors.white,
                  fontWeight: FontWeight.w100),
            ),
            SizedBox(
              height: 50.0,
              width: 150.0,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.person,
                  color: Colors.teal,
                ),
                title: Text(
                  'Profile',
                  style: TextStyle(
                      fontFamily: 'Coco Gothic',
                      color: Colors.teal.shade900,
                      fontSize: 15.0),
                ),
                onTap: () {
                  Navigator.pushNamed(context, "HalamanProfile");
                },
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.school,
                  color: Colors.teal,
                ),
                onTap: () {
                  Navigator.pushNamed(context, "HalamanPendidikan");
                },
                title: Text(
                  'Pendidikan',
                  style: TextStyle(
                      fontFamily: 'Coco Gothic',
                      color: Colors.teal.shade900,
                      fontSize: 15.0),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.location_pin,
                  color: Colors.teal,
                ),
                onTap: () {
                  Navigator.pushNamed(context, "HalamanAlamat");
                },
                title: Text(
                  'Alamat',
                  style: TextStyle(
                      fontFamily: 'Coco Gothic',
                      color: Colors.teal.shade900,
                      fontSize: 15.0),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.contacts_rounded,
                  color: Colors.teal,
                ),
                onTap: () {
                  Navigator.pushNamed(context, "HalamanKontak");
                },
                title: Text(
                  'Kontak',
                  style: TextStyle(
                      fontFamily: 'Coco Gothic',
                      color: Colors.teal.shade900,
                      fontSize: 15.0),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.sports_motorsports_rounded,
                  color: Colors.teal,
                ),
                onTap: () {
                  Navigator.pushNamed(context, "HalamanHobi");
                },
                title: Text(
                  'Hobi',
                  style: TextStyle(
                      fontFamily: 'Coco Gothic',
                      color: Colors.teal.shade900,
                      fontSize: 15.0),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.local_movies,
                  color: Colors.teal,
                ),
                onTap: () {
                  Navigator.pushNamed(context, "HalamanFilm");
                },
                title: Text(
                  'Film',
                  style: TextStyle(
                      fontFamily: 'Coco Gothic',
                      color: Colors.teal.shade900,
                      fontSize: 15.0),
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}

class HalamanProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
            title: new Text("PROFILE"), backgroundColor: Colors.teal[300]),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Achmad Farras Shafwan'),
              Text('Banjarmasin, 30 Agustus 2001'),
              Text('Laki - Laki'),
              Text('Islam'),
            ],
          ),
        ));
  }
}

class HalamanPendidikan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
            title: new Text("PENDIDIKAN"), backgroundColor: Colors.teal[300]),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('SDN TELUK DALAM 3'),
              Text('SMPN 12 BANJARMASIN'),
              Text('SMKN 1 BANJARMASIN'),
              Text('UNIVERSITAS ISLAM KALIMANTAN'),
            ],
          ),
        ));
  }
}

class HalamanAlamat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
            title: new Text("ALAMAT"), backgroundColor: Colors.teal[300]),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('JL. CENDRAWASIH NO.08 RT.020 RW.002, BANJARMASIN'),
            ],
          ),
        ));
  }
}

class HalamanKontak extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
            title: new Text("KONTAK"), backgroundColor: Colors.teal[300]),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('+62 895 3659 17866'),
              Text('achmadfarras273@gmail.com'),
            ],
          ),
        ));
  }
}

class HalamanHobi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
            title: new Text("HOBI"), backgroundColor: Colors.teal[400]),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('OTOMOTIF'),
              Text('SEPAK BOLA'),
              Text('GAME'),
            ],
          ),
        ));
  }
}

class HalamanFilm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
            title: new Text("FILM"), backgroundColor: Colors.teal[400]),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('CAPTAIN PHILIPS'),
              Text('THE CAPTAIN'),
              Text('PACIFIC RIM'),
            ],
          ),
        ));
  }
}

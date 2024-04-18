// ignore_for_file: prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

List Yemekimages = [
  'https://avatars.mds.yandex.net/i?id=0b8e91abd600a3b2125b4b06cb147b3b-5669663-images-thumbs&n=13',
  'https://pbs.twimg.com/media/DOC6tEjXUAEtjF_.jpg:large',
  'https://i.pinimg.com/originals/eb/7b/f7/eb7bf76e830100dbfcbd59c6f2b4fc6a.jpg',
  'https://i.pinimg.com/736x/8e/fd/09/8efd093daf687225f84c079e54bc568c--fasulye-biber.jpg',
  'https://i.pinimg.com/originals/ac/32/56/ac32564fbc03af2323dd84950e5146b4.png',
  'https://avatars.mds.yandex.net/i?id=b694204e332010b3ee79c142aa5e3d85-5664890-images-thumbs&n=13',
  'https://avatars.mds.yandex.net/i?id=3b7446644498fe47b560e4fbf8ece05d-5232166-images-thumbs&n=13',
  'https://avatars.mds.yandex.net/i?id=28b1d9ecc84db62e25fd4b5137555cb9-3001461-images-thumbs&n=13',
  'https://avatars.mds.yandex.net/i?id=f236bc045c8a30499e670d394c14779e-4033047-images-thumbs&n=13',
  'https://avatars.mds.yandex.net/i?id=8bd9a39aaf46c25423cef5e33455a944-5499519-images-thumbs&n=13',
  'https://avatars.mds.yandex.net/i?id=97c4e5a7c7741b478ecfbfb5a918c403-5429318-images-thumbs&n=13',
  'https://avatars.mds.yandex.net/i?id=290d65ff8b92b54fd09dd3996ec1b0ac-5233686-images-thumbs&n=13',
  'https://avatars.mds.yandex.net/i?id=2a00000179e716aae8d10f5f44510b9469b5-4586846-images-thumbs&n=13',
  'https://avatars.mds.yandex.net/i?id=2a0000017a055378e1eab0f2a1820ffe49a6-4567270-images-thumbs&n=13',
  'https://avatars.mds.yandex.net/i?id=1655ab912f2e4279a460d35cdc0be72a-4011284-images-thumbs&n=13',
  'https://avatars.mds.yandex.net/i?id=14bc39a8978c6ce9d9ddef35265eeb7b-5695679-images-thumbs&n=13',
];

List Corbaimages = [
'https://avatars.mds.yandex.net/i?id=c55b1eaf3ab9be5c9ff647812edec28a-4814374-images-thumbs&n=13',
'https://avatars.mds.yandex.net/i?id=2a00000179fa1fb2848ef70ca16fdec185a3-4269550-images-thumbs&n=13',
'https://avatars.mds.yandex.net/i?id=e65382300c2bcef39a74709310816c8d-5449291-images-thumbs&n=13',
'https://avatars.mds.yandex.net/i?id=2a0000017a16c00d20a5a28ba4984c9d2063-4304379-images-thumbs&n=13',
];

List Tatliimages = [
'https://avatars.mds.yandex.net/i?id=2a0000017a1008e5e0f8c929d604ef953516-4537101-images-thumbs&n=13',
'https://avatars.mds.yandex.net/i?id=2a0000017a126d8c750bd61fc92652801c7a-5132286-images-thumbs&n=13',
'https://avatars.mds.yandex.net/i?id=af6b22fee4295dc62cbc2775818bf336-4756892-images-thumbs&n=13',
'https://avatars.mds.yandex.net/i?id=ea76949e58254307f2d5301adc578b8c-5865789-images-thumbs&n=13',
'https://avatars.mds.yandex.net/i?id=c522f80eade295d3ae49b2b60d22a867-4303590-images-thumbs&n=13',
];

List icecekimages= [
'https://avatars.mds.yandex.net/i?id=2a00000179ef4343a62bb12c25161d13d0d2-4699071-images-thumbs&n=13',
'https://avatars.mds.yandex.net/i?id=93e66cb8cdb8398abcc632d11bf315fd-5870104-images-thumbs&n=13',
'https://avatars.mds.yandex.net/i?id=2dca7bf4542420a67c2100ebd6b36132-3847042-images-thumbs&n=13',
'https://avatars.mds.yandex.net/i?id=2f3fac6df62ee648dd849608c1df5197-5492373-images-thumbs&n=13',
'https://avatars.mds.yandex.net/i?id=056596a08966621bbcfb4b73d88302a8-4055867-images-thumbs&n=13',
'https://avatars.mds.yandex.net/i?id=e0c533f08a1dc74d916e45c72c365a17-5858549-images-thumbs&n=13',
'https://avatars.mds.yandex.net/i?id=a22c16022dec99973c4051cf281dd88f-5572268-images-thumbs&n=13',
'https://avatars.mds.yandex.net/i?id=2a0000017a1a634741e73b9a776e67e153ff-2455092-images-thumbs&n=13',
'https://avatars.mds.yandex.net/i?id=2a0000017a0c7af7ad1f4867ea4fdc2bbcd9-4488147-images-thumbs&n=13',
];

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final _firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    var YemekBilgi = _firestore.collection('Menu').doc('AnaYemek').collection('Yemekler');
    var CorbaBilgi = _firestore.collection('Menu').doc('Çorba').collection('Çorbalar');
    var TatliBilgi = _firestore.collection('Menu').doc('Tatlı').collection('Tatlılar');
    var IcecekBilgi = _firestore.collection('Menu').doc('İçecek').collection('İçecekler');

    return Scaffold(
        backgroundColor: Colors.white,
        drawer: Drawer(),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          title: Text(
            'Ana Sayfa',
            style: TextStyle(color: Colors.black, fontSize: 17),
          ),
          // ignore: prefer_const_literals_to_create_immutables
          actions: [
            CircleAvatar(
              radius: 12,
              backgroundColor: Color.fromARGB(255, 230, 79, 68),
              child: Icon(Icons.search, size: 17, color: Colors.black),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: CircleAvatar(
                radius: 12,
                backgroundColor: Color.fromARGB(255, 230, 79, 68),
                child: Icon(Icons.shop, size: 17, color: Colors.black),
              ),
            ),
          ],
          backgroundColor: Color.fromARGB(255, 176, 34, 24),
        ),
        body: 

               Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: ListView(
                  children: [
                    Container(
                      height: 165,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://avatars.mds.yandex.net/i?id=77470a2b37b156e61ff1ee22fca1a56d-5546664-images-thumbs&n=13'),
                          ),
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              child: Column(
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          right: 155, bottom: 20),
                                      child: Container(
                                        height: 48,
                                        width: 60,
                                        decoration: BoxDecoration(
                                            color: Color.fromARGB(
                                                255, 197, 46, 35),
                                            borderRadius: BorderRadius.only(
                                              bottomRight: Radius.circular(50),
                                              bottomLeft: Radius.circular(50),
                                            )),
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 4),
                                          child: Text(
                                            'Bi-Et',
                                            style: TextStyle(
                                                fontSize: 25,
                                                color: Colors.white,
                                                // ignore: prefer_const_literals_to_create_immutables
                                                shadows: [
                                                  BoxShadow(
                                                      color: Colors.yellow,
                                                      blurRadius: 30,
                                                      offset: Offset(3, 3))
                                                ]),
                                          ),
                                        ),
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 88),
                                    child: Text(
                                      '%25 İndirim',
                                      style: TextStyle(
                                          fontSize: 24,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 90),
                                    child: Text(
                                      'Tüm et ürünlerinde',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(child: Container())
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text('Ana Yemekler'),
                          Text(
                            'Tümünü Görüntüle',
                            style: TextStyle(
                                color: Color.fromARGB(255, 216, 214, 214)),
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      child: Row(
                        children: [
                          SizedBox(
                            height: 200,
                            width: 391,
                            child: 
                            StreamBuilder(
            stream: YemekBilgi.snapshots(),
            builder: (BuildContext context,
                AsyncSnapshot<QuerySnapshot> asyncSnapShot) {
              if (asyncSnapShot.hasError) {
                return Text('Error:${asyncSnapShot.error}');
              }
              if (asyncSnapShot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: Text('Loading...',
                      style: TextStyle(fontSize: 25, color: Colors.black)),
                );
              } 
              return ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 16,
                                itemBuilder: (context, index) {
                                  DocumentSnapshot documentSnapshot =
                          asyncSnapShot.data!.docs[index];
                                  return Container(
                                    margin: EdgeInsets.symmetric(horizontal: 5),
                                    height: 190,
                                    width: 140,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 26, 26, 24),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 20),
                                        Expanded(
                                          flex: 1,
                                          child: Container(
                                            height: 130,
                                            width: 140,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                                image: DecorationImage(
                                                    image: NetworkImage(
                                                        Yemekimages[index]),
                                                    fit: BoxFit.fill)),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 4,
                                              vertical: 2,
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(documentSnapshot['name']
                                                  ,
                                                  style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 244, 243, 243),
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                Row(
                                                  children: [
                                                    Expanded(
                                                      child: Container(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 5),
                                                        height: 30,
                                                        width: 50,
                                                        decoration: BoxDecoration(
                                                            border: Border.all(
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        224,
                                                                        219,
                                                                        219)),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8)),
                                                        child: Row(
                                                          // ignore: prefer_const_literals_to_create_immutables
                                                          children: [
                                                            Expanded(
                                                                child: Text(
                                                              '126 gram',
                                                              style: TextStyle(
                                                                  fontSize: 11,
                                                                  color: Colors
                                                                      .white),
                                                            )),
                                                            Center(
                                                              child: Icon(
                                                                Icons
                                                                    .arrow_drop_down,
                                                                size: 20,
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        235,
                                                                        233,
                                                                        233),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Expanded(
                                                      child: Container(
                                                        height: 30,
                                                        width: 50,
                                                        decoration: BoxDecoration(
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    231,
                                                                    49,
                                                                    36),
                                                            border: Border.all(
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        244,
                                                                        238,
                                                                        238)),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5)),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          // ignore: prefer_const_literals_to_create_immutables
                                                          children: [
                                                            Icon(Icons.remove,
                                                                size: 13,
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        241,
                                                                        240,
                                                                        240)),
                                                            Text(
                                                              '1',
                                                              style: TextStyle(
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        246,
                                                                        243,
                                                                        243),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                              ),
                                                            ),
                                                            Icon(Icons.add,
                                                                size: 13,
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        242,
                                                                        240,
                                                                        240)),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                });
                          
                },)),
                        ])
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text('Çorbalar'),
                          Text(
                            'Tümünü Görüntüle',
                            style: TextStyle(
                                color: Color.fromARGB(255, 216, 214, 214)),
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      child: Row(
                        children: [
                          SizedBox(
                            height: 200,
                            width: 391,
                            child:
                            StreamBuilder(
            stream: CorbaBilgi.snapshots(),
            builder: (BuildContext context,
                AsyncSnapshot<QuerySnapshot> asyncSnapShot) {
              if (asyncSnapShot.hasError) {
                return Text('Error:${asyncSnapShot.error}');
              }
              if (asyncSnapShot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: Text('Loading...',
                      style: TextStyle(fontSize: 25, color: Colors.black)),
                );
              } 
                            return ListView.builder(
                              
                                scrollDirection: Axis.horizontal,
                                itemCount: 4,
                                itemBuilder: (context, index) {
                                  DocumentSnapshot documentSnapshot =
                          asyncSnapShot.data!.docs[index];
                                  return Container(
                                    margin: EdgeInsets.symmetric(horizontal: 5),
                                    height: 190,
                                    width: 140,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 26, 26, 24),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 20),
                                        Expanded(
                                          flex: 1,
                                          child: Container(
                                            height: 130,
                                            width: 140,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                                image: DecorationImage(
                                                    image: NetworkImage(
                                                        Corbaimages[index]),
                                                    fit: BoxFit.fill)),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 4,
                                              vertical: 2,
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  documentSnapshot['name'],
                                                  style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 244, 243, 243),
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                Row(
                                                  children: [
                                                    Expanded(
                                                      child: Container(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 5),
                                                        height: 30,
                                                        width: 50,
                                                        decoration: BoxDecoration(
                                                            border: Border.all(
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        224,
                                                                        219,
                                                                        219)),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8)),
                                                        child: Row(
                                                          // ignore: prefer_const_literals_to_create_immutables
                                                          children: [
                                                            Expanded(
                                                                child: Text(
                                                              '126 gram',
                                                              style: TextStyle(
                                                                  fontSize: 11,
                                                                  color: Colors
                                                                      .white),
                                                            )),
                                                            Center(
                                                              child: Icon(
                                                                Icons
                                                                    .arrow_drop_down,
                                                                size: 20,
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        235,
                                                                        233,
                                                                        233),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Expanded(
                                                      child: Container(
                                                        height: 30,
                                                        width: 50,
                                                        decoration: BoxDecoration(
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    231,
                                                                    49,
                                                                    36),
                                                            border: Border.all(
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        244,
                                                                        238,
                                                                        238)),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5)),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          // ignore: prefer_const_literals_to_create_immutables
                                                          children: [
                                                            Icon(Icons.remove,
                                                                size: 13,
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        241,
                                                                        240,
                                                                        240)),
                                                            Text(
                                                              '1',
                                                              style: TextStyle(
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        246,
                                                                        243,
                                                                        243),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                              ),
                                                            ),
                                                            Icon(Icons.add,
                                                                size: 13,
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        242,
                                                                        240,
                                                                        240)),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                });
                          
                }))],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text('Tatlilar'),
                          Text(
                            'Tümünü Görüntüle',
                            style: TextStyle(
                                color: Color.fromARGB(255, 216, 214, 214)),
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      child: Row(
                        children: [
                          SizedBox(
                            height: 200,
                            width: 391,
                            child:
                            StreamBuilder(
            stream: TatliBilgi.snapshots(),
            builder: (BuildContext context,
                AsyncSnapshot<QuerySnapshot> asyncSnapShot) {
              if (asyncSnapShot.hasError) {
                return Text('Error:${asyncSnapShot.error}');
              }
              if (asyncSnapShot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: Text('Loading...',
                      style: TextStyle(fontSize: 25, color: Colors.black)),
                );
              } 
                            return ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 5,
                                itemBuilder: (context, index) {
                                  DocumentSnapshot documentSnapshot =
                          asyncSnapShot.data!.docs[index];
                                  return Container(
                                    margin: EdgeInsets.symmetric(horizontal: 5),
                                    height: 190,
                                    width: 140,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 26, 26, 24),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                         SizedBox(height: 20),
                                        Expanded(
                                          flex: 1,
                                          child: Container(
                                            height: 130,
                                            width: 140,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                                image: DecorationImage(
                                                    image: NetworkImage(
                                                        Tatliimages[index]),
                                                    fit: BoxFit.fill)),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 4,
                                              vertical: 2,
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  documentSnapshot['name'],
                                                  style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 244, 243, 243),
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                Row(
                                                  children: [
                                                    Expanded(
                                                      child: Container(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 5),
                                                        height: 30,
                                                        width: 50,
                                                        decoration: BoxDecoration(
                                                            border: Border.all(
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        224,
                                                                        219,
                                                                        219)),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8)),
                                                        child: Row(
                                                          // ignore: prefer_const_literals_to_create_immutables
                                                          children: [
                                                            Expanded(
                                                                child: Text(
                                                              '126 gram',
                                                              style: TextStyle(
                                                                  fontSize: 11,
                                                                  color: Colors
                                                                      .white),
                                                            )),
                                                            Center(
                                                              child: Icon(
                                                                Icons
                                                                    .arrow_drop_down,
                                                                size: 20,
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        235,
                                                                        233,
                                                                        233),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Expanded(
                                                      child: Container(
                                                        height: 30,
                                                        width: 50,
                                                        decoration: BoxDecoration(
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    231,
                                                                    49,
                                                                    36),
                                                            border: Border.all(
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        244,
                                                                        238,
                                                                        238)),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5)),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          // ignore: prefer_const_literals_to_create_immutables
                                                          children: [
                                                            Icon(Icons.remove,
                                                                size: 13,
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        241,
                                                                        240,
                                                                        240)),
                                                            Text(
                                                              '1',
                                                              style: TextStyle(
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        246,
                                                                        243,
                                                                        243),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                              ),
                                                            ),
                                                            Icon(Icons.add,
                                                                size: 13,
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        242,
                                                                        240,
                                                                        240)),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                });
                },
                            ))],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text('İçecekler'),
                          Text(
                            'Tümünü Görüntüle',
                            style: TextStyle(
                                color: Color.fromARGB(255, 216, 214, 214)),
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      child: Row(
                        children: [
                          SizedBox(
                            height: 200,
                            width: 391,
                            child: 
                            StreamBuilder(
            stream: IcecekBilgi.snapshots(),
            builder: (BuildContext context,
                AsyncSnapshot<QuerySnapshot> asyncSnapShot) {
              if (asyncSnapShot.hasError) {
                return Text('Error:${asyncSnapShot.error}');
              }
              if (asyncSnapShot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: Text('Loading...',
                      style: TextStyle(fontSize: 25, color: Colors.black)),
                );
              } 
                           return ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 9,
                                itemBuilder: (context, index) {
                                  DocumentSnapshot documentSnapshot =
                          asyncSnapShot.data!.docs[index];
                                  return Container(
                                    margin: EdgeInsets.symmetric(horizontal: 5),
                                    height: 190,
                                    width: 140,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 26, 26, 24),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                         SizedBox(height: 20),
                                        Expanded(
                                          flex: 1,
                                          child: Container(
                                            height: 130,
                                            width: 140,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                                image: DecorationImage(
                                                    image: NetworkImage(
                                                        icecekimages[index]),
                                                    fit: BoxFit.fill)),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 4,
                                              vertical: 2,
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                 documentSnapshot['name'],
                                                  style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 244, 243, 243),
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                Row(
                                                  children: [
                                                    Expanded(
                                                      child: Container(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 5),
                                                        height: 30,
                                                        width: 50,
                                                        decoration: BoxDecoration(
                                                            border: Border.all(
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        224,
                                                                        219,
                                                                        219)),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8)),
                                                        child: Row(
                                                          // ignore: prefer_const_literals_to_create_immutables
                                                          children: [
                                                            Expanded(
                                                                child: Text(
                                                              '126 gram',
                                                              style: TextStyle(
                                                                  fontSize: 11,
                                                                  color: Colors
                                                                      .white),
                                                            )),
                                                            Center(
                                                              child: Icon(
                                                                Icons
                                                                    .arrow_drop_down,
                                                                size: 20,
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        235,
                                                                        233,
                                                                        233),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Expanded(
                                                      child: Container(
                                                        height: 30,
                                                        width: 50,
                                                        decoration: BoxDecoration(
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    231,
                                                                    49,
                                                                    36),
                                                            border: Border.all(
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        244,
                                                                        238,
                                                                        238)),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5)),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          // ignore: prefer_const_literals_to_create_immutables
                                                          children: [
                                                            Icon(Icons.remove,
                                                                size: 13,
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        241,
                                                                        240,
                                                                        240)),
                                                            Text(
                                                              '1',
                                                              style: TextStyle(
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        246,
                                                                        243,
                                                                        243),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                              ),
                                                            ),
                                                            Icon(Icons.add,
                                                                size: 13,
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        242,
                                                                        240,
                                                                        240)),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                });
                          
                 }) ,
                      ),
                    
                  ],
                )
              )
                  ])));
  }
}

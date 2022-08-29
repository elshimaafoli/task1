import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class AccountSetting extends StatelessWidget {
  List data1=['Phone Number','E_mail','Birth Date'];
  List data2=['099-555-666','acc@gmail.com','3-11-2000'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.amber,
            flexibleSpace: Padding(
              padding:
                  const EdgeInsets.only(left: 5.0, top: 12.0, bottom: 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_back_ios),
                  ),
                  const Text(
                    'Account Settings',
                    maxLines: 1,
                    style: TextStyle(
                      wordSpacing: 2.0,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            toolbarHeight: 180,
          ),
          body: ListView(
            padding: EdgeInsets.all(20.0),
            children: [
             const  CircleAvatar(
                backgroundImage: AssetImage('images/wel.jpg'),
                radius: 80,
              ),
             const Text(
                'Chy Maa',
                style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
           const   Padding(
                padding:  EdgeInsets.only(top:15.0,bottom:15.0),
                child: Text(
                  'Edit Profile',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              ListView.separated(
                  shrinkWrap: true,
                  itemBuilder:(context, index) => builder(data1[index],data2[index]),
                  separatorBuilder: (context, index) =>Divider(
                    thickness: 2,
                  ),
                  itemCount: 3),
              Divider(
                thickness: 2,
              ),
              Padding(
                padding: const EdgeInsets.only(top:20.0),
                child: Text('Log Out',
                style:TextStyle(
                  color: Colors.red,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                textAlign:TextAlign.center),
              ),
              Divider(
                thickness: 2,
                color: Colors.red,
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget builder(d1, d2) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(children: [
            Text(
              d1,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              d2,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
          ]),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.edit),
          ),
        ],);

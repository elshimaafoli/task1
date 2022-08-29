import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'account_settings.dart';
void main() => runApp(AccountSetting());
class Profile extends StatefulWidget {
  @override
  State<Profile> createState() => _ProfileState();
}
class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.black26,
          leading: Icon(Icons.arrow_back),
          title: Text('Profile'),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.favorite_border),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.menu),
            ),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: CircleAvatar(
                backgroundImage: AssetImage("images/wel.jpg"),
                radius: 120,
              ),
            ),
            Text(
              'Smile',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Software Developer',
              style: TextStyle(
                fontSize: 22,
                color: Colors.black38,
              ),
            ),
            Text(
              "Create great projects",
              style: TextStyle(
                fontSize: 22,
                color: Colors.black87,
              ),
            ),
            Text(
              '@smile_acc',
              style: TextStyle(
                decoration: TextDecoration.underline,
                fontSize: 22,
                color: Colors.black87,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Image(
                    image: AssetImage("images/linkedin.png"),
                    width: 35,
                    height: 35,
                    color: Colors.blue,
                  ),
                  Image(
                    image: AssetImage("images/twitter.png"),
                    width: 35,
                    height: 35,
                    //color: Colors.blue,
                  ),
                  Image(
                    image: AssetImage("images/meduium.png"),
                    width: 35,
                    height: 35,
                    //color: Colors.blue,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Divider(
                color: Colors.black26,
                height: 15,
                thickness: 3,
              ),
            ),
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                    children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("images/dribble.png"),
                    radius: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Text(
                      '1.3K',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    'Followers',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.black38,
                    ),
                  ),
                ]),
                Column(
                    children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("images/behance.png"),
                    radius: 40,
                  ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Text(
                          '1.3K',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text(
                        'Followers',
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.black38,
                        ),
                      ),
                ]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

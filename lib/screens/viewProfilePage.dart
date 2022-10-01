import 'package:acc_finder/models/appConstants.dart';
import 'package:acc_finder/screens/guestHomePage.dart';
import 'package:acc_finder/views/formWidgets.dart';
import 'package:acc_finder/views/textWidgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../views/listWidgets.dart';

class ViewProfilePage extends StatefulWidget {

  static final String routeName = "/viewProfilePageRoute";

  const ViewProfilePage({Key? key}) : super(key: key);

  @override
  State<ViewProfilePage> createState() => _ViewProfilePageState();
}

class _ViewProfilePageState extends State<ViewProfilePage> {

  void _signUp() {
    Navigator.pushNamed(context, GuestHomePage.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppBarText(text: 'View Profile'),
      ),
      body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(25, 50, 25, 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget> [
                      Container(
                        width: MediaQuery.of(context).size.width * 3 / 5,
                        child: AutoSizeText(
                          'Hi my name is Test Name',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                          maxLines: 2,
                        ),
                      ),
                    CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: MediaQuery.of(context).size.width / 9.5,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/img_avatar.png'),
                        radius: MediaQuery.of(context).size.width / 10,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: Text(
                    'About me:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: AutoSizeText(
                      'I am a guy who likes travelling and having fun while I see cool stuff',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: Text(
                    'Location',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Row(
                    children: [
                      Icon(Icons.home),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: AutoSizeText(
                          'Lives in Vancouver, Canada',
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: Text(
                    'Reviews',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: ReviewForm(),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: ListView.builder(
                     itemCount: 2,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                            child: ReviewListTile(),
                          );
                      },
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}

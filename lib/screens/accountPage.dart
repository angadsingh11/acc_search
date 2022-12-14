import 'package:acc_finder/screens/loginPage.dart';
import 'package:acc_finder/screens/personalInfoPage.dart';
import 'package:acc_finder/screens/viewProfilePage.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {

  const AccountPage({Key? key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {

  void _logout() {
      Navigator.pushNamed(context, LoginPage.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(20, 50, 20, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget> [
            Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget> [
                     MaterialButton(
                         onPressed: () {
                           Navigator.pushNamed(context, ViewProfilePage.routeName);
                         },
                         child: CircleAvatar(
                           backgroundColor: Colors.black,
                           radius: MediaQuery.of(context).size.width / 9.5,
                           child: CircleAvatar(
                             backgroundImage: AssetImage('assets/images/img_avatar.png'),
                             radius: MediaQuery.of(context).size.width / 10,
                              ),
                         ),
                         ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          AutoSizeText(
                              'Test Name',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                          ),
                          AutoSizeText(
                            'user@gmail.com',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
              ),
            ),
            ListView(
              shrinkWrap: true,
              children: <Widget>[
                 MaterialButton(
                     height: MediaQuery.of(context).size.height / 9.0,
                     onPressed: () {
                       Navigator.pushNamed(context, PersonalInfoPage.routeName);
                     },
                     child: AccountPageListTile(text: 'Personal Information', iconData: Icons.person),
                 ),
                MaterialButton(
                  height: MediaQuery.of(context).size.height / 9.0,
                  onPressed: () {},
                  child: AccountPageListTile(text: 'Become a Host', iconData: Icons.hotel),
                ),
                MaterialButton(
                  height: MediaQuery.of(context).size.height / 9.0,
                  onPressed: _logout,
                  child: AccountPageListTile(text: 'Logout', iconData: null),
                ),
              ],
            )
          ],
        ),
    );
  }
}


class AccountPageListTile extends StatelessWidget {

  final String text;
  final IconData? iconData;

  AccountPageListTile({Key? key, required this.text, this.iconData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.all(0.0),
      leading: Text(
          this.text,
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.normal
          ),
      ),
      trailing: Icon(
          this.iconData,
          size: 35.0,
      ),
    );
  }
  
}




import 'package:acc_finder/models/appConstants.dart';
import 'package:acc_finder/screens/accountPage.dart';
import 'package:acc_finder/screens/explorePage.dart';
import 'package:acc_finder/screens/inboxPage.dart';
import 'package:acc_finder/screens/savedPage.dart';
import 'package:acc_finder/screens/tripsPage.dart';
import 'package:acc_finder/views/textWidgets.dart';
import 'package:flutter/material.dart';

class GuestHomePage extends StatefulWidget {

  static final String routeName = "/guestHomePageRoute";

  const GuestHomePage({Key? key}) : super(key: key);

  @override
  State<GuestHomePage> createState() => _GuestHomePageState();
}

class _GuestHomePageState extends State<GuestHomePage> {

  int _selectedIndex = 4;

  final List<String> _pageTitles = [
      'Explore',
      'Saved',
      'Trips',
      'Inbox',
      'Profile'
  ];

  final List<Widget> _pages = [
      ExplorePage(),
      SavedPage(),
      TripsPage(),
      InboxPage(),
      AccountPage()
  ];

  BottomNavigationBarItem _bottomNavigationItem(int index, IconData iconData, String text) {
      return BottomNavigationBarItem(
          icon: Icon(iconData, color: AppConstants.nonSelectedIconColor,),
          activeIcon: Icon(iconData, color: AppConstants.selectedIconColor,),
          label: text,
          );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: AppBarText(text: _pageTitles[_selectedIndex]),
          automaticallyImplyLeading: false,
        ),
        body: _pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
                _selectedIndex = index;

            });
          },
          currentIndex: _selectedIndex,
          selectedItemColor: AppConstants.selectedIconColor,
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem> [
              _bottomNavigationItem(0, Icons.search, _pageTitles[0]),
              _bottomNavigationItem(1, Icons.favorite_border, _pageTitles[1]),
              _bottomNavigationItem(2, Icons.hotel, _pageTitles[2]),
              _bottomNavigationItem(3, Icons.message, _pageTitles[3]),
              _bottomNavigationItem(4, Icons.person_outline, _pageTitles[4]),
          ],
        ),
    );
  }
}

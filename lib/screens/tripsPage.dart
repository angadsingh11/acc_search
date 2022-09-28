import 'package:flutter/material.dart';

class TripsPage extends StatefulWidget {

  const TripsPage({Key? key}) : super(key: key);

  @override
  State<TripsPage> createState() => _TripsPageState();
}

class _TripsPageState extends State<TripsPage> {

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text('Trips Page')
    );
  }
}

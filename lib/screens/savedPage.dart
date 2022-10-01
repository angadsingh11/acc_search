import 'package:flutter/material.dart';

import '../views/gridWidgets.dart';

class SavedPage extends StatefulWidget {

  const SavedPage({Key? key}) : super(key: key);

  @override
  State<SavedPage> createState() => _SavedPageState();
}

class _SavedPageState extends State<SavedPage> {

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.fromLTRB(25, 50, 25, 0),
        child: GridView.builder(
            physics: const ScrollPhysics(),
            shrinkWrap: true,
            itemCount: 2,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                childAspectRatio: 3/4
            ),
            itemBuilder: (context, index) {
              return Stack(children: [
                PostingGridTile(),
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Container(
                      width: 30.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: IconButton(
                        padding: EdgeInsets.all(0.0),
                        onPressed: () {},
                        icon: Icon(Icons.clear,color: Colors.black,),
                      ),
                    ),
                  ),
                ),
              ],
              );
            }
        ),
    );
  }
}

import 'package:acc_finder/models/AppConstants.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ReviewListTile extends StatefulWidget {

  ReviewListTile({Key? key}) : super(key: key);

  @override
  _ReviewListTileState createState() => _ReviewListTileState();
}


class _ReviewListTileState extends State<ReviewListTile> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/img_avatar.png'),
              radius: MediaQuery.of(context).size.width / 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 15.0),
              child: AutoSizeText(
                  'Nimish',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0
                ),
              ),
            ),
            RatingBar.builder(
              initialRating: 3,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemSize: 23.0,
              itemPadding: EdgeInsets.symmetric(horizontal: 4.5),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: AppConstants.selectedIconColor,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0, bottom: 15.0),
          child: AutoSizeText(
            'Great guy, really enjoyed his stay at this place, would definitely recommend him to other people.',
            style: TextStyle(
              fontSize: 18.0
            ),
          ),
        )
      ],
    );
  }


}
import 'package:acc_finder/models/appConstants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ReviewForm extends StatefulWidget {

  ReviewForm({Key? key}) : super(key: key);

  @override
  _ReviewFormState createState() => _ReviewFormState();

}

class _ReviewFormState extends State<ReviewForm> {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 2.0
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Form(
                child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Enter review text',
                        ),
                        maxLines: 2,
                        style: TextStyle(
                          fontSize: 20.0
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                        child: RatingBar.builder(
                          initialRating: 2.5,
                          itemSize: 40.0,
                          itemCount: 5,
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: AppConstants.selectedIconColor,
                          ),
                          onRatingUpdate: (rating) {

                            },
                        ),
                      ),
                    ],
               ),
            ),
            MaterialButton(
                onPressed: () {},
                child: Text('Submit'),
                color: Colors.blue,
            )
          ],
        ),
      ),
    );
  }


}
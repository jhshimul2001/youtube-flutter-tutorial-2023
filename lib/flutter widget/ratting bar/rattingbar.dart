import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RattingBars extends StatefulWidget {
  const RattingBars({Key? key}) : super(key: key);

  @override
  State<RattingBars> createState() => _RattingBarsState();
}

class _RattingBarsState extends State<RattingBars> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: RatingBar.builder(
              initialRating: 0,
              itemPadding: EdgeInsets.all(15),
              itemCount: 5,
              itemBuilder: ((context, index) => Icon(
                Icons.star,
                color: Colors.yellow,
              )),
              onRatingUpdate: (value) {}),
        ),
    );
  }
}

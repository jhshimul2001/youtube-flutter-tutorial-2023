import 'package:flutter/material.dart';

class ItemNote extends StatelessWidget {
  final Color color;
  const ItemNote({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 5),
                color: Theme.of(context).primaryColor.withOpacity(0.3),
                spreadRadius: 2,
                blurRadius: 5
            )
          ]
      ),
      child: Row(
        children: [
          Container(
            padding:  EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: color
            ),
            child: Column(
              children: [
                Text('MAY', style: TextStyle(
                    color: Colors.white
                )),
                const SizedBox(height: 5),
                Text('05', style: TextStyle(
                    color: Colors.white
                )),
                const SizedBox(height: 5),
                Text('2023', style: TextStyle(
                    color: Colors.white
                )),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('This is sample title', style: TextStyle(fontSize: 20)),
                  const SizedBox(height: 5),
                  Text(
                    'We have indeed in the Messenger of Allah, a good example for anyone...',
                    style: TextStyle(
                        color: Colors.grey,
                      fontSize: 17
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
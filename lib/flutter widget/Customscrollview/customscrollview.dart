import 'package:flutter/material.dart';

class CustomScrollcviews extends StatefulWidget {
  const CustomScrollcviews({Key? key}) : super(key: key);

  @override
  State<CustomScrollcviews> createState() => _CustomScrollcviewsState();
}

class _CustomScrollcviewsState extends State<CustomScrollcviews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
          slivers: <Widget> [
            SliverAppBar(
              pinned: true,
              expandedHeight: 150.0,
              actions: [
                Icon(Icons.add)
              ],
              flexibleSpace: FlexibleSpaceBar(
                title: Text('Demo'),centerTitle: true,
              ),
            ),
            SliverGrid(
              gridDelegate:  SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200.0,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                childAspectRatio: 0.9,
              ),
              delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  return Container(
                    alignment: Alignment.center,
                    color: Colors.teal,
                    child: Text('Grid Item $index'),
                  );
                },
                childCount: 20,
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                    (context, index) {
                  return Card(
                    margin: EdgeInsets.all(15),
                    child: Container(
                      color: Colors.orange.shade200,
                      height: 60,
                      alignment: Alignment.center,
                      child: Text(
                        "List Item $index",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  );
                },
                childCount: 10,
              ),
            ),

          ],
        )
    );
  }
}

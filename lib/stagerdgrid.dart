import 'package:flutter/material.dart';
import 'package:staggerdgrid/model/staggerdgrid.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';


class Grid extends StatefulWidget {
  const Grid({super.key});

  @override
  State<Grid> createState() => _GridState();
}

class _GridState extends State<Grid> {
  List items =[
    StaggerdGrid(img:'images/images1.jpeg'),
    StaggerdGrid(img:'images/images2.jpeg'),
    StaggerdGrid(img:'images/images3.jpeg'),
    StaggerdGrid(img:'images/images4.jpeg'),
    StaggerdGrid(img:'images/images5.jpeg'),
    StaggerdGrid(img:'images/images6.jpeg'),

  ];
  List<StaggeredTile> _cardTile = <StaggeredTile>[
    StaggeredTile.count(2, 2),
    StaggeredTile.count(2, 1),
    StaggeredTile.count(1, 2),
    StaggeredTile.count(1, 2),
    StaggeredTile.count(2, 3),
    StaggeredTile.count(2, 2),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Staggerd GridView"),
        backgroundColor: Colors.brown,
      ),
      backgroundColor: Colors.black,
      body: Container(
        child: StaggeredGridView.count(
          crossAxisCount: 4,
          staggeredTiles: _cardTile,
          children: items.map((item) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(item.img, fit: BoxFit.cover,),
            );
          }).toList(),
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
        ),
      )

    );
  }
}
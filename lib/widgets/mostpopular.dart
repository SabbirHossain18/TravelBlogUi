import 'package:flutter/material.dart';
import 'package:travelui/model/travel.dart';

class Mostpopular extends StatefulWidget {
  @override
  _MostpopularState createState() => _MostpopularState();
}

class _MostpopularState extends State<Mostpopular> {
  final _list = Travel.mostpopular();
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        var travel = _list[index];
        return Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                bottom: 30,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image(
                  width: 150,
                  fit: BoxFit.cover,
                  image: AssetImage(
                    travel.url,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 40,
              left: 40,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    travel.name,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    travel.location,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ],
        );
      },
      separatorBuilder: (context, index) => SizedBox(
        width: 0,
      ),
      itemCount: _list.length,
    );
  }
}

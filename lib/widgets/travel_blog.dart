import 'package:flutter/material.dart';
import 'package:travelui/model/travel.dart';

class TravelBlog extends StatelessWidget {
  final _list = Travel.generateBlog();
  final _pgctrl = PageController(viewportFraction: 0.9);
  TravelBlog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: _pgctrl,
      physics: BouncingScrollPhysics(),
      itemCount: _list.length,
      itemBuilder: (context, index) {
        var travel = _list[index];
        return Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                right: 20,
                top: 15,
                bottom: 30,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image(
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                  image: AssetImage(
                    travel.url,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 40,
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              bottom: 80,
              left: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    travel.name,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    travel.location,
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}

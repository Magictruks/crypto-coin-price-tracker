import 'package:crypto_market/app/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_polygon/flutter_polygon.dart';

class FloatingPolygonButton extends StatelessWidget {
  const FloatingPolygonButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        SizedBox(
          width: 80,
          child: ClipPolygon(
            sides: 6,
            borderRadius: 15,
            child: Container(
              height: 50,
              width: 50,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    kFloatingButtonPurpleColor,
                    kFloatingButtonOrangeColor
                  ],
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                ),
              ),
              child: const Center(
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: -10,
          width: 80,
          height: 80,
          child: Container(
            decoration: const BoxDecoration(
              gradient: RadialGradient(
                colors: [kFloatingButtonRadient, Colors.transparent],
                center: Alignment.center,
                radius: 0.8,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(90.0),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

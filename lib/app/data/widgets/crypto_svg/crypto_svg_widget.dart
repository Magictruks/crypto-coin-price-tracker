import 'package:crypto_market/app/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CrytoSvg extends StatelessWidget {
  const CrytoSvg({
    Key? key,
    this.size = 50.0,
    required this.token,
  }) : super(key: key);

  final double size;
  final String token;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(90.0),
            ),
          ),
          width: size - 2,
          height: size - 2,
        ),
        SvgPicture.asset(
          '$kCryptoBlackIconPath/$token.svg',
          width: size,
        ),
      ],
    );
  }
}

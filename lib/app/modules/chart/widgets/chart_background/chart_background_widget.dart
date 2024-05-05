import 'package:crypto_market/app/constant.dart';
import 'package:flutter/cupertino.dart';

class ChartBackground extends StatelessWidget {
  const ChartBackground({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: RadialGradient(
          colors: [kDetailOrangeGradient, kBackgroundColor],
          center: Alignment.bottomCenter,
          radius: 3.2,
        ),
      ),
      child: Container(
        decoration: const BoxDecoration(
          gradient: RadialGradient(
            colors: [kDetailPurpleGradient, kBackgroundColor],
            center: Alignment.topCenter,
            radius: 1.5,
          ),
        ),
        child: child,
      ),
    );
  }
}

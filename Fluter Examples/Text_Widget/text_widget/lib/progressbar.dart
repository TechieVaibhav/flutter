import 'package:flutter/material.dart';

class AppProgressBar extends StatelessWidget {
  const AppProgressBar(
      {super.key,
      required this.width,
      required this.height,
      required this.progress, this.isCenterPercentageVisible});

  final double width;
  final double height;
  final double progress;
  bool? isCenterPercentageVisible;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(10),
      ), // empty color
      child: Stack(
        children: [
          Container(
            width: width * progress,
            height: height,
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(10)),
          ), // fill color
          Align(
              alignment: Alignment.center,
              child: Text(
                '${(progress * 100).toInt()}%',
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ))
        ],
      ),
    );
  }
}

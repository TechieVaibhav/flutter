import 'package:flutter/material.dart';

class VaibhavButton extends StatelessWidget {
  final String btnname;
  final Color? bgcolor;
  final double? width;
  final Icon? icon;
  final TextStyle? textStyle;
  final VoidCallback? callbackAction;

  const VaibhavButton(
      {super.key,
      required this.btnname,
      required this.bgcolor,
      required this.width,
      this.icon,
      this.textStyle,
      this.callbackAction});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        callbackAction!();
      },
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.yellow,
          shadowColor: Colors.blue,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(11)),
          )),
      child: icon != null
          ? Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              icon!,
              const SizedBox(
                width: 10,
              ),
              Text(
                btnname,
                style: textStyle,
              )
            ])
          : Text(
              btnname,
              style: textStyle,
            ),
    );
  }
}

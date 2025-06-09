import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String btnName;
  final Color bgColor;
  final TextStyle? textStyle;
  final VoidCallback? callBack;
  final Icon? icon;

  const Button({
    Key? key,
    required this.btnName,
    this.bgColor = Colors.black,
    this.icon,
    this.textStyle,
    this.callBack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: callBack, // Safe call: if null, button is disabled
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) icon!,
          if (icon != null) const SizedBox(width: 8),
          Text(
            btnName,
            style: textStyle,
          ),
        ],
      ),
    );
  }
}

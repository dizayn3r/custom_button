import 'package:flutter/material.dart';

class Buttons extends StatefulWidget {
  final double width;
  final double height;
  final double radius;
  final double elevation;
  final String txt;
  final double fontSize;
  final Function() onPressed;
  final Color background;
  final Color textColor;
  final Color? borderColor;

  const Buttons({
    Key? key,
    required this.width,
    required this.height,
    required this.radius,
    required this.elevation,
    required this.txt,
    required this.fontSize,
    required this.onPressed,
    required this.background,
    required this.textColor,
    this.borderColor,
  }) : super(key: key);

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.onPressed,
      style: ElevatedButton.styleFrom(
        elevation: widget.elevation,
        fixedSize: Size(widget.width, widget.height),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(widget.radius),
        ),
        side: BorderSide(
            color: widget.borderColor == null
                ? widget.background
                : widget.borderColor!,
            width: 2.0),
      ),
      child: Text(
        widget.txt,
        style: TextStyle(
          color: widget.textColor,
          fontSize: widget.fontSize,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

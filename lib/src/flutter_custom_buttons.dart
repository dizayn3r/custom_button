import 'package:flutter/material.dart';

class Buttons extends StatefulWidget {
  final double width;
  final double height;
  final double radius;
  final double elevation;
  final String txt;
  final double fontSize;
  final Function() onTap;
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
    required this.onTap,
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
    return GestureDetector(
      onTap: widget.onTap,
      child: Card(
        elevation: widget.elevation,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(widget.radius),
        ),
        child: Container(
          width: widget.width,
          height: widget.height,
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: widget.background,
            borderRadius: BorderRadius.circular(widget.radius),
            border: Border.all(
              color: widget.borderColor == null
                  ? widget.background
                  : widget.borderColor!,
              width: 2.0,
            ),
          ),
          child: Text(
            widget.txt,
            style: TextStyle(
              color: widget.textColor,
              fontSize: widget.fontSize,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

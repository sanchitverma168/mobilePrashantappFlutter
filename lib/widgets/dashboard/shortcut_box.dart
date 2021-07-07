import 'dart:ui';
import 'dart:math' as math;
import 'package:flutter/material.dart';

class ShortCut extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String text;
  final bool transform;
  const ShortCut({
    Key? key,
    required this.transform,
    required this.color,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double h = 25.0;
    const double w = h;
    const double space = h / 2 - 5;
    const double borderradius = space * 2;
    const double iconsize = h * 2 - 8;
    const double textsize = h * 0.6;
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderradius),
              color: Colors.grey.shade300),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
            child: transform == true
                ? Transform.rotate(
                    angle: -math.pi / 4,
                    child: RenderIcon(
                        icon: icon, color: color, iconsize: iconsize))
                : RenderIcon(icon: icon, color: color, iconsize: iconsize),
          ),
        ),
        SizedBox(
          height: 5.0,
        ),
        Center(
            child: Text(text,
                style: TextStyle(color: Colors.black, fontSize: textsize)))
      ],
    );
  }
}

class RenderIcon extends StatelessWidget {
  const RenderIcon({
    Key? key,
    required this.icon,
    required this.color,
    required this.iconsize,
  }) : super(key: key);

  final IconData icon;
  final Color color;
  final double iconsize;

  @override
  Widget build(BuildContext context) {
    return Icon(icon, color: color, size: iconsize);
  }
}

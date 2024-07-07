// lib/views/widgets/custom_button.dart
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final Color? color;
  final TextStyle? textStyle;
  final double? width;

  const CustomButton(
      {Key? key,
      required this.label,
      required this.onPressed,
      this.color,
      this.textStyle,
      this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: width ?? 287,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          backgroundColor: color ?? const Color(0xff111827),
        ),
        child: Text(
          label,
          style: textStyle ?? TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}


class OSButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final Color? color;
  final TextStyle? textStyle;
  final double? width;

  const OSButton(
      {Key? key,
        required this.label,
        required this.onPressed,
        this.color,
        this.textStyle,
        this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: onPressed,
      child: Container(
        width: width ?? 287,
        height: 56,
        decoration: BoxDecoration(
           // No fill color
          border: Border.all(
            style: BorderStyle.solid,
            color: color ?? const Color(0xffE5E7EB), // Border color
            width: 1, // Border width
          ),
          borderRadius: BorderRadius.circular(16), // Rounded border radius
        ),
        child: Center(
          child: SvgPicture.asset(label),
        ),
      ),
    );



    //   SizedBox(
    //   height: 56,
    //   width: width ?? 287,
    //   child: InkWell(child: Container(
    //
    //     child: SvgPicture.asset(),
    //   ),),
    //   // child: ElevatedButton(
    //   //   onPressed: onPressed,
    //   //   style: ElevatedButton.styleFrom(
    //   //     shape: RoundedRectangleBorder(
    //   //       borderRadius: BorderRadius.circular(16.0),
    //   //     ),
    //   //     backgroundColor: color ?? const Color(0xff111827),
    //   //     elevation: 0,
    //   //     side: const BorderSide(width: 1.0, color: Color(0xffE5E7EB))
    //   //   ),
    //   //   child: SvgPicture.asset(
    //   //     label,
    //   //     //style: textStyle ?? TextStyle(color: Colors.white),
    //   //   ),
    //   // ),
    // );
  }
}

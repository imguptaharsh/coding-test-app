import 'package:codeditor/variables/variables.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomButton extends StatelessWidget {
  final String? text;
  final VoidCallback onTap;
  final Color? color;
  final String? icon;
  final double? width;
  final double? height;
  final double? fontSize;
  final bool? isProcessing;
  final Gradient? gradient;
  final bool? isText;
  const CustomButton({
    Key? key,
    this.text,
    required this.onTap,
    this.color,
    this.width = 100,
    this.height = 50,
    this.fontSize = 18,
    this.icon,
    this.isText = true,
    this.gradient = GlobalVariables.gradient,
    this.isProcessing = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: width,
      height: height,
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: isProcessing == false ? onTap : () {},
          borderRadius: BorderRadius.circular(10),
          child: Stack(
            alignment: Alignment.center,
            children: [
              // Text and Icon
              Opacity(
                opacity: isProcessing == true ? 0.0 : 1.0,
                child: Container(
                  // width: width,
                  height: height,
                  padding: const EdgeInsets.symmetric(
                      vertical: 12.0, horizontal: 24.0),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (icon != null)
                          SvgPicture.asset(
                            icon!,
                            // color: Colors.white,
                            width: 30,
                          ),
                        if (icon != null && isText == true)
                          const SizedBox(width: 10),
                        if (isText == true)
                          Text(
                            text!,
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: fontSize,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              ),
              // CircularProgressIndicator
              Visibility(
                visible: isProcessing == true,
                child: const CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import "package:flutter/material.dart";

class CustomSnackBar extends StatelessWidget {
  CustomSnackBar({
    Key? key,
    this.text = ''
  }) : super(key: key);

  final String text;

  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          height: 55,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20)),
            border: Border.all(
              color: Colors.lightGreen,
              width: 2,
            ),
          ),
          child: Center(
            child: Text(
                        text,
                        style: const TextStyle(
                            color: Colors.lightGreen,
                            fontSize: 15,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                          ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      )
          ),
        ),
      ],
    );
  }
}

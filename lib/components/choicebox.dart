import "package:flutter/material.dart";

class ChoiceBox extends StatelessWidget {
  final String choiceName;
  final int choice;
  final int selectedChoice;
  final Function()? onTap;

  ChoiceBox({
    super.key, 
    required this.choiceName,
    required this.choice, 
    required this.selectedChoice, 
    required this.onTap,
    });

  @override
  Widget build(BuildContext context) {
    final isSelected = (choice == selectedChoice);
    final color = isSelected ? Color(0xFFABACFF) : Colors.black.withOpacity(0.1);

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: ShapeDecoration(
          color: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          )
        ),
        width: 100,
        height: 36,
        child: Center(
          child: Text(
            choiceName,
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w100,
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class PaymentMethodItem extends StatelessWidget {
  final bool isActive;

  const PaymentMethodItem({super.key, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 600),
      width: 103,
      height: 62,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1.50,
            color: isActive ? Colors.green : Colors.grey,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        shadows: const [
          BoxShadow(
            color: Colors.green,
            blurRadius: 4,
            offset: Offset(0, 0),
            spreadRadius: 0,
          ),
        ],
      ),

      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: Center(
          child: Image.asset(
            'assets/images/SVGRepo_iconCarrier.png',
            height: 24,
          ),
        ),
      ),
    );
  }
}

import 'package:checkout_payment/features/chechout/presentation/views/widgets/custom_button.dart';
import 'package:checkout_payment/features/chechout/presentation/views/widgets/order_info_item.dart';
import 'package:checkout_payment/features/chechout/presentation/views/widgets/total_price.dart';
import 'package:flutter/material.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          SizedBox(height: 18),
          Image.asset('assets/images/basket_image.png'),
          SizedBox(height: 3),
          OrderInfoItem(title: "Order Subtotal", value: "\$42.97"),
          SizedBox(height: 3),

          OrderInfoItem(title: "Discount", value: "\$0.00"),
          SizedBox(height: 3),

          OrderInfoItem(title: "Shipping", value: "\$8"),
          const Divider(height: 34, thickness: 2, color: Color(0xffC7C7C7)),

          TotalPrice(title: "Total", value: '\$50.97'),
          SizedBox(height: 16),
          CustomButton(),
          SizedBox(height: 12),
        ],
      ),
    );
  }
}

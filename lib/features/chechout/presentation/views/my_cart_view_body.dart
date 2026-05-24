import 'package:checkout_payment/features/chechout/data/repos/checkout_repo_impl.dart';
import 'package:checkout_payment/features/chechout/presentation/manger/cubit/payment_cubit.dart';
import 'package:checkout_payment/features/chechout/presentation/views/widgets/custom_button.dart';
import 'package:checkout_payment/features/chechout/presentation/views/widgets/order_info_item.dart';
import 'package:checkout_payment/features/chechout/presentation/views/widgets/payment_methods_bottom_sheet.dart';
import 'package:checkout_payment/features/chechout/presentation/views/widgets/total_price.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          SizedBox(height: 18),
          Expanded(child: Image.asset('assets/images/basket_image.png')),
          SizedBox(height: 3),
          OrderInfoItem(title: "Order Subtotal", value: "\$42.97"),
          SizedBox(height: 3),

          OrderInfoItem(title: "Discount", value: "\$0.00"),
          SizedBox(height: 3),

          OrderInfoItem(title: "Shipping", value: "\$8"),
          const Divider(height: 34, thickness: 2, color: Color(0xffC7C7C7)),

          TotalPrice(title: "Total", value: '\$50.97'),
          SizedBox(height: 16),
          CustomButton(
            text: 'Complete Payment',
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return BlocProvider(
                    create: (context) => PaymentCubit(CheckoutRepoImpl()),
                    child: PaymentMethodsBottomSheet(),
                  );
                },
              );
            },
          ),
          SizedBox(height: 40),
        ],
      ),
    );
  }
}

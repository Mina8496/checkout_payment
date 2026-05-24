import 'package:checkout_payment/features/chechout/presentation/views/widgets/custom_button.dart';
import 'package:checkout_payment/features/chechout/presentation/views/widgets/payment_methods_list_view.dart';
import 'package:flutter/material.dart';

class PaymentMethodsBottomSheet extends StatelessWidget {
  const PaymentMethodsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 16),
          PaymentMethodsListView(),
          const SizedBox(height: 32),
          CustomButton(onTap: () {}, text: 'contine'),
        ],
      ),
    );
  }
}

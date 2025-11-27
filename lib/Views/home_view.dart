import "package:finance_app/widgets/action_buttons_widget.dart";
import "package:finance_app/widgets/custom_appbar.dart";
import "package:finance_app/widgets/total_value.dart";
import "package:flutter/material.dart";
import "package:flutter/services.dart";
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light.copyWith(
        statusBarColor: Color(0xFF1A1A1A),
        systemNavigationBarColor: Color(0xFF1E1E1E),
        systemNavigationBarIconBrightness: Brightness.light,
      ),
      child: Stack(
        children: [
          Scaffold(
            backgroundColor: Color(0xFF1A1A1A),
            body: SafeArea(
              child: Column(
                children: [
                  const CustomAppBar(),
                  Expanded(
                    child: SingleChildScrollView(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 20),
                          
                          const TotalValueSection(),

                          SizedBox(height: 20),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              CurrencyCard(
                                currency: "USD",
                                amount: "\$85,354,200.65",
                              ),
                              CurrencyCard(
                                currency: "EURO",
                                amount: "€79,230,122.10",
                              ),
                            ],
                          ),

                          SizedBox(height: 24),

                          ActionButtonRow(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CurrencyCard extends StatelessWidget {
  final String currency;
  final String amount;

  const CurrencyCard({
    super.key,
    required this.currency,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 155,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Color(0xFF2A2A2A),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Color(0xFF3A3A3A)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            currency,
            style: TextStyle(
              color: Color(0xFF9E9E9E),
              fontSize: 14,
            ),
          ),
          SizedBox(height: 6),
          Text(
            amount,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

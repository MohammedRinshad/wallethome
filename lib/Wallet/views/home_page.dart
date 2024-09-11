import 'package:flutter/material.dart';
import 'package:xwallet/Wallet/widgets/refresh_circle.dart';
import 'package:xwallet/Wallet/widgets/see_all_text_button.dart';
import 'package:xwallet/Wallet/widgets/usdtPay_home_widget.dart';
import '../components/button_nav_bar.dart';
import '../components/top_app_bar.dart';
import '../components/transaction_item.dart';
import '../dummy_data/transaction_history.dart';
import '../widgets/UsdtHomeWidget.dart';



class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: TopAppBar(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButton: const Padding(
        padding: EdgeInsets.only(bottom: 16),
        child: BottomNavBar(),
      ),
      body: Column(
        children: [
          const SizedBox(height: 16),
          Stack(
            clipBehavior: Clip.none,
            children: [
              const USDTHomeWidget(),
              Positioned(
                bottom: -40,
                left: width / 2 - 35,
                child: const RefreshCircle()
              ),
            ],
          ),
          const SizedBox(height: 10),
          const BnbHomeWidget(),
          const SizedBox(height: 16),
          Row(
            children: [
              const SizedBox(width: 16),
              const Text(
                "Recent Transactions",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              SeeAllButton(onPressed: (){}),
              const SizedBox(width: 16),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: transactions.length,
              itemBuilder: (context, index) {
                return TransactionItem(transaction: transactions[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
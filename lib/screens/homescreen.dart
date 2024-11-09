import 'package:aba_ui_clone/widgets/aba_logo.dart';
import 'package:aba_ui_clone/widgets/menu_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar,
      drawer: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.menu),
        color: Colors.white,
      ),
      body: _buildBody(context),
    );
  }

  AppBar get buildAppBar {
    return AppBar(
      backgroundColor: const Color(0xFF0b5e84),
      title: const AbaLogo(),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.notifications_none_outlined,
            color: Colors.white,
            size: 30,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.phone_callback,
            color: Colors.white,
            size: 30,
          ),
        ),
      ],
    );
  }

  Widget _buildBody(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Flexible(
              flex: 3,
              child: Container(
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    colors: [Colors.white, Theme.of(context).primaryColor],
                  ),
                ),
                child: GridView.count(
                  crossAxisCount: 3,
                  crossAxisSpacing: 1.0,
                  mainAxisSpacing: 1.0,
                  children: const [
                    MenuButton(icon: Icons.account_balance_wallet, title: "Accounts"),
                    MenuButton(icon: Icons.credit_card, title: "Cards"),
                    MenuButton(icon: Icons.payment, title: "Payments"),
                    MenuButton(icon: Icons.library_add, title: "New Account"),
                    MenuButton(icon: Icons.atm, title: "Cash to ATM"),
                    MenuButton(icon: Icons.swap_horiz, title: "Transfers"),
                    MenuButton(icon: Icons.qr_code_scanner, title: "Scan QR"),
                    MenuButton(icon: Icons.monetization_on, title: "Loans"),
                    MenuButton(icon: Icons.place, title: "Locator"),
                  ],
                ),
              )),
          Flexible(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.only(left: 20),
              width: double.infinity,
              color: const Color(0xFF0fc9cc),
              child: Stack(
                children: [
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Quick Transfer",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Create your template to make your transfer quicker",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    right: -40,
                    bottom: -40,
                    child: Icon(
                      Icons.circle,
                      color: Colors.white.withOpacity(0.8),
                      size: 130,
                    ),
                  ),
                  Positioned(
                    right: -1,
                    bottom: -1,
                    child: Icon(
                      Icons.sync_alt,
                      color: const Color(0xFF00bcd5).withOpacity(0.8),
                      size: 60,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.only(left: 20),
              width: double.infinity,
              color: const Color(0xFFda424d),
              child: Stack(
                children: [
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Quick Payment",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Paying your bills with templates is faster",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    right: -40,
                    bottom: -40,
                    child: Icon(
                      Icons.circle,
                      color: Colors.white.withOpacity(0.8),
                      size: 130,
                    ),
                  ),
                  Positioned(
                    right: -1,
                    bottom: -1,
                    child: Icon(
                      CupertinoIcons.money_dollar,
                      color: const Color(0xFF00bcd5).withOpacity(0.8),
                      size: 60,
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

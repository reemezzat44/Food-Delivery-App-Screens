import 'package:assignment15_screen/burger_card.dart';
import 'package:assignment15_screen/custom_bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff232227),
        actions: const [
          Icon(
            Icons.search,
            color: Colors.white,
          )
        ],
        leading: const Icon(
          Icons.sort,
          color: Colors.white,
        ),
      ),
      backgroundColor: const Color(0xff232227),
      body: DefaultTabController(
        length: 4,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Hot & Fast Food",
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
            const Text(
              "Delivers On Time",
              style: TextStyle(color: Colors.white30, fontSize: 17),
            ),
            const TabBar(
                labelColor: Colors.white,
                unselectedLabelColor: Colors.white24,
                indicatorColor: Colors.transparent,
                dividerColor: Colors.transparent,
                tabs: [
                  Tab(
                    text: "Burger",
                  ),
                  Tab(
                    text: "Pizza",
                  ),
                  Tab(
                    text: "Cheese",
                  ),
                  Tab(
                    text: "Pasta",
                  ),
                ]),
            Expanded(
              child: TabBarView(children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          BurgerCard(
                            imagePath: "assets/images/burger1.png",
                            itemName: "Cheese Burger",
                            price: "55",
                          ),
                          BurgerCard(
                            imagePath: "assets/images/burger2.png",
                            itemName: "Beef Burger",
                            price: "99",
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          BurgerCard(
                            imagePath: "assets/images/chicken_burger3.png",
                            itemName: "Chicken Burger",
                            price: "78",
                          ),
                          BurgerCard(
                            imagePath: "assets/images/mushroom_bruger4.png",
                            itemName: "Mushroom Burger",
                            price: "100",
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Text("data"),
                const Text("data"),
                const Text("data"),
              ]),
            )
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}

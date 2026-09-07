import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BurgerCard extends StatelessWidget {
  String? imagePath;
  String? itemName;
  String? price;
  BurgerCard({
    super.key,
    this.imagePath,
    this.itemName,
    this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 180,
          height: 230,
          child: Card(
            elevation: 9,
            color: const Color.fromARGB(255, 44, 44, 49),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(imagePath!, height: 130, width: 150),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      itemName!,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const Text(
                      "Single , Double",
                      style: TextStyle(
                        color: Colors.white30,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$$price",
                      style: const TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontWeight: FontWeight.w500),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.add_shopping_cart_outlined,
                          color: Colors.white,
                        )),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class ProductsWidget extends StatelessWidget {
  final Color? color;
  const ProductsWidget({super.key, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(20)),
      width: double.infinity,
      height: MediaQuery.of(context).size.height / 5,
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(right: 100),
                  decoration: const BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: const Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                ),
                Expanded(
                  child: Image.asset(
                    "assets/shoes.png",
                    fit: BoxFit.cover,
                  ),
                )
              ],
            ),
          ),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Nike Air Running",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              const Text(
                  "Best of All in just one place Find your perfect product only here"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "\$ 139.00",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 16, 103, 19),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text("Buy"))
                ],
              )
            ],
          ))
        ],
      ),
    );
  }
}

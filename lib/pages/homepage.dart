import 'package:flutter/material.dart';
import 'package:test_ui/widgets/products.dart';
import 'package:flat_icons_flutter/flat_icons_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: const Icon(
            FlatIcons.menu_2,
            color: Colors.black,
          ),
          actions:const [
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/men.jpg"),
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: [
              const Text(
                "Nike Collection",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("Everything you need just one place"),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                    hintText: "Search here...",
                    isDense: true,
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(25)),
                    filled: true,
                    fillColor: Colors.grey.shade100,
                    suffixIcon: const Icon(
                      FlatIcons.search,
                    )),
              ),
              const SizedBox(
                height: 10,
              ),
              TabBar(
                labelPadding: EdgeInsets.zero,
                indicatorPadding: const EdgeInsets.symmetric(vertical: 10),
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black,
                indicator: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20)),
                tabs: const [
                  Tab(
                    text: "All",
                  ),
                  Tab(
                    text: "Jordan",
                  ),
                  Tab(
                    text: "Running",
                  ),
                  Tab(
                    text: "Golf",
                  ),
                  Tab(
                    text: "Casual",
                  )
                ],
              ),
              const ProductsWidget(color: Color.fromRGBO(214, 251, 255, 1)),
              const ProductsWidget(color: Color.fromRGBO(255, 225, 228, 1)),
              const ProductsWidget(color: Color.fromRGBO(235, 255, 198, 1)),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flat_icons_flutter/flat_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:test_ui/widgets/cart_calendar.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          leading: const Icon(Icons.arrow_back_ios_new_outlined),
          centerTitle: true,
          title: const Text("July"),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: Icon(
                Icons.add,
                color: Colors.blue,
              ),
            )
          ],
        ),
        body: Column(children: [
          Card(
            child: Container(
              margin: const EdgeInsets.only(top: 10),
              height: MediaQuery.of(context).size.height / 8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CartCalendarWidget(
                    name: "MON",
                    day: "24",
                    widget: const [
                      CircleAvatar(
                        radius: 3,
                        backgroundColor: Colors.blue,
                      ),
                      CircleAvatar(
                        radius: 3,
                        backgroundColor: Colors.orange,
                      )
                    ],
                  ),
                  CartCalendarWidget(name: "TUE", day: "25"),
                  CartCalendarWidget(
                    name: "WED",
                    day: "26",
                    widget: const [
                      CircleAvatar(
                        radius: 3,
                        backgroundColor: Colors.blue,
                      ),
                      CircleAvatar(
                        radius: 3,
                        backgroundColor: Colors.orange,
                      ),
                      CircleAvatar(
                        radius: 3,
                        backgroundColor: Colors.red,
                      )
                    ],
                  ),
                  CartCalendarWidget(name: "THU", day: "27"),
                  CartCalendarWidget(name: "FRI", day: "28"),
                  CartCalendarWidget(name: "SAT", day: "29"),
                  CartCalendarWidget(name: "SUN", day: "30"),
                ],
              ),
            ),
          ),
          Expanded(
              child: ListView(
            padding: const EdgeInsets.all(10),
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 12),
                // color: Colors.amber,
                height: MediaQuery.of(context).size.height / 6.5,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("12:00"),
                        Text("13:00"),
                        Text("14:00"),
                      ],
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(5)),
                        margin: const EdgeInsets.all(10),
                        padding: const EdgeInsets.all(15),
                        child: Column(children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  alignment: Alignment.center,
                                  height: 24,
                                  width: 24,
                                  decoration: const BoxDecoration(
                                    color: Colors.black,
                                    shape: BoxShape.circle,
                                  ),
                                  child: const Text(
                                    "Uber",
                                    style: TextStyle(
                                        fontSize: 4, color: Colors.white),
                                  )),
                              const SizedBox(
                                width: 5,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "Uber car rental assistance",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text("12:00-14:00")
                                ],
                              )
                            ],
                          ),
                        ]),
                      ),
                    )
                  ],
                ),
              ),
              /////!!!
              Container(
                margin: const EdgeInsets.symmetric(vertical: 22),
                height: 20,
                color: const Color.fromARGB(255, 246, 207, 220),
                child: Row(
                  children: [
                    Container(
                      width: 3,
                      color: Colors.pink,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    const Text("14:30")
                  ],
                ),
              ),
              /////!!!
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 12),
                // color: Colors.amber,
                height: MediaQuery.of(context).size.height / 6,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("15:00"),
                        Text("16:00"),
                        Text("17:00"),
                      ],
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 236, 159, 185),
                            borderRadius: BorderRadius.circular(5)),
                        alignment: Alignment.topCenter,
                        margin: const EdgeInsets.only(
                            top: 10, bottom: 55, left: 15, right: 15),
                        padding: const EdgeInsets.all(15),
                        child: Column(children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                ),
                                child: const Icon(
                                  Icons.attach_file,
                                  color: Color.fromARGB(255, 236, 159, 185),
                                ),
                              ),
                              // Icon(Icons.circle),
                              const SizedBox(
                                width: 5,
                              ),
                             const Padding(
                                padding: EdgeInsets.only(top: 4.0),
                                child:  Text(
                                  "Uber car rental assistance",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ]),
                      ),
                    )
                  ],
                ),
              ),

              ///!!!
              SizedBox(
                height: MediaQuery.of(context).size.height / 18,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 12),
                height: MediaQuery.of(context).size.height / 2.5,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("18:00"),
                        Text("19:00"),
                        Text("20:00"),
                        Text("21:00"),
                        Text("22:00"),
                        Text("23:00"),
                      ],
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 173, 211, 242),
                            borderRadius: BorderRadius.circular(5)),
                        margin: const EdgeInsets.all(10),
                        padding: const EdgeInsets.all(15),
                        child: Column(children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                decoration: const BoxDecoration(
                                  color: Colors.green,
                                  shape: BoxShape.circle,
                                ),
                                child: const Icon(
                                  Icons.change_circle,
                                  color: Colors.yellow,
                                ),
                              ),
                              // Icon(Icons.circle),
                              const SizedBox(
                                width: 5,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "Uber car rental assistance",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text("18:00-23:30")
                                ],
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Icon(Icons.menu),
                              SizedBox(
                                width: 5,
                              ),
                              Expanded(
                                child: Text(
                                    "our picked up car is parked in front of the company heartquarter just for the test gather our picked up car is parked in front of the company heartquarter just for the test gather"),
                              )
                            ],
                          ),
                        ]),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ))
        ]));
  }
}

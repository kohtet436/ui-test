import 'package:flutter/material.dart';

class CartCalendarWidget extends StatelessWidget {
  final String name;
  final String day;
  List<Widget>? widget;
  CartCalendarWidget(
      {super.key, required this.name, required this.day, this.widget});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(name),
        const SizedBox(
          height: 17,
        ),
        Container(
          width: 30,
          height: 30,
          alignment: Alignment.center,
          decoration:
              BoxDecoration(border: Border.all(color: Colors.grey.shade300)),
          child: Text(day),
        ),
        Row(
          children: widget ?? [SizedBox()],
        )
      ],
    );
  }
}

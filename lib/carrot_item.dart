import 'package:flutter/material.dart';

class CarrotItem extends StatelessWidget {
  String title, addr;
  int price;

  CarrotItem({
    required this.title,
    required this.addr,
    required this.price,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Hero(
          tag: 'image',
          child : 
           Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(image: AssetImage('images/피자.jpg'))),
        ),
    ),
        const SizedBox(
          width: 20,
        ),
        Flexible(
          flex: 1,
          child: SizedBox(
            height: 150,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold)),
                Text(
                  addr,
                  style: const TextStyle(
                      fontSize: 17, decoration: TextDecoration.underline),
                ),
                Text('$price'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [Icon(Icons.favorite), Text('12')],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<CarrotItem> items = [];
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    items.add(
      CarrotItem(title: '피자팝니다1.', addr: '성남시 중원구1', price: 10000),
    );
    items.add(
      CarrotItem(title: '피자팝니다2.', addr: '성남시 중원구2', price: 10000),
    );
    items.add(
      CarrotItem(title: '피자팝니다3.', addr: '성남시 중원구3', price: 10000),
    );
    items.add(
      CarrotItem(title: '피자팝니다5.', addr: '성남시 중원구4', price: 10000),
    );
    items.add(
      CarrotItem(title: '피자팝니다6.', addr: '성남시 중원구5', price: 10000),
    );
    items.add(
      CarrotItem(title: '피자팝니다7.', addr: '성남시 중원구6', price: 10000),
    );
    items.add(
      CarrotItem(title: '피자팝니다8.', addr: '성남시 중원구7', price: 10000),
    );
    items.add(
      CarrotItem(title: '피자팝니다9.', addr: '성남시 중원구8', price: 10000),
    );
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('Malbob market'),
        backgroundColor: Colors.orange,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [for (var item in items) item],
        ),
      ),
    ));
  }
}

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
        Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(image: AssetImage('images/피자.jpg'))),
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

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String id = 'HomePage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.bagShopping,
              color: Color.fromARGB(255, 224, 139, 11),
            ),
          ),
        ],
        centerTitle: true,
        elevation: 0,
        title: const Text(
          'Store Hoem ',
          style: TextStyle(
            color: Color.fromARGB(255, 224, 139, 11),
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Center(
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 130,
                width: 220,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    blurRadius: 20,
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 0,
                    offset: const Offset(10, 10),
                  )
                ]),
                child: const Card(
                  elevation: 10,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Handbag  Lv ',
                          style: TextStyle(color: Colors.grey, fontSize: 19),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(r'$359'),
                            Icon(
                              FontAwesomeIcons.solidHeart,
                              color: Colors.red,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              // todo image over container
              Positioned(
                right: 32,
                bottom: 75,
                child: Image.asset(
                  'assets/images/img.jpg',
                  height: 100,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

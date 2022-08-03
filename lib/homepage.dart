import 'package:flutter/material.dart';
import 'package:hotelapp_ui/constants.dart';
import 'package:hotelapp_ui/reusable.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(
          children: [
            //header is located here
            Container(
              height: 225,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/hotelpicmain.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(.8),
                      Colors.black.withOpacity(.4),
                    ],
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      'Best Hotels Ever',
                      style: kMainText,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 3),
                      margin: const EdgeInsets.symmetric(horizontal: 40),
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          border: InputBorder.none,
                          hintText: 'Search for hotels...',
                          hintStyle: kSearchInputStyle,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
            //main body started here
            const SizedBox(height: 30),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Best Hotels',
                    style: kbesthotels,
                  ),
                  const SizedBox(height: 20),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        ReusableCard('assets/hotel1.jpeg', 'The Plaza'),
                        ReusableCard('assets/hotel2.jpeg', 'Claridge\'s'),
                        ReusableCard('assets/hotel3.jpeg', 'Raffles'),
                        ReusableCard('assets/hotel4.jpeg', 'Shelbourne'),
                        ReusableCard('assets/hotel5.jpeg', 'The Ritz'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            //main body started here
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Luxary Hotels',
                    style: kbesthotels,
                  ),
                  const SizedBox(height: 30),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        ReusableCard('assets/hotel3.jpeg', 'Raffles'),
                        ReusableCard('assets/hotel4.jpeg', 'Shelbourne'),
                        ReusableCard('assets/hotel5.jpeg', 'The Ritz'),
                        ReusableCard('assets/hotel1.jpeg', 'The Plaza'),
                        ReusableCard('assets/hotel2.jpeg', 'Claridge\'s'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Luxary Hotels',
                    style: kbesthotels,
                  ),
                  const SizedBox(height: 30),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        ReusableCard('assets/hotel5.jpeg', 'The Ritz'),
                        ReusableCard('assets/hotelpiclast.jpeg', 'The Sakura'),
                        ReusableCard('assets/hotel2.jpeg', 'Claridge\'s'),
                        ReusableCard('assets/hotel3.jpeg', 'Raffles'),
                        ReusableCard('assets/hotel4.jpeg', 'Shelbourne'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

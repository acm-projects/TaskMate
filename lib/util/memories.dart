import 'package:flutter/material.dart';
import 'package:task_mate/pages/memories_page.dart';

class MemoriesBar extends StatelessWidget {
  const MemoriesBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327,
      padding: EdgeInsets.all(15),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 4,
            offset: Offset(0, 4),
            spreadRadius: 0,
          )
        ],
      ),
      child: Center(
          child: Column(
        children: [
          Row(
            children: [
              SizedBox(height: 16),
              Container(
                padding: EdgeInsets.zero, // Set padding to zero
                margin: EdgeInsets.zero, // Set margin to zero
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Memories()),
                    );
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 207, 208, 255),
                    padding: EdgeInsets.all(5),
                    minimumSize: Size(20, 20),
                  ),
                  child: const Text(
                    'Memories',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 5),
          const Row(
            children: [
              Text(
                'You have ten posts',
                style: TextStyle(
                  color: Color(0xFF808080),
                  fontSize: 12,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                  height: 0.11,
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Container(
              margin: const EdgeInsets.only(
                  top: 10.0), // Adjust the margin as needed
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 45,
                        height: 75, // Set the desired height
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(221, 170, 170, 170),
                          borderRadius: BorderRadius.circular(3),
                        ),
                        child: Image.asset('lib/images/tasks1.JPG'),
                      ),
                      Container(
                        width: 45,
                        height: 75, // Set the desired height
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(221, 170, 170, 170),
                          borderRadius: BorderRadius.circular(3),
                        ),
                        child: Image.asset('lib/images/tasks2.JPG'),
                      ),
                      Container(
                        width: 45,
                        height: 75, // Set the desired height
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(221, 170, 170, 170),
                          borderRadius: BorderRadius.circular(3),
                        ),
                        child: Image.asset('lib/images/tasks3.JPG'),
                      ),
                      Container(
                        width: 45,
                        height: 75, // Set the desired height
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(221, 170, 170, 170),
                          borderRadius: BorderRadius.circular(3),
                        ),
                        child: Image.asset('lib/images/tasks4.JPG'),
                      ),
                      Container(
                        width: 45,
                        height: 75, // Set the desired height
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(221, 170, 170, 170),
                          borderRadius: BorderRadius.circular(3),
                        ),
                        child: Image.asset('lib/images/tasks5.JPG'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 45,
                        height: 75, // Set the desired height
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(221, 170, 170, 170),
                          borderRadius: BorderRadius.circular(3),
                        ),
                        child: Image.asset('lib/images/tasks5.JPG'),
                      ),
                      Container(
                        width: 45,
                        height: 75, // Set the desired height
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(221, 170, 170, 170),
                          borderRadius: BorderRadius.circular(3),
                        ),
                        child: Image.asset('lib/images/tasks1.JPG'),
                      ),
                      Container(
                        width: 45,
                        height: 75, // Set the desired height
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(221, 170, 170, 170),
                          borderRadius: BorderRadius.circular(3),
                        ),
                        child: Image.asset('lib/images/tasks2.JPG'),
                      ),
                      Container(
                        width: 45,
                        height: 75, // Set the desired height
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(221, 170, 170, 170),
                          borderRadius: BorderRadius.circular(3),
                        ),
                        child: Image.asset('lib/images/tasks3.JPG'),
                      ),
                      Container(
                        width: 45,
                        height: 75, // Set the desired height
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(221, 170, 170, 170),
                          borderRadius: BorderRadius.circular(3),
                        ),
                        child: Image.asset('lib/images/tasks6.JPG'),
                      ),
                    ],
                  ),
                ],
              )),
        ],
      )),
    );
  }
}

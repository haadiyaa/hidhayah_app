import 'package:flutter/material.dart';
import 'package:hidhayah/utils/constants/constants.dart';

class QuizmainpageWrapper extends StatelessWidget {
  const QuizmainpageWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return const QuizmainPage();
  }
}

class QuizmainPage extends StatelessWidget {
  const QuizmainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Constants.greenDark2,
      appBar: AppBar(
        title: const Text('Quiz'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Center(
            child: SizedBox(
              height: size.height,
              width: size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: size.width * 0.9,
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Constants.greenLight),
                    child: const Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('1.'),
                        Text('mnbvfcxsdfghnbvfghjk\nbvnbgfth'),
                      ],
                    ),
                  ),
                  Constants.height15,
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          width: size.width * 0.9,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Constants.greenLight),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
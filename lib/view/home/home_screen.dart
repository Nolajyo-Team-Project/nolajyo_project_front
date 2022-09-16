import 'package:flutter/material.dart';
import 'package:nolajyo_project/res/components/base_screen.dart';
import 'package:nolajyo_project/res/constants/font_data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.add,
          size: 40,
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text("우리 동네 HOT 모임", style: titleTextStyle),
              const SizedBox(
                width: 8,
              ),
              const Spacer(),
              IconButton(
                padding: const EdgeInsets.all(0),
                onPressed: () {},
                icon: const Icon(Icons.search),
              ),
              IconButton(
                padding: const EdgeInsets.all(0),
                onPressed: () {},
                icon: const Icon(
                  Icons.menu,
                  size: 30,
                ),
              ),
            ],
          ),
          GridView.builder(
            shrinkWrap: true,
            itemCount: 8,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              mainAxisSpacing: 33,
              crossAxisSpacing: 28,
            ),
            itemBuilder: (context, index) => const ColoredBox(color: Colors.red),
          )
        ],
      ),
    );
  }
}

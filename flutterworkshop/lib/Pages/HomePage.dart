import 'package:flutter/material.dart';
import 'package:flutterworkshop/Provider/FruitProvider.dart';
import 'package:flutterworkshop/Widgets/FruitContainer.dart';
import 'package:flutterworkshop/constant.dart';
import 'package:provider/provider.dart'; // Make sure this is imported

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // ✅ This listens to provider updates
    final fruits = Provider.of<FruitProvider>(context).allFruits;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(paddingNum),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Grocery",
                style: titleTextStyle.copyWith(fontSize: 40),
              ),
              const SizedBox(height: 16),
              Expanded(
                child: fruits.isEmpty
                    ? const Center(child: Text("No fruits loaded yet."))
                    : ListView.builder(
                        itemCount: fruits.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: paddingNum / 2,
                            ),
                            child: FruitContainer(fruitModel: fruits[index]),
                          );
                        },
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

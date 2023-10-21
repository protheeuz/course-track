import 'dart:math';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

import '../models/model_page.dart';


class HomePage extends StatelessWidget {
  Faker palsu = Faker();

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Product> product = List.generate(50, (index) {
      return Product(
          "https://picsum.photos/id/$index/200/300",
          faker.food.restaurant(),
          faker.person.name(),
          10000 + Random().nextInt(1000000));
    });

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            backgroundColor: Colors.transparent,
            context: context,
            builder: (context) => Container(
              height: 400,
              decoration: const BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              child: Theme(
                data:
                    Theme.of(context).copyWith(splashColor: Colors.transparent),
                child: const SizedBox(),
              ),
            ),
          );
        },
        child: const Icon(Icons.fingerprint),
      ),
      appBar: AppBar(
        title: const Text("Flutter Model"),
        centerTitle: true,
      ),
      body: GridView.builder(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: ((context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              clipBehavior: Clip.hardEdge,
              color: Colors.grey[300],
              shadowColor: Colors.black54,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: Colors.teal,
                    height: MediaQuery.of(context).size.height * 0.135,
                    width: MediaQuery.of(context).size.width,
                    child: Image.network(product[index].imageURL,
                        fit: BoxFit.cover),
                  ),
                  Text(product[index].title, maxLines: 1),
                  Text(product[index].seller, maxLines: 1),
                  Text("Rp ${product[index].price}"),
                ],
              ),
            ),
          );
        }),
        itemCount: product.length,
      ),
    );
  }
}

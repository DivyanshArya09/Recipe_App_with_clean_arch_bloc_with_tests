import 'package:flutter/material.dart';

class CarouselItem extends StatelessWidget {
  const CarouselItem({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          height: size.height * .23,
          width: size.width * .68,
          decoration: const BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                top: 10,
                left: 10,
                child: Icon(
                  Icons.save,
                  size: size.width * .06,
                ),
              ),
              Positioned(
                bottom: 10,
                right: 10,
                child: Text(
                  'Dish name',
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        fontSize: size.width * .04,
                      ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

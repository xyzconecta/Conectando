import 'package:flutter/material.dart';

class FormHeaderWidget extends StatelessWidget {
  const FormHeaderWidget({
    Key? key,
    required this.image,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image(image: AssetImage(image), height: size.height * 0.2),
        Text(title, style: Theme.of(context).textTheme.displaySmall),
        const SizedBox(height: 20),
        Text(subTitle, style: Theme.of(context).textTheme.labelLarge)
      ],
    );
  }
}
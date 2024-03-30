import 'package:flutter/material.dart';

class PTopicContainer extends StatelessWidget {
  const PTopicContainer({
    super.key, required this.title, required this.subTitle, this.onPressed,
  });

  final String title;
  final String subTitle;
  final onPressed;

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: deviceWidth,
        decoration: BoxDecoration(
            color: Colors.black54, borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Practice $title :',
                      style: const TextStyle(color: Colors.white, fontSize: 30)),
                  const Icon(
                    Icons.favorite,
                    color: Colors.orange,
                  )
                ],
              ),
              Text(
                subTitle,
                maxLines: 2,
                style: const TextStyle(color: Colors.white, fontSize: 20),
              )
            ],
          ),
        ),
      
    ));
  }
}

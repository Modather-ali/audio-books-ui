import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import '../../app_theme.dart';

class BookCard extends StatelessWidget {
  final String bookName;
  final String bookType;
  final String bookCover;
  final String bookContent;
  final int watchesNumber;
  final int likesNumber;
  final int listeningCompletion;
  final List<Color> backGroundColors;
  const BookCard({
    Key? key,
    required this.bookName,
    required this.bookType,
    required this.bookCover,
    required this.watchesNumber,
    required this.likesNumber,
    required this.listeningCompletion,
    required this.backGroundColors,
    required this.bookContent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.47,
      width: MediaQuery.of(context).size.width * 0.7,
      margin: const EdgeInsets.fromLTRB(20, 20, 0, 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: AssetImage(bookCover),
          fit: BoxFit.fill,
        ),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0, 4),
            blurRadius: 10,
            spreadRadius: 3,
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 7),
            child: Text(
              bookName,
              style:
                  appTheme().textTheme.headline1!.copyWith(color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 7, bottom: 5),
            child: Text(
              bookType,
              style: appTheme().textTheme.bodyText2!,
            ),
          ),
          const Divider(
            color: Colors.white,
            height: 0,
          ),
          Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              _listeningCompletion(),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.visibility,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                  Text(
                    watchesNumber.toString(),
                    style: const TextStyle(color: Colors.white, fontSize: 13),
                  ),
                ],
              ),
              const SizedBox(
                width: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                  Text(
                    likesNumber.toString(),
                    style: const TextStyle(color: Colors.white, fontSize: 13),
                  ),
                ],
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _listeningCompletion() {
    return Row(
      children: [
        CircularPercentIndicator(
          radius: 15,
          lineWidth: 2.5,
          percent: listeningCompletion / 100,
        ),
        const SizedBox(width: 10),
        Text(
          listeningCompletion.toString() + "%",
          style: const TextStyle(color: Colors.white, fontSize: 13),
        ),
      ],
    );
  }
}

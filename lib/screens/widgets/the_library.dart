import 'package:flutter/material.dart';
import '../../app_theme.dart';
import '../../modules/audio_book.dart';
import '../reading_screen.dart';
import 'book_card.dart';

class TheLibrary extends StatelessWidget {
  const TheLibrary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.only(bottom: 20),
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (AudioBook audioBook in audioBooksList)
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>
                              ReadingScreen(audioBook: audioBook)));
                    },
                    child: Hero(
                      tag: audioBook.bookName,
                      child: BookCard(
                        bookName: audioBook.bookName,
                        bookType: audioBook.bookType,
                        bookCover: audioBook.bookCover,
                        bookContent: audioBook.bookContent,
                        likesNumber: audioBook.likesNumber,
                        listeningCompletion: audioBook.listeningCompletion,
                        watchesNumber: audioBook.watchesNumber,
                        backGroundColors: [
                          audioBook.backGroundColors[0],
                          audioBook.backGroundColors[1],
                          audioBook.backGroundColors[2],
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Recommended",
                  style: appTheme().textTheme.headline1,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "View all",
                    style: appTheme().textTheme.bodyText2!.copyWith(
                          color: const Color(0xFFe85d04),
                        ),
                  ),
                ),
              ],
            ),
          ),
          _recommendedBook(context),
        ],
      ),
    );
  }

  Widget _recommendedBook(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (AudioBook audioBook in audioBooksList)
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ReadingScreen(
                              audioBook: audioBook,
                            )));
                  },
                  child: Container(
                    margin: const EdgeInsets.only(left: 10, bottom: 7, top: 5),
                    height: 190,
                    width: 150,
                    decoration: BoxDecoration(
                      color: const Color(0xFFe85d04),
                      borderRadius: BorderRadius.circular(17),
                      image: DecorationImage(
                        image: AssetImage(audioBook.bookCover),
                        fit: BoxFit.fill,
                      ),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(4, 4),
                          blurRadius: 15,
                          spreadRadius: 1,
                        )
                      ],
                    ),
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow[800],
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow[800],
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow[800],
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow[800],
                    ),
                    const Icon(
                      Icons.star_outline,
                    ),
                  ],
                ),
                Text(
                  audioBook.bookName,
                  style: appTheme().textTheme.bodyText2,
                )
              ],
            )
        ],
      ),
    );
  }
}

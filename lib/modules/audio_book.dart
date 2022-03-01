import 'package:flutter/painting.dart';

class AudioBook {
  final String bookName;
  final String bookType;
  final String bookCover;
  final String bookContent;
  final int watchesNumber;
  final int likesNumber;
  // how many percent user listen to this book
  final int listeningCompletion;
  // I put same colors to all books, but they must be different
  final List<Color> backGroundColors;

  AudioBook({
    required this.bookName,
    required this.bookType,
    required this.bookCover,
    required this.watchesNumber,
    required this.likesNumber,
    required this.listeningCompletion,
    required this.backGroundColors,
    required this.bookContent,
  });
}

List<AudioBook> audioBooksList = [
  AudioBook(
    bookName: "All We Have",
    bookType: "A Novel",
    bookCover: 'assets/images/all_we_have.jpg',
    bookContent: aboutTheReunionBook,
    watchesNumber: 259,
    likesNumber: 41,
    listeningCompletion: 75,
    backGroundColors: [
      const Color(0xFFf20089),
      const Color(0xFFdb00b6),
      const Color(0xFFbc00dd),
    ],
  ),
  AudioBook(
    bookName: "Atomic Habits",
    bookType: "Human Development",
    bookCover: 'assets/images/atomic_habits.jpg',
    bookContent: aboutTheReunionBook,
    watchesNumber: 96,
    likesNumber: 66,
    listeningCompletion: 43,
    backGroundColors: [
      const Color(0xFFf20089),
      const Color(0xFFdb00b6),
      const Color(0xFFbc00dd),
    ],
  ),
  AudioBook(
    bookName: "Deep Breath Hold Tight",
    bookType: "A Novel",
    bookCover: 'assets/images/deep_breath_hold_tight.jpg',
    bookContent: aboutTheReunionBook,
    watchesNumber: 971,
    likesNumber: 67,
    listeningCompletion: 100,
    backGroundColors: [
      const Color(0xFFf20089),
      const Color(0xFFdb00b6),
      const Color(0xFFbc00dd),
    ],
  ),
  AudioBook(
    bookName: "The Martian",
    bookType: "A Novel",
    bookCover: 'assets/images/the_martian.jpg',
    bookContent: aboutTheReunionBook,
    watchesNumber: 130,
    likesNumber: 17,
    listeningCompletion: 75,
    backGroundColors: [
      const Color(0xFFf20089),
      const Color(0xFFdb00b6),
      const Color(0xFFbc00dd),
    ],
  ),
  AudioBook(
    bookName: "The Reunion",
    bookType: "A Novel",
    bookCover: 'assets/images/the_reunion.jpg',
    bookContent: aboutTheReunionBook,
    watchesNumber: 366,
    likesNumber: 55,
    listeningCompletion: 82,
    backGroundColors: [
      const Color(0xFFf20089),
      const Color(0xFFdb00b6),
      const Color(0xFFbc00dd),
    ],
  ),
  AudioBook(
    bookName: "The Settlers",
    bookType: "A Novel",
    bookCover: 'assets/images/the_settlers.jpg',
    bookContent: aboutTheReunionBook,
    watchesNumber: 507,
    likesNumber: 75,
    listeningCompletion: 100,
    backGroundColors: [
      const Color(0xFFf20089),
      const Color(0xFFdb00b6),
      const Color(0xFFbc00dd),
    ],
  ),
];

String aboutTheReunionBook = '''
  From the USA Today bestselling author of The Wedding Game comes a new romantic comedy about the antics that ensue when three siblings come together for their parents' fiftieth-anniversary party.

Martin and Peggy Chance believe love should last a lifetime. With their fiftieth wedding anniversary on the horizon, they've modeled a beautiful relationship for their three grown children. But to their dismay, that lesson hasn't quite caught on--the three siblings just can't seem to take a chance and find love in their own lives.

There's Ford, the eldest, devoted to his work and resistant to romance...or so he claims. Cooper, the middle child, can't get past his divorce--until he reconnects with a feisty baker from his past. And Palmer, the baby of the family, is the free-spi...
''';

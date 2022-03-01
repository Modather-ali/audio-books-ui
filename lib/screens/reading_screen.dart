import 'package:flutter/material.dart';
import '/app_theme.dart';
import '../modules/audio_book.dart';

class ReadingScreen extends StatefulWidget {
  final AudioBook audioBook;
  const ReadingScreen({Key? key, required this.audioBook}) : super(key: key);

  @override
  _ReadingScreenState createState() => _ReadingScreenState();
}

class _ReadingScreenState extends State<ReadingScreen> {
  double _sliderValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.audioBook.backGroundColors.last,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                  backgroundColor: widget.audioBook.backGroundColors.last,
                  expandedHeight: MediaQuery.of(context).size.height * 0.65,
                  actions: [
                    PopupMenuButton(itemBuilder: (context) {
                      return [];
                    }),
                  ],
                  flexibleSpace: FlexibleSpaceBar(
                    background: _bookCover(
                      bookCover: widget.audioBook.bookCover,
                      backgroundColors: widget.audioBook.backGroundColors,
                    ),
                  )),
              SliverList(
                delegate: SliverChildListDelegate([
                  _chapterText(
                      bookName: widget.audioBook.bookName,
                      bookContent: widget.audioBook.bookContent)
                ]),
              ),
            ],
          ),
          _progressBar(),
        ],
      ),
    );
  }

  _bookCover(
      {required String bookCover, required List<Color> backgroundColors}) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            backgroundColors[0],
            backgroundColors[1],
            backgroundColors[2],
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.width * 0.6,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(bookCover),
                fit: BoxFit.fill,
              ),
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.black87.withOpacity(0.35),
                  offset: const Offset(4, 4),
                  blurRadius: 25,
                  spreadRadius: 7,
                )
              ],
            ),
          ),
          Divider(
            endIndent: MediaQuery.of(context).size.width * 0.2,
            indent: MediaQuery.of(context).size.width * 0.2,
            thickness: 5,
            height: 40,
            color: Colors.black.withOpacity(0.15),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.skip_previous_outlined,
                    color: Colors.grey,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Card(
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.play_arrow_outlined,
                    ),
                  ),
                ),
              ),
              Card(
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.skip_next_outlined,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _chapterText({
    required String bookName,
    required String bookContent,
  }) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        children: [
          Divider(
            endIndent: MediaQuery.of(context).size.width * 0.4,
            indent: MediaQuery.of(context).size.width * 0.4,
            thickness: 5,
            height: 40,
            color: Colors.black.withOpacity(0.1),
          ),
          Text(
            bookName,
            style: appTheme().textTheme.bodyText1!.copyWith(fontSize: 27),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "About this Book",
              style: appTheme().textTheme.headline1!.copyWith(
                    fontSize: 18,
                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: SelectableText(
              bookContent,
              style: const TextStyle(fontSize: 16, color: Colors.black54),
            ),
          )
        ],
      ),
    );
  }

  Widget _progressBar() {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          children: [
            Text(
              "${_sliderValue.toString().split('.')[0]}:00",
              style: const TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.w700),
            ),
            Expanded(
              child: Slider(
                value: _sliderValue,
                min: 0,
                max: 180,
                inactiveColor: Colors.grey,
                onChanged: (value) {
                  setState(() {
                    _sliderValue = value;
                  });
                },
              ),
            ),
            const Text(
              "180:00",
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
    );
  }
}

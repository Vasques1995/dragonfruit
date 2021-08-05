import 'package:dragonfruit/modules/bookshelf/controller/bookshelf_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class BookshelfPage extends StatefulWidget {
  BookshelfPage({Key? key}) : super(key: key);

  @override
  _BookshelfPageState createState() => _BookshelfPageState();
}

class _BookshelfPageState
    extends ModularState<BookshelfPage, BookshelfController> {
  double size = 400;

  @override
  Widget build(BuildContext context) {
    //TODO Loader effect while waiting to fetch Books
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: controller.inc,
        child: Icon(Icons.videogame_asset),
      ),
      body: Container(
        decoration: BoxDecoration(
          //TODO Tabuleiro para rebolar dados
          image: DecorationImage(
              image: AssetImage('assets/background/wooden_floor.jpg'),
              fit: BoxFit.fill),
        ),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: ConstrainedBox(
            constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height,
                minHeight: MediaQuery.of(context).size.height * 0.25),
            child: bookshelfSheet(),
          ),
        ),
      ),
    );
  }

  Widget bookshelfSheet() {
    return AnimatedContainer(
      height: size,
      width: MediaQuery.of(context).size.width,
      duration: Duration(milliseconds: 200),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: GestureDetector(
              onVerticalDragUpdate: (DragUpdateDetails dragUpdateDetails) {
                debugPrint('${dragUpdateDetails.globalPosition.distance}');
                setState(() {
                  this.size = MediaQuery.of(context).size.height -
                      dragUpdateDetails.globalPosition.dy;
                });
              },
              child: Container(
                height: 5,
                width: 20,
                color: Colors.grey,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Container(
              height: 35,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 20),
                children: [
                  ActionChip(
                    label: Text('All'),
                    onPressed: () {
                      debugPrint('All');
                    },
                  ),
                  ActionChip(
                    label: Text('Downloaded'),
                    onPressed: () {
                      debugPrint('Downloaded');
                    },
                  ),
                  ActionChip(
                    label: Text('Sourcebooks'),
                    onPressed: () {
                      debugPrint('Sourcebooks');
                    },
                  ),
                  ActionChip(
                    label: Text('Adventures'),
                    onPressed: () {
                      debugPrint('Adventures');
                    },
                  ),
                  ActionChip(
                    label: Text('Extensions'),
                    onPressed: () {
                      debugPrint('Extensions');
                    },
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

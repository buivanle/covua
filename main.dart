import 'package:flutter/material.dart';

class ChessBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chess Board'),
      ),
      body: Center(
        child: Container(
          width: 320.0,
          height: 320.0,
          child: GridView.builder(
            itemCount: 64,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 8,
            ),
            itemBuilder: (BuildContext context, int index) {
              return Container(
                color: (index % 2 == 0) ? Colors.white : Colors.black,
              );
            },
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ChessBoard(),
  ));
}

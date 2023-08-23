import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class XOgame extends StatefulWidget {
  const XOgame({super.key});

  @override
  State<XOgame> createState() => _XOgameState();
}

class _XOgameState extends State<XOgame> {
  Widget _getBlock(Block block) => Positioned(
      left: block.row * 200,
      top: block.column * 200,
      child: Container(
        width: 180,
        height: 180,
      ));

  List<Widget> _getFields() {
    return [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('XO game'),
      ),
      body: Stack(
        children: <Widget>[
          Container(width: 600, height: 600, color: Colors.black),
          Positioned(
              child: Container(
            color: Colors.white,
          )),
        ],
      ),
    );
  }
}

class Block {
  const Block({required this.column, required this.row, required this.value});
  final int row;
  final int column;
  final String value;

  Block copyWith({
    String? value,
  }) {
    return Block(
        column: this.column, row: this.row, value: value ?? this.value);
  }
}

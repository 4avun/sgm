import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class XOgame extends StatefulWidget {
  const XOgame({super.key});

  @override
  State<XOgame> createState() => _XOgameState();
}

class _XOgameState extends State<XOgame> {
  Widget _getField(Field field) => Positioned(
      left: field.row * 200,
      top: field.column * 200,
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

class Field extends Equatable {
  const Field({required this.column, required this.row, required this.value});
  final int row;
  final int column;
  final String value;

  @override
  List<Object?> get props => [row, column, value];

  Field copyWith({
    String? value,
  }) {
    return Field(
        column: this.column, row: this.row, value: value ?? this.value);
  }
}

class XOState extends Equatable {
  XOState({this.fields = const [], required this.settings});
  final List<Field> fields;
  final FieldsSettings settings;

  @override
  List<Object?> get props => [fields, settings];
}

class XOBloc {
  XOBloc();
  final _controller = BehaviorSubject<XOState>();
}

class FieldsSettings extends Equatable {
  FieldsSettings()
      : this.column = 3,
        this.dimentions = 600,
        this.row = 3;

  FieldsSettings._({
    required this.column,
    required this.dimentions,
    required this.row,
  });

  FieldsSettings copyWith(int? row, int? column, int dimentions) {
    return FieldsSettings._(
      column: this.column,
      dimentions: this.dimentions,
      row: this.row,
    );
  }

  final int row;
  final int column;
  final int dimentions;

  @override
  List<Object?> get props => [row, column, dimentions];
}

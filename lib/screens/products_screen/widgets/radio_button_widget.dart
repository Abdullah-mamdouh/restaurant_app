import 'package:flutter/material.dart';

class MyRadioOption<T> extends StatelessWidget {

  final T value;
  final T? groupValue;
  final String label;
  final String text;
  final ValueChanged<T?> onChanged;

  const MyRadioOption({
    required this.value,
    required this.groupValue,
    required this.label,
    required this.text,
    required this.onChanged,
  });

  Widget _buildLabel() {
    final bool isSelected = value == groupValue;

    return Container(
      width: 30,
      height: 30,
      decoration: ShapeDecoration(
        shape: CircleBorder(
          side: BorderSide(
            color: Colors.black,
          ),
        ),
        color: isSelected ? Colors.cyan : Colors.white,
      ),
      child: Center(
        child: Text(
          value.toString(),
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.cyan,
            fontSize: 20,
          ),
        ),
      ),
    );
  }

  Widget _buildText() {
    return Text(
      text,
      style: const TextStyle(color: Colors.black, fontSize: 24),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      child: InkWell(
        onTap: () => onChanged(value),
        splashColor: Colors.cyan.withOpacity(0.5),
        child: Padding(
          padding: EdgeInsets.all(5),
          child: Row(
            children: [
              _buildLabel(),
              const SizedBox(width: 10),
              _buildText(),
            ],
          ),
        ),
      ),
    );
  }
}


class CustomRadioDemo extends StatefulWidget {

  @override
  State createState() => new _CustomRadioDemoState();
}

class _CustomRadioDemoState extends State<CustomRadioDemo> {

  String? _groupValue;

  ValueChanged<String?> _valueChangedHandler() {
    return (value) => setState(() => _groupValue = value!);
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Flutter Custom Radio Button Demo'),
        backgroundColor: Colors.cyan,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("Best Cross-Platform Mobile App Development Tools for 2021",
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
          ),
          SizedBox(height: 10,),
          MyRadioOption<String>(
            value: '1',
            groupValue: _groupValue,
            onChanged: _valueChangedHandler(),
            label: '1',
            text: 'Phone Gap',
          ),
          MyRadioOption<String>(
            value: '2',
            groupValue: _groupValue,
            onChanged: _valueChangedHandler(),
            label: '2',
            text: 'Appcelerator',
          ),
          MyRadioOption<String>(
            value: '3',
            groupValue: _groupValue,
            onChanged: _valueChangedHandler(),
            label: '3',
            text: 'React Native',
          ),
          MyRadioOption<String>(
            value: '4',
            groupValue: _groupValue,
            onChanged: _valueChangedHandler(),
            label: '4',
            text: 'Native Script',
          ),
          MyRadioOption<String>(
            value: '5',
            groupValue: _groupValue,
            onChanged: _valueChangedHandler(),
            label: '5',
            text: 'Flutter',
          ),
        ],
      ),
    );
  }
}
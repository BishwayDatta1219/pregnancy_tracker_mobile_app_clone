import 'dart:async';

import 'package:flutter/material.dart';

class AnimationWidget extends StatefulWidget {
  const AnimationWidget({super.key});

  @override
  State<AnimationWidget> createState() => _AnimationWidgetState();
}

class _AnimationWidgetState extends State<AnimationWidget> {
  bool _isWhiteSelected = true;
  Timer? _timer;

  _setsIWhiteSelected(isWhite) {
    setState(() {
      _isWhiteSelected = isWhite;
    });
  }

  _toggleColors() {
    _timer = Timer.periodic(Duration(milliseconds: 1000), (timer) {
      _setsIWhiteSelected(!_isWhiteSelected);
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  void initState() {
    _toggleColors();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.30,
      color: Colors.red,
      child: Row(
        children: [
          Expanded(
            flex: _isWhiteSelected ? 1 : 2,
            child: Container(
              decoration: BoxDecoration(color: Colors.white),
            ),
          ),
          Expanded(
            flex: !_isWhiteSelected ? 1 : 2,
            child: Container(
              decoration: BoxDecoration(color: Colors.orangeAccent),
            ),
          ),
        ],
      ),
    );
  }
}

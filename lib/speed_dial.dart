library speed_dial;

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class SpeedDial extends StatefulWidget {
  final Widget primaryFAB;
  final List<FloatingActionButton> minimisedFABOptions;
  final bool opened;

  SpeedDial({this.primaryFAB, this.minimisedFABOptions, this.opened = false});

  @override
  State<StatefulWidget> createState() {
    return _SpeedDialState(opened);
  }

}

class _SpeedDialState extends State<SpeedDial> {

  FloatingActionButton closeSpeedDialFAB;
  bool opened;

  _SpeedDialState(bool opened);

  @override
  void initState() {
    closeSpeedDialFAB = FloatingActionButton(
      child: Icon(Icons.close),
      onPressed: () {
        setState(() {
          opened = false;
        });
      },
    );
    widget.minimisedFABOptions.insert(0, closeSpeedDialFAB);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      fit: StackFit.passthrough,
      overflow: Overflow.visible,
      children: getFABs(),
    );
  }

  List<Widget> getFABs() {
    if (opened) {
      return <Widget>[
        Column(
          verticalDirection: VerticalDirection.up,
          children: widget.minimisedFABOptions,
        ),
      ];
    } else {
      return <Widget>[
        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {
              opened = true;
            });
          },
        ),
      ];
    }
  }
}
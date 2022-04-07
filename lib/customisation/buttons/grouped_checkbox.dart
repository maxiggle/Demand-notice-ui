

import 'package:flutter/material.dart';
import 'package:rsvg_app/customisation/custom_check_box%20copy.dart';

class GroupedCheckbox extends StatefulWidget {
  const GroupedCheckbox({
    Key key,
    @required this.values,
    this.initialValues,
    this.showColor =  false,
    @required this.onChanged,
    this.fixedwidth = false,
    this.spacing,
    this.runSpacing
  }) : super(key: key);
  final List<String> values;
  final List<String> initialValues;
  final void Function(List<String>) onChanged;
  final bool showColor;
  final bool fixedwidth;
  final double spacing;
  final double runSpacing;

  @override
  State<GroupedCheckbox> createState() => _GroupedCheckboxState();
}

class _GroupedCheckboxState extends State<GroupedCheckbox> {
  final List<String> _values = [];
  final List<bool> _checkedStates = [];

  List<String> get _checkedValues {
    var checkedValues = <String>[];
    for (var i = 0; i < _checkedStates.length; i++) {
      if (_checkedStates[i]) {
        checkedValues.add(_values[i]);
      }
    }
    return checkedValues;
  }

  @override
  void initState() {
    super.initState();
    var uniqueValues = [
      ...{...widget.values}
    ];

    _values.addAll(uniqueValues);

    if (widget.initialValues != null) {
      for (var i = 0; i < _values.length; i++) {
        _checkedStates.add(widget.initialValues.contains(_values[i]));
      }
    } else {
      _checkedStates.addAll(_values.map((e) => false).toList());
    }
  }

  @override
  Widget build(BuildContext context) {
    //  final  TextPainter paddString = TextPainter();
    return Wrap(
      children: _values
          .map((e) => Column(
            mainAxisSize:MainAxisSize.min,
            children: [
              Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      CustomCheckBox(
                        value: _checkedStates[_values.indexOf(e)],
                        onChanged: (value) {
                          setState(() {
                            _checkedStates[_values.indexOf(e)] = value;
                          });
                          widget.onChanged(_checkedValues);
                        },
                      ),
                  if(widget.fixedwidth==true) 
                      Container(
                        width: 195,
                        child: Text(
                          e,
                          style: TextStyle(fontSize: 13),
                        ),
                      ),
                     if(widget.fixedwidth !=true) 
                      Text(
                        e,
                        style: TextStyle(fontSize: 13),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      if(widget.showColor == true)
                      showColors(e),
                      
                      // Text('')
                    ],
                  ),
            ],
          ))
          .toList(),
      spacing: widget.spacing, //12,
      runSpacing:widget.runSpacing //-8,
    );
  }

  Container showColors(String e) {
    return Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    color:  (_values.indexOf(e) == 0
                          ? Colors.green
                          : (_values.indexOf(e) == 1
                              ? Colors.teal
                              : _values.indexOf(e) == 2
                                  ? Colors.purple
                                  : _values.indexOf(e) == 3
                                      ? Colors.indigo
                                      : null)),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  // color: Colors.red,
                );
  }
}

// if e == 
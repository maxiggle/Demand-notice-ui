import 'package:flutter/material.dart';
import 'package:rsvg_app/screens/add_new_business_place.dart';

class BottomBanner extends StatelessWidget {
  final Color styleColor;
  final Widget child;
  const BottomBanner({this.styleColor, this.child, key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 395,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: styleColor,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero)),
          onPressed: () {
            return showModalBottomSheet(
                isScrollControlled: true,
                // isDismissible: true,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7)),
                context: context,
                builder: (_) => AddNewBusinessPlace());
          },
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 100), child: child)),
    );
  }
}

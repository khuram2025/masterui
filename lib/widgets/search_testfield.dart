import 'package:flutter/material.dart';
import 'package:masterui/constants/color.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.search, color: Colors.grey,size: 26,),
        suffixIcon: Icon(Icons.mic, color: kPrimaryColor,size: 26,),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        labelText: "Search your topic",
        labelStyle: TextStyle(color: Colors.grey),
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40)
        )
      ),
    );
  }
}

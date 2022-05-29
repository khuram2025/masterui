import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../widgets/circle_button.dart';
import '../widgets/search_testfield.dart';


class FeaturedScreen extends StatefulWidget {
  const FeaturedScreen({Key? key}) : super(key: key);

  @override
  State<FeaturedScreen> createState() => _FeaturedScreenState();
}

class _FeaturedScreenState extends State<FeaturedScreen> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
        child: Scaffold(
          body: Column(
            children: const [
              AppBar()
            ],
          ),
        ),
        value: SystemUiOverlayStyle.light);
  }
}


class AppBar extends StatelessWidget {
  const AppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      
      padding: EdgeInsets.only(top: 50, left: 20, right: 20),
      decoration: const BoxDecoration(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20)
        ),
        gradient: LinearGradient(colors: [
          Color(0xff886ff2),
          Color(0xff6849ef),
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomLeft),

      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Hello, \nGood Morning", style: Theme.of(context).textTheme.titleLarge,),
              CircleButton(icon:Icons.notifications, onPressed:(){})
            ],
          ),
          SizedBox(height: 20,),
          SearchTextField(),

        ],
      ),
    );
  }
}


import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:masterui/constants/color.dart';
import 'package:masterui/models/category.dart';

import '../constants/size.dart';
import '../widgets/category_card.dart';
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
          body: SingleChildScrollView(
            child: Column(
              children: const [
                AppBar(),
                Body(),
              ],
            ),
          ),
        ),
        value: SystemUiOverlayStyle.light);
  }
}


// class Body extends StatelessWidget {
//   const Body({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Padding(
//             padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text("Explore Categories", style: Theme.of(context).textTheme.bodyLarge,),
//                 TextButton(onPressed: (){}, child: Text("See All",
//                   style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: kPrimaryColor),))
//               ],
//             )
//
//         ),
//         GridView.builder(
//           shrinkWrap: true,
//             itemCount: categoryList.length,
//             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 2,
//               childAspectRatio: 0.8,
//               crossAxisSpacing: 20,
//               mainAxisSpacing: 24,
//             ),
//           itemBuilder: (context, index) {
//             return CategoryCard(
//               category: categoryList[index],
//             );
//           },
//             )
//
//       ],
//     );
//   }
// }



class Body extends StatelessWidget {

  const Body({Key? key,}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Explore Categories",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "See All",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: kPrimaryColor),
                ),
              )
            ],
          ),
        ),
        GridView.builder(
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 8,
          ),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.8,
            crossAxisSpacing: 20,
            mainAxisSpacing: 24,
          ),
          itemBuilder: (context, index) {
            return CategoryCard(category: categoryList[index],);
          },
          itemCount: categoryList.length,
        ),
      ],
    );
  }
}

class CategoryCard extends StatelessWidget {
  final Category category;

  const CategoryCard({Key? key, required this.category, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(.1),
                blurRadius: 4.0,
                spreadRadius: 0.05,
              )
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Image.asset(category.thumbnail,
                height: kCategoryCardImageSize,),
            ),
            const SizedBox(
              height: 10,

            ),
            Text(category.name),
            Text("${category.noOfCourses.toString()} courses",
            style: Theme.of(context).textTheme.bodySmall,)
          ],
        ),
      ),
    );
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


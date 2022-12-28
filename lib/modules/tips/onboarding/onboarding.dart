import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:page_indicator/page_indicator.dart';
import 'package:resturant/modules/login/login.dart';
import 'package:resturant/modules/register/register.dart';

class Tips extends StatelessWidget {
  const Tips({super.key});

  @override
  Widget build(BuildContext context) {
    var ownHeight = MediaQuery.of(context).size.height / 7;
    List tips_arr = [
      {
        "image": "images/tip1.jpg",
        "title": "Finds food you love",
        "info": "Discover the best foods from over 1,000 resturants. ",
      },
      {
        "image": "images/tip2.jpg",
        "title": "Fast Delivery",
        "info": "Discover the best foods from over 1,000 resturants. ",
      },
      {
        "image": "images/tip3.jpg",
        "title": "Live Tracking",
        "info": "Discover the best foods from over 1,000 resturants. ",
      }
    ];
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 60.0),
            alignment: Alignment.bottomRight,
            child: TextButton(
              onPressed: (() {
                  Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => LoginScreen()));
              }),
              child: Text(
                "Login",
                style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0),
              ),
            ),
          ),
          Container(
            height: ownHeight * 4,
            child: PageIndicatorContainer(
              length: tips_arr.length,
              align: IndicatorAlign.bottom,
              indicatorColor: Colors.white,
              indicatorSelectorColor: Colors.red,
              shape: IndicatorShape.circle(),
              child: PageView.builder(
                  itemCount: tips_arr.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: ((context, index) => SingleTips(
                        image: tips_arr[index]['image'],
                        title: tips_arr[index]['title'],
                        info: tips_arr[index]['info'],
                      ))),
            ),
          ),
          Expanded(
              child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const RegisterScreen()));
                  },
                  child: Container(
                    width: double.infinity,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: const Center(
                      child: Text(
                        "Create account",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                   
                    width: double.infinity,
                    height: 40.0,
                    decoration: BoxDecoration(
                       color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                        children:const [
                          FaIcon(FontAwesomeIcons.facebook,color: Colors.black,),
                           Text(
                          "  Continue with facebook",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                        ],
                    )
                  ),
                )
              ],
            ),
          )),
        ],
      ),
    ));
  }
}

class SingleTips extends StatelessWidget {
  String image;
  String title;
  String info;
  SingleTips({required this.image, required this.title, required this.info});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            height: 100,
            alignment: Alignment.center,
            child: Image(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Text(
              title,
              style: TextStyle(
                  color: Colors.red,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 70.0, left: 70, right: 70),
          child: Container(
            alignment: Alignment.center,
            child: Text(
              info,
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
        )
      ],
    );
  }
}


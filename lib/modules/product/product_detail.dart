import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Container(
          //   height: double.infinity,
          //   child:
          // ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(25.0),
                      image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                              "images/product/5dd2ceac3468f.jpg"))),
                ),
                header(),
              ],
            ),
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(20.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      bottomHeader(),
                      const Text(
                        "Chicken",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30.0),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              FaIcon(
                                FontAwesomeIcons.fire,
                                color: Colors.orangeAccent,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                "33 calories",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              FaIcon(
                                FontAwesomeIcons.star,
                                color: Colors.yellow,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                "4.9",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "(2645 review)",
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 17),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      Text(
                        "The tiny chicken is packed with vitamin C ,it is good for health of heart and contain alot of Protin to build muscles it is a good a choice if you are going to Gym",
                        style: TextStyle(color: Colors.grey, fontSize: 17),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Delivery Time",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25.0),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.alarm,
                                    color: Colors.red,
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Text(
                                    "20-30 min",
                                    style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.play_circle_fill_outlined,
                                color: Colors.orange,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                "Watch video",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          )
                        ],
                      ),
                    ]),
              ),
              
            ],
          ))
        ],
      ),
      bottomNavigationBar: bottomButton(),
    );
  }
}

Widget header() => Row(
      children: [
        Container(
          margin: EdgeInsets.only(top: 50, left: 25),
          width: 50.0,
          height: 50.0,
          decoration: BoxDecoration(
            boxShadow: [BoxShadow(
              color: Colors.grey,
              blurRadius: 4,
              spreadRadius: 1

            )],
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back_ios_new,
                color: Colors.red,
              )),
        ),
        Spacer(),
        Container(
          margin: EdgeInsets.only(top: 50, right: 25),
          width: 50.0,
          height: 50.0,
          decoration: BoxDecoration(
             boxShadow: [BoxShadow(
              color: Colors.grey,
              blurRadius: 4,
              spreadRadius: 1

            )],
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shop,
                color: Colors.red,
              )),
        ),
      ],
    );

Widget bottomHeader() => Container(
      margin: const EdgeInsets.only(bottom: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.bottomCenter,
            width: 40.0,
            height: 40.0,
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(10),
            ),
            child: IconButton(
                onPressed: () {},
                icon:  Icon(
                  FontAwesomeIcons.minus,
                  color: Colors.white,
                )),
          ),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                "4 kg",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              )),
          Container(
            alignment: Alignment.bottomCenter,
            width: 40.0,
            height: 40.0,
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(10),
            ),
            child: IconButton(
                onPressed: () {},
                icon:  Icon(
                    FontAwesomeIcons.plus,
                  color: Colors.white,
                )),
          ),
        ],
      ),
    );

Widget bottomButton() => GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5.0,vertical: 6.0),
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.redAccent,
          borderRadius: BorderRadius.circular(100.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "& 56.68",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0),
              ),
              Spacer(),
              Row(
                children: [
                  Icon(
                    Icons.shop,
                    color: Colors.orangeAccent,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Add to Cart",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );

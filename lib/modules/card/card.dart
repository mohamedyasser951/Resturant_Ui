import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:resturant/component/component.dart';

class Carddetail extends StatefulWidget {
  const Carddetail({super.key});

  @override
  State<Carddetail> createState() => _CarddetailState();
}

class _CarddetailState extends State<Carddetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: IconButton(
          color: Colors.white,
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body:Column(children: [
        CarddetailItem(prod_id: "", prod_name: "prod_name", prod_price: "prod_price", prod_quantity: "prod_quantity", prod_image: "prod_image")
      ]),
    );
  }
}

class CarddetailItem extends StatelessWidget {
  final String prod_id;
  final String prod_name;
  final String prod_price;
  final String prod_quantity;
  final String prod_image;
  CarddetailItem({required this.prod_id,required this.prod_name,required this.prod_price,required this.prod_quantity,required this.prod_image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      width: 200,
      padding: EdgeInsets.all(10.0),
      child:ListTile(
        title: Text("Burger"),
        leading: CircleAvatar(child: Image(image: AssetImage("images/category/cat2.png"),)),
        trailing: Row(
          children: [
            IconButton(
                onPressed: () {},
                icon:  Icon(
                    FontAwesomeIcons.minus,
                  color: Colors.white,
                )),

                Text("1"),

                IconButton(
                onPressed: () {},
                icon:  Icon(
                    FontAwesomeIcons.plus,
                  color: Colors.white,
                )),
          ],
        ),
      )
    );
  }
}
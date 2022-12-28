import 'package:flutter/material.dart';
import 'package:resturant/component/component.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(color: Colors.grey[100]),
      child: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.grey[200]),
                currentAccountPicture: GestureDetector(
                    onTap: () {},
                    child: const CircleAvatar(
                      backgroundColor: Colors.red,
                      child: Text("M"),
                    )),
                accountName: const Text(
                  "Mohamed Yasser",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                accountEmail: Text(
                  "Mohamedyasser814@gmail.com",
                  style: TextStyle(
                      color: Colors.grey[600], fontWeight: FontWeight.bold),
                )),
            
            // ListTileItem(title: "Profile",leading_Icon:const Icon(Icons.account_box,color: Colors.black,)),
            //  Divider(color: Colors.grey[900], indent: 20),
            // ListTileItem(title: "Payment Method",leading_Icon:const Icon(Icons.payments,color: Colors.black,)),
            //  Divider(color: Colors.grey[900],indent: 20),
            // ListTileItem(title: "Order History",leading_Icon:const Icon(Icons.history,color: Colors.black,)),
            //  Divider(color: Colors.grey[900], indent: 20),
            // ListTileItem(title: " Delivery address",leading_Icon:const Icon(Icons.location_city,color: Colors.black,)),
            // Divider(color: Colors.grey[900], indent: 20),
            // ListTileItem(title: "Setting",leading_Icon:const Icon(Icons.settings,color: Colors.black,)),
            // Divider(color: Colors.grey[900], indent: 20),
            // ListTileItem(title: "About Us",leading_Icon:const Icon(Icons.info,color: Colors.black,)),
            // Divider(color: Colors.grey[900], indent: 20),
            // ListTileItem(title: "Support Center",leading_Icon:const Icon(Icons.support_agent,color: Colors.black,)),
        
          ],
        ),
      ),
    );
  }
}

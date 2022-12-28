import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:resturant/modules/layout/mydrawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey<ScaffoldState> formkey = GlobalKey<ScaffoldState>();
  List Category_arr = [
    {"image": "images/category/cat1.png", "id": "1", "descrption": "Burgers"},
    {"image": "images/category/cat2.png", "id": "2", "descrption": "Asian"},
    {"image": "images/category/cat3.png", "id": "3", "descrption": "pizza"},
    {"image": "images/category/cat4.png", "id": "4", "descrption": "Burgers"},
    {"image": "images/category/cat5.png", "id": "5", "descrption": "Burgers"}
  ];
  List pro_arr = [
    {
      "image": "images/product/5dd2ceac3468f.jpg",
      "name": "Hollywood starz cafe",
      "id": "1",
      "descrption": "watesm food"
    },
    
    {
      "image": "images/product/3e732a48a046e77c8b815d083ad1f768650x300.jpg",
      "name": "fish starz rest",
      "id": "2",
      "descrption": "green food"
    },
    {
      "image":
          "images/product/80-084521-the-drinks-avoid-losing-weight_700x400.jpeg",
      "name": "chicken starz rest",
      "id": "3",
      "descrption": "green food"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      key: formkey,
      backgroundColor: Colors.grey[100],
      body: Container(
        margin: EdgeInsets.only(top: 50.0),
        padding: EdgeInsets.only(left: 10.0, right: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Delivering to",
              style: TextStyle(color: Colors.grey),
            ),
            Row(
              children: [
                const Text(
                  "Current Loproion",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_drop_down,
                      color: Colors.red,
                      size: 30,
                    ))
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search foods",
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.black,
                          )),
                    ),
                  ),
                ),
                IconButton(
                    onPressed: () {
                      formkey.currentState!.openDrawer();
                    },
                    icon: Icon(
                      Icons.menu,
                      color: Colors.red,
                      size: 35.0,
                    ))
              ],
            ),
            const SizedBox(
              height: 15.0,
            ),
            Container(
              height: 110,
              width: double.infinity,
              child: ListView.separated(
                  separatorBuilder: (context, index) => SizedBox(
                        width: 12.0,
                      ),
                  scrollDirection: Axis.horizontal,
                  itemCount: Category_arr.length,
                  itemBuilder: ((context, index) => BuildCategoryItem(
                      pro_id: Category_arr[index]["id"],
                      pro_image: Category_arr[index]["image"],
                      pro_descrption: Category_arr[index]["descrption"]))),
            ),
            Expanded(
              child: Container(
                
                width: double.infinity,
                child: ListView.separated(
                    separatorBuilder: (context, index) => const SizedBox(
                          height: 10.0,
                        ),
                    scrollDirection: Axis.vertical,
                    itemCount: pro_arr.length,
                    itemBuilder: ((context, index) => BuildProductItem(
                        pro_name: pro_arr[index]["name"],
                        pro_id: pro_arr[index]["id"],
                        pro_image: pro_arr[index]["image"],
                        pro_descrption: pro_arr[index]["descrption"]))),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          selectedItemColor: Colors.red,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
                label: "Resturant",
                icon: Icon(
                  Icons.home,
                )),
            BottomNavigationBarItem(
                label: "Offers",
                icon: Icon(
                  Icons.fireplace_outlined,
                )),
            BottomNavigationBarItem(
                label: "Account",
                icon: Icon(
                  Icons.person,
                )),
          ]),
    );
  }
}

class BuildCategoryItem extends StatelessWidget {
  final String pro_image;
  final String pro_id;
  final String pro_descrption;

  BuildCategoryItem(
      {required this.pro_id,
      required this.pro_image,
      required this.pro_descrption});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10.0),
            height: 80,
            width: 80,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 228, 202, 200),
                borderRadius: BorderRadius.circular(15.0),
                image: DecorationImage(
                    image: AssetImage(pro_image), fit: BoxFit.scaleDown)),
          ),
          Text(
            pro_descrption,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class BuildProductItem extends StatelessWidget {
  final String pro_image;
  final String pro_id;
  final String pro_descrption;
  final String pro_name;

  BuildProductItem(
      {required this.pro_id,
      required this.pro_name,
      required this.pro_image,
      required this.pro_descrption});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 10.0),
          height: 250,
          width: double.infinity,
          decoration: BoxDecoration(
              // color: Color.fromARGB(255, 228, 202, 200),
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                  image: AssetImage(pro_image), fit: BoxFit.fitHeight)),
        ),
        Text(
          pro_name,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
        ),
        Text(
          pro_descrption,
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}

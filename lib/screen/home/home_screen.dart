import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

Widget singalProducts() {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 5),
    height: 230,
    width: 180,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Expanded(
        flex: 2,
        child: Image.network(
            'https://m.media-amazon.com/images/I/71+mDoHG4mL.png'),
      ),
      Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Cat Sounds',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              const Text(
                '100\$',
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                        padding: EdgeInsets.only(left: 10),
                        height: 30,
                        width: 50,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: const [
                            Expanded(
                                child: Text(
                              '1kg',
                              style: TextStyle(fontSize: 16),
                            )),
                            Center(
                              child: Icon(
                                Icons.arrow_drop_down,
                                size: 20,
                                color: Color.fromARGB(255, 22, 22, 20),
                              ),
                            ),
                          ],
                        )),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 10),
                      height: 30,
                      width: 50,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.remove,
                              size: 20,
                            ),
                            Text(
                              '1',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Icon(
                              Icons.add,
                              size: 20,
                            )
                          ]),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      )
    ]),
  );
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffcbcbcb),
      drawer: Drawer(),
      appBar: AppBar(
        title: const Text(
          'Home',
          style: TextStyle(color: Colors.black, fontSize: 17),
        ),
        actions: const [
          CircleAvatar(
            radius: 19,
            backgroundColor: Color(0xffd3d181),
            child: Icon(
              Icons.search,
              size: 19,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: CircleAvatar(
              radius: 19,
              backgroundColor: Color(0xffd3d181),
              child: Icon(
                Icons.shop,
                size: 19,
                color: Colors.black,
              ),
            ),
          )
        ],
        backgroundColor: Color(0xffd6b738),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: ListView(children: [
          Container(
            height: 235,
            decoration: BoxDecoration(
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://www.colorwallpapers.com/uploads/wallpaper/anime-cat-wallpapers/width-853/L1oUiirNrp6b-1080p-backgrounds-anime-cat-image-free.jpg'),
                ),
                color: Colors.red,
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 120),
                          child: Container(
                            height: 55,
                            width: 140,
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 24, 155, 179),
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(60),
                                  bottomLeft: Radius.circular(60)),
                            ),
                            child: const Center(
                              child: Text(
                                'PetStore',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    shadows: [
                                      BoxShadow(
                                          color: Color.fromARGB(
                                              255, 170, 178, 229),
                                          blurRadius: 3,
                                          offset: Offset(3, 3))
                                    ]),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            '30% off',
                            style: TextStyle(
                                fontSize: 50,
                                color: Colors.green[100],
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 20, top: 10),
                          child: Text(
                            'Onl all cat product',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(child: Container())
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Herbs Seasonings',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  'View all',
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                )
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                singalProducts(),
                singalProducts(),
                singalProducts(),
                singalProducts(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Fresh Fruits',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  'View all',
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                )
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                singalProducts(),
                singalProducts(),
                singalProducts(),
                singalProducts(),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

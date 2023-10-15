import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_coffee_app/screens/widgets/banner.dart';
import 'package:flutter_coffee_app/screens/widgets/category_item.dart';
import 'package:flutter_coffee_app/screens/widgets/item.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedCategory = 0;
  List<String> list = ['Cappuccino', 'Machiato', 'Latte', 'Americano'];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xffF9F9F9),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: 280,
              width: size.width,
              decoration:
                  const BoxDecoration(color: Color.fromARGB(255, 70, 69, 69)),
            ),
            Column(
              children: [
                Center(
                  child: SizedBox(
                    width: 315,
                    child: Column(
                      children: [
                        SizedBox(
                          height: size.height * 0.07,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Location",
                                  style: GoogleFonts.sora(
                                      color: const Color(0xffb7b7b7),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Bilzen Tanjungbalai",
                                      style: GoogleFonts.sora(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    const Icon(
                                      Icons.arrow_downward,
                                      color: Colors.white,
                                    )
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              width: 45,
                              height: 45,
                              child: Image.asset(
                                "assets/images/avatar.jpg",
                                fit: BoxFit.fill,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: size.height * 0.03,
                        ),
                        SizedBox(
                          height: 50,
                          child: TextFormField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: const Color(0xff313131),
                              contentPadding: const EdgeInsets.only(
                                  top: 23, bottom: 2, right: 5),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              hintText: "Search",
                              hintStyle: GoogleFonts.sora(
                                color: const Color(0xff989898),
                              ),
                              prefixIcon: const Icon(
                                Iconsax.search_normal,
                                color: Colors.white,
                                size: 20,
                              ),
                              suffixIcon: Container(
                                width: 44,
                                height: 44,
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: const Color(0xffC67C4E),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: const Icon(
                                  Iconsax.setting_2,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.020,
                        ),
                        SizedBox(
                          width: 315,
                          height: 180,
                          child: CarouselSlider(
                            options: CarouselOptions(
                              viewportFraction: 1,
                              enlargeFactor: 0.3,
                              height: size.height * 0.3,
                              enlargeCenterPage: true,
                              autoPlay: true,
                            ),
                            items: List.generate(
                              5,
                              (index) => const BannerCard(),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                        SizedBox(
                          height: 40,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: List.generate(
                                list.length,
                                (index) => CategoryItem(
                                  index: index,
                                  title: list[index],
                                  selectedCategory: selectedCategory,
                                  onClick: () {
                                    setState(() => selectedCategory = index);
                                  },
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 330,
                  width: 330,
                  alignment: Alignment.center,
                  child: GridView(
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: size.width / 2,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 10,
                      mainAxisExtent: 239,
                    ),
                    children: const [
                      Item(
                        image: "assets/images/1.jpg",
                      ),
                      Item(
                        image: "assets/images/2.png",
                      ),
                      Item(
                        image: "assets/images/3.png",
                      ),
                      Item(
                        image: "assets/images/4.png",
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        selectedItemColor: const Color(0xffC67C4E),
        unselectedItemColor: const Color.fromARGB(255, 148, 148, 148),
        selectedFontSize: 14,
        unselectedFontSize: 12,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
        ],
        onTap: (index) {
          setState(() {
            index = index;
            // Navigate to the selected page here, e.g., Navigator.push...
          });
        },
      ),
    );
  }
}

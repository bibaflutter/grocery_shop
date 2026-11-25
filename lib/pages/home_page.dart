import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_shop/components/grocery_item_tile.dart';
import 'package:grocery_shop/models/cart_model.dart';
import 'package:grocery_shop/pages/cart_page.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.of(
          context,
        ).push(MaterialPageRoute(builder: (context) => CartPage())),
        backgroundColor: Colors.black,
        child: Icon(Icons.shopping_bag_outlined, color: Colors.white),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // good morning
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Text('Good Morning'),
            ),
            const SizedBox(height: 4),

            // lets order fresh items for yo
            Padding(
              padding: EdgeInsetsGeometry.symmetric(horizontal: 24),
              child: Text(
                'Let`s order fresh items for you',
                style: GoogleFonts.notoSerif(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 24),

            // divider
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: const Divider(
                // thickness: 4,
              ),
            ),

            const SizedBox(height: 24),

            // fresh items + grid
            Padding(
              padding: EdgeInsetsGeometry.symmetric(horizontal: 24),
              child: Text('Fresh Items', style: TextStyle(fontSize: 16)),
            ),
            Expanded(
              child: Consumer<CartModel>(
                builder: (context, value, child) => GridView.builder(
                  padding: EdgeInsets.all(12),

                  itemCount: value.shopItems.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1 / 1.2,
                  ),
                  itemBuilder: (context, index) => GroceryItemTile(
                    itemName: value.shopItems[index][0],
                    itemPrice: value.shopItems[index][1],
                    imagePath: value.shopItems[index][2],
                    color: value.shopItems[index][3],
                    onPressed: () {
                      Provider.of<CartModel>(
                        context,
                        listen: false,
                      ).addItemToCart(index);
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

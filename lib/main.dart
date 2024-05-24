import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'model/product.dart';
import 'widgets/product_widget.dart';
import 'cart_provider.dart';
import 'pages/cart_screen.dart';
// import 'pages/Checkout Screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Fruit App',
        theme: ThemeData(
          primarySwatch: Colors.pink,
        ),
        initialRoute: '/', // Set initial route
        routes: {
          '/': (context) => const MyHomePage(), // Home page
          '/cart': (context) => const CartScreen(), // Cart screen
          // '/checkout': (context) => const CheckoutScreen(), // Checkout screen
        },
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text(
          'Food item',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                ProductWidget(
                  product: Product(
                    id: 1,
                    name: 'Orange',
                    price: 100.0,
                    imageUrl:
                        'https://images.unsplash.com/photo-1580052614034-c55d20bfee3b?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8b3JhbmdlfGVufDB8fDB8fHww',
                  ),
                  addToCart: (product) =>
                      Provider.of<CartProvider>(context, listen: false)
                          .addToCart(product),
                ),
                ProductWidget(
                  product: Product(
                    id: 2,
                    name: 'Apple',
                    price: 200.0,
                    imageUrl:
                        'https://images.unsplash.com/photo-1589217157232-464b505b197f?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8YXBwbGV8ZW58MHx8MHx8fDA%3D',
                  ),
                  addToCart: (product) =>
                      Provider.of<CartProvider>(context, listen: false)
                          .addToCart(product),
                ),
                ProductWidget(
                  product: Product(
                    id: 1,
                    name: 'Banana',
                    price: 300.0,
                    imageUrl:
                        'https://cdn.pixabay.com/photo/2016/11/15/16/24/banana-1826760_640.jpg',
                  ),
                  addToCart: (product) =>
                      Provider.of<CartProvider>(context, listen: false)
                          .addToCart(product),
                ),
                ProductWidget(
                  product: Product(
                    id: 1,
                    name: 'pineapple',
                    price: 400.0,
                    imageUrl:
                        'https://cdn.pixabay.com/photo/2016/12/18/23/16/pineapple-1916996_640.png',
                  ),
                  addToCart: (product) =>
                      Provider.of<CartProvider>(context, listen: false)
                          .addToCart(product),
                ),
                ProductWidget(
                  product: Product(
                    id: 1,
                    name: 'strawberry',
                    price: 70.0,
                    imageUrl:
                        'https://cdn.pixabay.com/photo/2021/11/19/08/20/strawberries-6808367_640.jpg',
                  ),
                  addToCart: (product) =>
                      Provider.of<CartProvider>(context, listen: false)
                          .addToCart(product),
                ),
                ProductWidget(
                  product: Product(
                    id: 1,
                    name: 'Guava',
                    price: 500.0,
                    imageUrl:
                        'https://cdn.pixabay.com/photo/2016/10/07/02/52/guava-1720598_640.jpg',
                  ),
                  addToCart: (product) =>
                      Provider.of<CartProvider>(context, listen: false)
                          .addToCart(product),
                ),
                ProductWidget(
                  product: Product(
                    id: 1,
                    name: 'DragonFruit',
                    price: 350.0,
                    imageUrl:
                        'https://cdn.pixabay.com/photo/2016/10/27/12/41/bali-1774736_640.jpg',
                  ),
                  addToCart: (product) =>
                      Provider.of<CartProvider>(context, listen: false)
                          .addToCart(product),
                ),
                ProductWidget(
                  product: Product(
                    id: 1,
                    name: 'Blackberry',
                    price: 250.0,
                    imageUrl:
                        'https://cdn.pixabay.com/photo/2015/08/21/15/31/blackberry-899070_640.jpg',
                  ),
                  addToCart: (product) =>
                      Provider.of<CartProvider>(context, listen: false)
                          .addToCart(product),
                ),
                ProductWidget(
                  product: Product(
                    id: 1,
                    name: 'Mango',
                    price: 90.0,
                    imageUrl:
                        'https://cdn.pixabay.com/photo/2017/04/09/07/30/chaise-mans-2215042_640.jpg',
                  ),
                  addToCart: (product) =>
                      Provider.of<CartProvider>(context, listen: false)
                          .addToCart(product),
                ),
                ProductWidget(
                  product: Product(
                    id: 1,
                    name: 'Litchi',
                    price: 95.0,
                    imageUrl:
                        'https://cdn.pixabay.com/photo/2020/07/04/06/11/lychee-5368359_640.jpg',
                  ),
                  addToCart: (product) =>
                      Provider.of<CartProvider>(context, listen: false)
                          .addToCart(product),
                ),
                ProductWidget(
                  product: Product(
                    id: 1,
                    name: 'Papaya',
                    price: 120.0,
                    imageUrl:
                        'https://cdn.pixabay.com/photo/2018/05/31/14/41/papaya-3444160_640.jpg',
                  ),
                  addToCart: (product) =>
                      Provider.of<CartProvider>(context, listen: false)
                          .addToCart(product),
                )
              ],
            ),
          ),
          Consumer<CartProvider>(
            builder: (context, cartProvider, child) => Text(
              'Total: \$${cartProvider.totalSum.toStringAsFixed(2)}',
              style: const TextStyle(fontSize: 24),
            ),
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all<Color>(Colors.blue),
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/cart'); // Navigate to cart screen
            },
            child: const Text(
              'View Cart',
              style: TextStyle(color: Colors.white),
            ),
          ),
          // ElevatedButton(
          //   style: ButtonStyle(
          //     backgroundColor: WidgetStateProperty.all<Color>(Colors.redAccent),
          //   ),
          //   onPressed: () {
          //     Navigator.pushNamed(
          //         context, '/checkout'); // Navigate to checkout screen
          //   },
          //   child: const Text(
          //     'Proceed to Checkout',
          //     style: TextStyle(color: Colors.white),
          //   ),
          // ),
          SizedBox(height: 20)
        ],
      ),
    );
  }
}

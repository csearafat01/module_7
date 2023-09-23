import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Module_7_Assignment',
      home: ProductList(),
    );
  }
}

class Product {
  final String name;
  final double price;
  int quantity;

  Product(this.name, this.price, this.quantity);
}


class ProductList extends StatefulWidget {
  const ProductList({super.key});

  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  List<Product> products = [
    Product("Product 1", 10.0, 0),
    Product("Product 2", 15.0, 0),
    Product("Product 3", 20.0, 0),
    Product("Product 4", 20.0, 0),
    Product("Product 5", 20.0, 0),
    Product("Product 6", 20.0, 0),
    Product("Product 7", 20.0, 0),
    Product("Product 8", 20.0, 0),
    Product("Product 9", 20.0, 0),
    Product("Product 10", 20.0, 0),
    Product("Product 11", 20.0, 0),
    Product("Product 12", 20.0, 0),
    Product("Product 13", 20.0, 0),
    Product("Product 14", 20.0, 0),
    Product("Product 15", 20.0, 0),
    Product("Product 16", 20.0, 0),
    Product("Product 17", 20.0, 0),
    Product("Product 18", 20.0, 0),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text("Product List")
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 18,
        backgroundColor: Colors.green,
        onPressed: (){Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => CartPage(products),
        ));
        },
        child: const Icon(Icons.shopping_cart),
      ),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                ListTile(
                  title: Text(product.name),
                  subtitle: Text("\$${product.price.toStringAsFixed(2)}"),
                  trailing: SingleChildScrollView(
                    child: Column(
                      children: [
                        Text('Counts : ${product.quantity.toString()}', style: const TextStyle(
                          fontSize: 14,
                        ),),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              product.quantity++;
                              if (product.quantity == 5) {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      title: const Text("Congratulations!"),
                                      content: Text("You've bought 5 ${product.name}!"),
                                      actions: [
                                        TextButton(
                                          child: const Text("OK"),
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                        ),
                                      ],
                                    );
                                  },
                                );
                              }
                            });
                          },

                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                            ),
                          child: const Text('Buy Now'),
                          ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class CartPage extends StatelessWidget {
  final List<Product> products;

  const CartPage(this.products, {super.key});

  int calculateTotalQuantity() {
    Set<String> uniqueProducts = Set<String>();
    for (Product product in products) {
      if (product.quantity > 0) {
        uniqueProducts.add(product.name);
      }
    }
    return uniqueProducts.length;
  }


  @override
  Widget build(BuildContext context) {
    int totalQuantity = calculateTotalQuantity();

    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text("Cart")
        ),
      ),
      body: Center(
        child: Text("Total Products: $totalQuantity"),
      ),
    );
  }
}


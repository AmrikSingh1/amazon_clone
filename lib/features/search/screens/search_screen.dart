import 'package:amazon_clone/constants/global_variables.dart';
import 'package:amazon_clone/features/home/widgets/address_box.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  static const String routeName = '/search-screen';
  final String searchQuery;
  const SearchScreen({
    Key? key,
    required this.searchQuery,
  }) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<Map<String, dynamic>> dummyProducts = [
    {
      'name': 'Premium Bluetooth Speaker',
      'description': 'Premium quality speaker with excellent sound',
      'price': 99.99,
      'quantity': 10,
      'category': 'Electronics',
      'images': [
        'https://images.unsplash.com/photo-1585060544812-6b45742d762f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fGF1ZGlvJTIwJTIwc3BlYWtlcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=600&q=60',
      ],
      'rating': 4.5,
    },
    {
      'name': 'Wireless Headphones',
      'description': 'Noise cancellation headphones with great battery life',
      'price': 149.99,
      'quantity': 15,
      'category': 'Electronics',
      'images': [
        'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cHJvZHVjdHN8ZW58MHx8MHx8&auto=format&fit=crop&w=600&q=60',
      ],
      'rating': 4.8,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: GlobalVariables.appBarGradient,
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Container(
                  height: 42,
                  margin: const EdgeInsets.only(left: 15),
                  child: Material(
                    borderRadius: BorderRadius.circular(7),
                    elevation: 1,
                    child: TextFormField(
                      initialValue: widget.searchQuery,
                      decoration: InputDecoration(
                        prefixIcon: InkWell(
                          onTap: () {},
                          child: const Padding(
                            padding: EdgeInsets.only(
                              left: 6,
                            ),
                            child: Icon(
                              Icons.search,
                              color: Colors.black,
                              size: 23,
                            ),
                          ),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: const EdgeInsets.only(top: 10),
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(7),
                          ),
                          borderSide: BorderSide.none,
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(7),
                          ),
                          borderSide: BorderSide(
                            color: Colors.black38,
                            width: 1,
                          ),
                        ),
                        hintText: 'Search Amazon.in',
                        hintStyle: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                color: Colors.transparent,
                height: 42,
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: const Icon(Icons.mic, color: Colors.black, size: 25),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          const AddressBox(),
          const SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: dummyProducts.length,
              itemBuilder: (context, index) {
                return SearchedProductItem(
                  product: dummyProducts[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class SearchedProductItem extends StatelessWidget {
  final Map<String, dynamic> product;
  
  const SearchedProductItem({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 5,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black12,
          width: 1.5,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: [
          Image.network(
            product['images'][0],
            fit: BoxFit.contain,
            height: 135,
            width: 135,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 235,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  product['name'],
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                  maxLines: 2,
                ),
              ),
              Container(
                width: 235,
                padding: const EdgeInsets.only(left: 10, top: 5),
                child: Text(
                  '\$${product['price']}',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 2,
                ),
              ),
              Container(
                width: 235,
                padding: const EdgeInsets.only(left: 10),
                child: const Text('Eligible for FREE Shipping'),
              ),
              Container(
                width: 235,
                padding: const EdgeInsets.only(left: 10, top: 5),
                child: const Text(
                  'In Stock',
                  style: TextStyle(
                    color: Colors.teal,
                  ),
                  maxLines: 2,
                ),
              ),
              Container(
                width: 235,
                padding: const EdgeInsets.only(left: 10, top: 5, bottom: 5),
                child: Row(
                  children: List.generate(
                    5,
                    (index) => Icon(
                      index < product['rating'].floor()
                          ? Icons.star
                          : index < product['rating']
                              ? Icons.star_half
                              : Icons.star_border,
                      color: Colors.amber,
                      size: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
} 
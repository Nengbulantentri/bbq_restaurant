import 'package:flutter/material.dart';
import 'package:bbq_restaurant/models/bbq.dart';

class NewsDetailScreen extends StatefulWidget {
  final Menu menu;

  NewsDetailScreen({Key? key, required this.menu}) : super(key: key);

  @override
  _NewsDetailScreenState createState() => _NewsDetailScreenState();
}

class _NewsDetailScreenState extends State<NewsDetailScreen> {
  int _rating = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Barbeque Detail"),
        backgroundColor: Colors.brown,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          children: [
            Image.network(
              widget.menu.banner,
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.width * 0.7,
            ),
            const SizedBox(height: 1),
            Text(
              widget.menu.nama,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 1),
            Row(
              children: [
                InkWell(
                  child: Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 24.0,
                  ),
                  onTap: () {
                    setState(() {
                      widget.menu.rating = (widget.menu.rating + 1) % 11;
                    });

                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Rating increased to $_rating')),
                    );
                  },
                ),
                const SizedBox(width: 5),
                Text(
                  'Rating ${widget.menu.rating} / 10',
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
            const SizedBox(height: 1),
            Text(
              widget.menu.desc,
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}

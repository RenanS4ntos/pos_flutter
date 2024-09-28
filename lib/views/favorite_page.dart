import 'package:flutter/material.dart';
import 'package:pos_flutter/providers/favorite_provider.dart';
import 'package:pos_flutter/views/product_detail_page.dart';
import 'package:provider/provider.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    // consumir lista de favoritos

    final favoriteProvider = Provider.of<FavoriteProvider>(context);

    return Scaffold(
        appBar: AppBar(
          title: const Text('Favoritos'),
        ),
        body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: favoriteProvider.favorites.length,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              // navegar para a página de detalhes
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ProductDetailPage(
                    product: favoriteProvider.favorites[index],
                  ),
                ),
              );
            },
            child: ListTile(
              leading: Image.network(favoriteProvider.favorites[index].image),
              title: Text(favoriteProvider.favorites[index].title),
              trailing: IconButton(
                icon: const Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
                onPressed: () {},
              ),
            ),
          ),
        ));
  }
}

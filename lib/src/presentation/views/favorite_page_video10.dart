import 'package:example_provider/src/domain/models/model_video10.dart';
import 'package:example_provider/src/presentation/providers/provider_video10.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavoritePageVideo10 extends StatefulWidget {
  const FavoritePageVideo10({super.key});

  @override
  State<FavoritePageVideo10> createState() => _FavoritePageVideo10State();
}

class _FavoritePageVideo10State extends State<FavoritePageVideo10> {
  @override
  Widget build(BuildContext context) {
    final List<DataModelVideo10> movies =
        context.watch<ProviderVideo10>().favoriteMovies;
    return Scaffold(
      appBar: AppBar(
        title: Text("My favorite movies are contain ${movies.length}"),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: movies.length,
          itemBuilder: ((context, index) {
            final currentMovie = movies[index];
            return ListTile(
              title: Text(currentMovie.title),
              subtitle: Text(currentMovie.duration),
              trailing: OutlinedButton(
                child: Text("Remove"),
                onPressed: () {
                  context.read<ProviderVideo10>().removeFromList(currentMovie);
                },
              ),
            );
          })),
    );
  }
}

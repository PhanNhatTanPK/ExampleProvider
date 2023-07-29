import 'package:example_provider/src/domain/models/model_video10.dart';
import 'package:example_provider/src/presentation/providers/provider_video10.dart';
import 'package:example_provider/src/presentation/views/favorite_page_video10.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePageVideo10 extends StatefulWidget {
  const HomePageVideo10({super.key});

  @override
  State<HomePageVideo10> createState() => _HomePageVideo10State();
}

class _HomePageVideo10State extends State<HomePageVideo10> {
  @override
  Widget build(BuildContext context) {
    List<DataModelVideo10> movies = context.watch<ProviderVideo10>().movies;
    List<DataModelVideo10> favoriteMovies =
        context.watch<ProviderVideo10>().favoriteMovies;

    return Scaffold(
      appBar: AppBar(
        title: const Text("List Movie"),
        centerTitle: true,
      ),
      body: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FavoritePageVideo10()));
                },
                icon: const Icon(Icons.favorite),
                label:
                    Text("Go to my favorite movies ${favoriteMovies.length}")),
            Expanded(
              child: ListView.builder(
                  itemCount: movies.length,
                  itemBuilder: (context, index) {
                    final currentMovie = movies[index];
                    return ListTile(
                      title: Text(currentMovie.title),
                      subtitle: Text(currentMovie.duration),
                      trailing: IconButton(
                        icon: Icon(
                            favoriteMovies.contains(currentMovie)
                                ? Icons.favorite
                                : Icons.heart_broken_rounded,
                            color: Colors.red),
                        onPressed: () {
                          if (!favoriteMovies.contains(currentMovie)) {
                            context
                                .read<ProviderVideo10>()
                                .addToList(currentMovie);
                          } else {
                            context
                                .read<ProviderVideo10>()
                                .removeFromList(currentMovie);
                          }
                        },
                      ),
                    );
                  }),
            )
          ]),
    );
  }
}

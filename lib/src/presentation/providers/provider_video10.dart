import 'dart:math';

import 'package:example_provider/src/domain/models/model_video10.dart';
import 'package:flutter/material.dart';

final List<DataModelVideo10> initialData = List.generate(
    100,
    (index) => DataModelVideo10(
        title: "Movide $index",
        duration: "Duration: ${Random().nextInt(100) + 60} minutes"));

class ProviderVideo10 extends ChangeNotifier {
  final List<DataModelVideo10> _movies = initialData;
  final List<DataModelVideo10> _favoriteMovies = [];

  List<DataModelVideo10> get movies => _movies;
  List<DataModelVideo10> get favoriteMovies => _favoriteMovies;

  void addToList(DataModelVideo10 currentMovie) {
    _favoriteMovies.add(currentMovie);
    notifyListeners();
  }

  void removeFromList(DataModelVideo10 currentMovie) {
    _favoriteMovies.remove(currentMovie);
    notifyListeners();
  }
}

import 'dart:async';
import 'package:rxdart/rxdart.dart';
import 'package:collection/collection.dart';
import '../models/team.dart';
import '../mock/favorites.mock.dart';


class FavoritesBloc{
    Stream<Map<int, List<Team>>> _favoritesList;
    final controller = new BehaviorSubject<Map<int, List<Team>>>(seedValue: {});

    FavoritesBloc(){
      _favoritesList = controller.stream;

      Map<int, List<Team>> lista = {};

      lista = groupBy(favoritesMock, (Team t){
        return t.league;
      });

      controller.add(lista);
    }

    Stream<Map<int, List<Team>>> get favoritesList => _favoritesList;


}

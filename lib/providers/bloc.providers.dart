import 'package:flutter/widgets.dart';
import '../bloc/favorites_bloc.dart';


class BlocProvider extends InheritedWidget{

  FavoritesBloc favoritesBloc = new FavoritesBloc();


  BlocProvider({Widget child}):super(child: child);

  static FavoritesBloc of(BuildContext context){
    return (context.inheritFromWidgetOfExactType(BlocProvider) as BlocProvider).favoritesBloc;
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }

}
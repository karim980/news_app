abstract class NewsStats{}

class NewsInitialState extends NewsStats{}

class NewsBottomNavState extends NewsStats{}

class NewsLoadingState extends NewsStats{}

class NewsGetBusinessSuccessState extends NewsStats{}

class NewsGetBusinessErrorState extends NewsStats{
  final String error;

  NewsGetBusinessErrorState(this.error);

}

class NewsGetSportSuccessState extends NewsStats{}
class NewsLoadingSportState extends NewsStats{}

class NewsGetSportErrorState extends NewsStats{
  final String error;

  NewsGetSportErrorState(this.error);

}


class NewsGetScienceSuccessState extends NewsStats{}
class NewsLoadingScienceState extends NewsStats{}

class NewsGetScienceErrorState extends NewsStats{
  final String error;

  NewsGetScienceErrorState(this.error);

}






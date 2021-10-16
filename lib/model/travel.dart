class Travel {
  String name;
  String location;
  String url;

  Travel(this.name, this.location, this.url);

  static List<Travel> generateBlog() {
    return [
      Travel('Place 1', 'Place 1', 'asset/images/top1.jpg'),
      Travel('Place 2', 'Place 2', 'asset/images/top2.jpg'),
      Travel('Place 3', 'Place 3', 'asset/images/top3.jpg'),
      Travel('Place 4', 'Place 4', 'asset/images/top4.jpg'),
    ];
  }

  static List<Travel> mostpopular() {
    return [
      Travel('Place 1', 'Place 1', 'asset/images/top1.jpg'),
      Travel('Place 2', 'Place 2', 'asset/images/top2.jpg'),
      Travel('Place 3', 'Place 3', 'asset/images/top3.jpg'),
      Travel('Place 4', 'Place 4', 'asset/images/top4.jpg'),
    ];
  }
}

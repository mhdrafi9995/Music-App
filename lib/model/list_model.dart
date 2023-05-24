class AllMusic {
  String image;
  String title;
  String subTitle;
  bool isFave;

  AllMusic({
    required this.image,
    required this.title,
    required this.subTitle,
    this.isFave = false,
  });
}

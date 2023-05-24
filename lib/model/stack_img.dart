class StackMusic {
  String image;
  String title;
  String subTitle;
  String musicPath;
  bool isPlaying;

  StackMusic({
    required this.image,
    required this.title,
    required this.subTitle,
    required this.musicPath,
    this.isPlaying = false,
  });
}

import 'package:fluttertask/model/search_img_model.dart';
import 'package:fluttertask/model/stack_img.dart';

import '../model/list_model.dart';

const images = [
  "assets/images/banner2.jpg",
  "assets/images/banner3.jpeg",
  "assets/images/banner4.jpg"
];
const tabbartext = ["Trending right now", "Rock", "Hip hop", "Elotro", "BGM"];

List<AllMusic> listDetails = [
  AllMusic(
      image: 'assets/images/listimg1.jpeg',
      title: "I'm Good (Blue)",
      subTitle: "Divid Goutta"),
  AllMusic(
      image: 'assets/images/listimg2.jpeg',
      title: "I'm Good (red)",
      subTitle: "Daivid Ramo"),
  AllMusic(
      image: 'assets/images/listimg3.webp',
      title: "I'm Good (black)",
      subTitle: "Singer Man"),
  AllMusic(
    image: 'assets/images/list4.jpeg',
    title: "I'm Good (Green)",
    subTitle: "Divid ravanan",
    // isFave: false,
  ),
];

//musicBanner

List<StackMusic> stackMusic = [
  StackMusic(
    image: 'assets/images/color1.jpeg',
    title: "The Dark Side",
    subTitle: "Mute-Simulation Theory",
    musicPath: 'song1.mp3',
  ),
  StackMusic(
    image: 'assets/images/colors2.webp',
    title: "The Light Side",
    subTitle: "Divid Goutta",
    musicPath: 'song2.mp3',
  ),
  StackMusic(
    image: 'assets/images/colors3.avif',
    title: "Dark & Light Side ",
    subTitle: "Divid roman",
    musicPath: 'song3.mp3',
  ),
];

//seraching img

List<searchModel> searchImg = [
  searchModel(
      image: 'assets/images/searchimg/searchimg1.jpeg',
      songName: "Kumbalangi Nights",
      subTitle: "Sirr Fatda Lyrics "),
  searchModel(
      image: 'assets/images/searchimg/searchimg2.jpeg',
      songName: "Teils of the Heart",
      subTitle: "Chori Da Pistol"),
  searchModel(
      image: 'assets/images/searchimg/searchimg3.jpeg',
      songName: "Marvel Sivil War ",
      subTitle: "Yo Yo Honey Singh ft"),
  searchModel(
      image: 'assets/images/searchimg/searchimg4.jpeg',
      songName: "Nakhar",
      subTitle: "Kanta Laga Lyrics "),
  searchModel(
      image: 'assets/images/searchimg/searchimg5.jpeg',
      songName: "King girl",
      subTitle: "Anshul Garg Presents "),
  searchModel(
      image: 'assets/images/searchimg/searchimg6.jpeg',
      songName: "Madhuram ",
      subTitle: "Divid roman"),
  searchModel(
      image: 'assets/images/searchimg/searchimg7.png',
      songName: "Mahaveeryar ",
      subTitle: "Tony Kakkar is an Indian "),
  searchModel(
      image: 'assets/images/searchimg/searchimg8.jpeg',
      songName: "Moonage",
      subTitle: "latest hindi "),
  searchModel(
      image: 'assets/images/searchimg/searchimg9.jpeg',
      songName: "Sirr",
      subTitle: "Anshul Garg Presents "),
  searchModel(
      image: 'assets/images/searchimg/searchimg10.jpeg',
      songName: "Skoon",
      subTitle: "Divid roman"),
  searchModel(
      image: 'assets/images/searchimg/searchimg11.jpeg',
      songName: "Breack Up Song",
      subTitle: "Divid roman"),
  searchModel(
      image: 'assets/images/searchimg/searchimg12.jpeg',
      songName: "dil kya kare",
      subTitle: "Divid roman"),
];

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:fluttertask/until/list_details.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  bool playing = false;
  IconData playBtn = Icons.play_arrow;
  late TabController _tabController;
  TextEditingController _textEditingController = TextEditingController();
  final player = AudioPlayer();

  // int _curentIndex = 0;
  // late PageController _pageController;
  int tabIndex = 0;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
    // _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.deepPurple.shade400.withOpacity(0.3),
              Colors.deepPurple.shade800.withOpacity(0.2),
            ]),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.deepPurple.shade200.withOpacity(0.2)),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.format_align_left_sharp,
                  color: Colors.white,
                )),
          ),
          title: Container(
            height: 66,
            decoration: BoxDecoration(
                color: Colors.deepPurple.shade200.withOpacity(0.2),
                borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _textEditingController,
                style: const TextStyle(color: Colors.white, fontSize: 18),
                decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Image.asset(
                        'assets/images/search.png',
                        color: Colors.grey,
                        fit: BoxFit.cover,
                      ),
                    ),
                    border: InputBorder.none,
                    hintText: "Search...",
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 19)),
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "Trending right now",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 34),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(images.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        width: 310,
                        height: 240,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                              image: AssetImage(images[index]),
                              fit: BoxFit.cover),

                          // fit: BoxFit.cover,
                        ),
                        child: Column(
                          children: [
                            const Spacer(),
                            Container(
                              margin: const EdgeInsets.all(10),
                              width: double.infinity,
                              height: 90,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: AssetImage(stackMusic[index].image),
                                    fit: BoxFit.cover),
                              ),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 14, bottom: 10, top: 20),
                                    child: Column(children: [
                                      Text(
                                        stackMusic[index].title,
                                        style: const TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),
                                      const Row(
                                        children: [
                                          Icon(
                                            Icons.music_note,
                                            color: Colors.white,
                                          ),
                                          Text(
                                            "Mute-Simulation Theory",
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.white),
                                          ),
                                        ],
                                      )
                                    ]),
                                  ),
                                  const SizedBox(
                                    width: 30,
                                  ),
                                  Container(
                                    margin: EdgeInsets.all(8),
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: IconButton(
                                      onPressed: () {
                                        stackMusic[index].isPlaying
                                            ? player.pause()
                                            : player.play(AssetSource(
                                                stackMusic[index].musicPath));
                                        if (!stackMusic[index].isPlaying) {
                                          setState(() {
                                            stackMusic[index].isPlaying = true;
                                          });
                                        } else {
                                          setState(() {
                                            stackMusic[index].isPlaying = false;
                                          });
                                        }
                                      },
                                      icon: Icon(
                                        stackMusic[index].isPlaying
                                            ? Icons.pause
                                            : Icons.play_arrow,
                                        size: 45,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              TabBar(
                controller: _tabController,
                isScrollable: true,
                indicatorColor: Colors.black,
                dividerColor: Colors.transparent,
                onTap: (value) {
                  setState(() {
                    tabIndex = value;
                  });
                },
                tabs: [
                  for (int index = 0; index < tabbartext.length; index++)
                    AnimatedContainer(
                      padding: const EdgeInsets.all(14),
                      decoration: BoxDecoration(
                          color: tabIndex == index
                              ? Colors.deepPurple
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(8)),
                      duration: const Duration(milliseconds: 300),
                      child: Text(
                        tabbartext[index],
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: tabIndex == index
                              ? FontWeight.bold
                              : FontWeight.normal,
                        ),
                      ),
                    ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              ListView.separated(
                itemCount: listDetails.length,
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                itemBuilder: (context, index) {
                  return Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(14),
                          image: DecorationImage(
                            image: AssetImage(listDetails[index].image),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width - 180,
                            child: Row(
                              children: [
                                Text(
                                  listDetails[index].title,
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Spacer(),
                                IconButton(
                                    onPressed: () {
                                      setState(() {
                                        listDetails[index].isFave =
                                            !listDetails[index].isFave;
                                      });
                                    },
                                    icon: Icon(
                                      listDetails[index].isFave
                                          ? Icons.favorite
                                          : Icons.favorite_border,
                                      color: listDetails[index].isFave
                                          ? Colors.pinkAccent
                                          : Colors.white,
                                      size: 32,
                                    )),
                              ],
                            ),
                          ),
                          Text(
                            listDetails[index].subTitle,
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                },
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 20),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'dart:io';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show ByteData, rootBundle;

import '../Constants/constant.dart';
class PageViewerWithSoundsTwelve extends StatefulWidget {
  @override
  _PageViewerWithSoundsTwelveState createState() => _PageViewerWithSoundsTwelveState();
}

class _PageViewerWithSoundsTwelveState extends State<PageViewerWithSoundsTwelve> {
  late PageController _pageController;
  List<String> _imageUrls = [
    'assets/images/img121.png',
    'assets/images/img122.png',
    'assets/images/img123.png',
    'assets/images/img124.png',
    'assets/images/img125.png',
    'assets/images/img126.png',
    'assets/images/img127.png',
    'assets/images/img128.png',
    'assets/images/img129.png',
    'assets/images/img1210.png',
    'assets/images/img1211.png',
    'assets/images/img1212.png',
    'assets/images/img1213.png',
    'assets/images/img1214.png',
    'assets/images/img1215.png',
    'assets/images/img1216.png',

  ];
  List<String> _audioUrls = [
    'assets/audio/screen121.mp3',
    'assets/audio/screen122.mp3',
    'assets/audio/screen123.mp3',
    'assets/audio/screen124.mp3',
    'assets/audio/screen125.mp3',
    'assets/audio/screen126.mp3',
    'assets/audio/screen127.mp3',
    'assets/audio/screen128.mp3',
    'assets/audio/screen129.mp3',
    'assets/audio/screen1210.mp3',
    'assets/audio/screen1211.mp3',
    'assets/audio/screen1212.mp3',
    'assets/audio/screen1213.mp3',
    'assets/audio/screen1214.mp3',
    'assets/audio/screen1215.mp3',
    'assets/audio/screen1216.mp3',

  ];

  List<String> _alphabets = ['W','Y','B','P','M','N','Ŋ','R','D','T','L','K','G','Ɣ','C','J',];
  List<String> _words = ['Wel','Yuɔɔm','Boiyol','Piɔu','Miɔɔr','Nɔk','Ŋeth','Rɔu','Dau','Tim','Liep','Kou','Gon','Ɣoc','Ca','Jö',];
  late AudioPlayer _audioPlayer;
  //late AudioCache audioCache ;


  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _audioPlayer = AudioPlayer();
    //audioCache = AudioCache();

    _audioPlayer.onPlayerCompletion.listen((event) {
      setState(() {
        // Reset audio player state
        _audioPlayer.stop();
        _audioPlayer.seek(Duration.zero);
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    _audioPlayer.dispose();
    super.dispose();
  }
  @override
  void deactivate() {
    // TODO: implement deactivate
    _pageController.dispose();
    _audioPlayer.dispose();
    super.deactivate();
  }
  void _playSound(String audioUrl) async {
    await _audioPlayer.stop(); // Stop any currently playing sound

    //await _audioPlayer.play(audioUrl);
    //await _audioPlayer.setSourceDeviceFile(audioUrl);
    // audioCache.load(audioUrl);
    try {
      // Load the file from the bundle
      ByteData data = await rootBundle.load(audioUrl);

      // Play the audio file
      int result = await _audioPlayer.playBytes(data.buffer.asUint8List());
      if (result == 1) {
        // success
        print('Audio played successfully');
        //await _audioPlayer.play(audioUrl, isLocal:true);
      } else {
        // failure
        print('Error playing audio');
      }
    } catch (e) {
      // Handle error loading asset
      print('Error loading asset: $e');
    }

    //await _audioPlayer.play(audioUrl, isLocal: true); // Play the new sound
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(drawerMenu13,style: TextStyle(color: textColor),),
        backgroundColor: appbarColor,
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: _imageUrls.length,
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
              itemBuilder: (context, index) {
                return Center(
                  child: Container(
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        _alphabets[index],
                      style: TextStyle(
                        fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: appbarColor,
                      ),
                    ),

                    Image.asset(
                    _imageUrls[index],
                    fit: BoxFit.cover,
                  ),

                      Text(
                        _words[index],
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: appbarColor,
                        ),
                      ),
                    ]),
                  ),
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back,color: appbarColor,size: 30,),
                onPressed: () {
                  if (_currentPage > 0) {
                    _pageController.previousPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    );
                  }
                },
              ),
              IconButton(
                icon: Icon(Icons.play_arrow,color: appbarColor,size: 30,),
                onPressed: () {
                  _playSound(_audioUrls[_currentPage]);
                },
              ),
              IconButton(
                icon: Icon(Icons.arrow_forward,color: appbarColor,size: 30,),
                onPressed: () {
                  if (_currentPage < _imageUrls.length - 1) {
                    _pageController.nextPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    );
                  }
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
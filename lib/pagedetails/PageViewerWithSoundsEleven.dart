import 'dart:io';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show ByteData, rootBundle;

import '../Constants/constant.dart';
class PageViewerWithSoundsEleven extends StatefulWidget {
  @override
  _PageViewerWithSoundsElevenState createState() => _PageViewerWithSoundsElevenState();
}

class _PageViewerWithSoundsElevenState extends State<PageViewerWithSoundsEleven> {
  late PageController _pageController;
  List<String> _imageUrls = [
    'assets/images/img111.png',
    'assets/images/img112.png',
    'assets/images/img113.png',
    'assets/images/img114.png',

  ];
  List<String> _audioUrls = [
    'assets/audio/screen111.mp3',
    'assets/audio/screen112.mp3',
    'assets/audio/screen113.mp3',
    'assets/audio/screen114.mp3',

  ];

  List<String> _alphabets = ['NH','NY','DH','TH',];
  List<String> _words = ['Nhial','Nyɔk de Amääl','Dhaŋ','Thom',];
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
        title: Text(drawerMenu12,style: TextStyle(color: textColor),),
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
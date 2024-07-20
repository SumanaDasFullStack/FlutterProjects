import 'dart:io';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show ByteData, rootBundle;

import '../Constants/constant.dart';
class PageViewerWithSoundsEight extends StatefulWidget {
  @override
  _PageViewerWithSoundsEightState createState() => _PageViewerWithSoundsEightState();
}

class _PageViewerWithSoundsEightState extends State<PageViewerWithSoundsEight> {
  late PageController _pageController;

  List<String> _audioUrls = [
    'assets/audio/screen81.mp3',
    'assets/audio/screen82.mp3',
    'assets/audio/screen83.mp3',
    'assets/audio/screen84.mp3',
    'assets/audio/screen85.mp3',
    'assets/audio/screen86.mp3',
  ];

  List<String> _alphabets = ['A  Ä','E  Ë','I  Ï','O  Ö','Ɔ  Ɔ','Ɛ  Ɛ',];

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
        title: Text(drawerMenu10,style: TextStyle(color: textColor),),
        backgroundColor: appbarColor,
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: _audioUrls.length,
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
                        fontSize: 50,
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
                  if (_currentPage < _audioUrls.length - 1) {
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
import 'dart:io';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show ByteData, rootBundle;
class PageViewerWithSounds extends StatefulWidget {
  @override
  _PageViewerWithSoundsState createState() => _PageViewerWithSoundsState();
}

class _PageViewerWithSoundsState extends State<PageViewerWithSounds> {
  late PageController _pageController;
  List<String> _imageUrls = [
    'assets/images/bg1.png',
    'assets/images/bg2.png',
    'assets/images/bg1.png',
  ];
  List<String> _audioUrls = [
    'assets/audio/screen81.mp3',
    'assets/audio/sound.mp3',
    'assets/audio/screen81.mp3',
  ];
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
        await _audioPlayer.play(audioUrl, isLocal:true);
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
        title: Text('Page Viewer with Sounds'),
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
                /*return Image.network(
                  _imageUrls[index],
                  fit: BoxFit.cover,
                );*/
                return Image.asset(
                  _imageUrls[index],
                  fit: BoxFit.cover,
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back),
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
                icon: Icon(Icons.play_arrow),
                onPressed: () {
                  _playSound(_audioUrls[_currentPage]);
                },
              ),
              IconButton(
                icon: Icon(Icons.arrow_forward),
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
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_management/Core/Constants/colors.dart';
import 'package:hotel_management/Core/widgets/custom_button.dart';
import 'package:hotel_management/Views/Auth/login_screen.dart';
import 'package:video_player/video_player.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen>
    with SingleTickerProviderStateMixin {
  late VideoPlayerController _videoPlayerController;
  late AnimationController _animationController;
  late Animation<Offset> _slideAnimation1;
  late Animation<Offset> _slideAnimation2;
  late Animation<double> _fadeAnimation1;
  late Animation<double> _fadeAnimation2;

  @override
  void initState() {
    super.initState();
    _videoPlayerController =
        VideoPlayerController.asset('assets/videos/video1.mp4')
          ..initialize().then((_) {
            setState(() {
              _videoPlayerController.play();
              _videoPlayerController.setLooping(true);
            });
          }).catchError((error) {
            // print('Error initializing video player: $error');
          });

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );

    _slideAnimation1 = Tween<Offset>(
      begin: const Offset(1, 0),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeOut,
    ));

    _slideAnimation2 = Tween<Offset>(
      begin: const Offset(0, 1),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeOut,
    ));

    _fadeAnimation1 = Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeIn,
    ));

    _fadeAnimation2 = Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeIn,
    ));

    _animationController.forward();
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomButton(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const Loginscreen()));
        },
        title: "Start",
      ),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            bottom: 0,
            child: _videoPlayerController.value.isInitialized
                ? AspectRatio(
                    aspectRatio: _videoPlayerController.value.aspectRatio,
                    child: VideoPlayer(_videoPlayerController),
                  )
                : const CircularProgressIndicator(),
          ),
          Positioned(
            top: h * .3,
            left: w * .3,
            right: w * .3,
            child: SlideTransition(
              position: _slideAnimation1,
              child: FadeTransition(
                opacity: _fadeAnimation1,
                child: Text(
                  'OCIEL',
                  style: GoogleFonts.aBeeZee(
                    color: kveryWhite,
                    fontSize: w * .14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: h * .45,
            left: w * .05,
            right: w * .05,
            child: SlideTransition(
              position: _slideAnimation2,
              child: FadeTransition(
                opacity: _fadeAnimation2,
                child: Text(
                  'Enjoy your\n            Journey',
                  style: GoogleFonts.aBeeZee(
                    color: kveryWhite,
                    fontSize: w * .1,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

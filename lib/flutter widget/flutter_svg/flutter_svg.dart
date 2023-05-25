import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgPictures extends StatefulWidget {
  const SvgPictures({Key? key}) : super(key: key);

  @override
  State<SvgPictures> createState() => _SvgPicturesState();
}

class _SvgPicturesState extends State<SvgPictures> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: SvgPicture.asset("assets/image/youtube-logo-svg-vector.svg",height: 100,width: 100,fit: BoxFit.cover,)
        ),
    );
  }
}

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        // centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.black,
        title: Text(
          'LaunchPad',
          style: GoogleFonts.orbitron(),
        ),
      ),
      body: Center(
        child: Wrap(
          spacing: 20,
          runSpacing: 20,
          children: [
            Pad(
                colorCenter: Colors.amber,
                colorOutline: Colors.amber.shade100,
                note: "1.mp3"),
            Pad(
                colorCenter: Colors.green,
                colorOutline: Colors.green.shade100,
                note: "2.mp3"),
            Pad(
                colorCenter: Colors.red,
                colorOutline: Colors.red.shade100,
                note: "3.mp3"),
            Pad(
                colorCenter: Colors.amber,
                colorOutline: Colors.amber.shade100,
                note: "4.mp3"),
            Pad(
                colorCenter: Colors.green,
                colorOutline: Colors.green.shade100,
                note: "5.mp3"),
            Pad(
                colorCenter: Colors.red,
                colorOutline: Colors.red.shade100,
                note: "6.mp3"),
            Pad(
                colorCenter: Colors.amber,
                colorOutline: Colors.amber.shade100,
                note: "7.mp3"),
            Pad(
                colorCenter: Colors.green,
                colorOutline: Colors.green.shade100,
                note: "8.mp3"),
            Pad(
                colorCenter: Colors.red,
                colorOutline: Colors.red.shade100,
                note: "9.mp3"),
            Pad(
                colorCenter: Colors.amber,
                colorOutline: Colors.amber.shade100,
                note: "10.mp3"),
            Pad(
                colorCenter: Colors.green,
                colorOutline: Colors.green.shade100,
                note: "11.mp3"),
            Pad(
                colorCenter: Colors.red,
                colorOutline: Colors.red.shade100,
                note: "12.mp3"),
            Pad(
                colorCenter: Colors.amber,
                colorOutline: Colors.amber.shade100,
                note: "13.mp3"),
            Pad(
                colorCenter: Colors.green,
                colorOutline: Colors.green.shade100,
                note: "14.mp3"),
            Pad(
                colorCenter: Colors.red,
                colorOutline: Colors.red.shade100,
                note: "15.mp3"),
            Pad(
                colorCenter: Colors.amber,
                colorOutline: Colors.amber.shade100,
                note: "16.mp3"),
            Pad(
                colorCenter: Colors.green,
                colorOutline: Colors.green.shade100,
                note: "17.mp3"),
            Pad(
                colorCenter: Colors.red,
                colorOutline: Colors.red.shade100,
                note: "18.mp3"),
          ],
        ),
      ),
    );
  }
}

class Pad extends StatefulWidget {
  final colorCenter;
  final colorOutline;
  final note;
  const Pad({this.colorCenter, this.colorOutline, this.note, super.key});

  @override
  State<Pad> createState() => _PadState();
}

class _PadState extends State<Pad> {
  late Color _colorCenter;
  late Color _colorOutline;
  final player = AudioPlayer();
  @override
  void initState() {
    _colorCenter = widget.colorCenter;
    _colorOutline = widget.colorOutline;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () async {
        setState(() {
          _colorCenter = Colors.white;
          _colorOutline = Colors.white;
          player.play(AssetSource(widget.note));
        });
        await Future.delayed(Duration(milliseconds: 100));
        setState(() {
          _colorCenter = widget.colorCenter;
          _colorOutline = widget.colorOutline;
        });
      },
      child: Container(
        height: height / 8.2,
        width: width / 4.3,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              blurRadius: 5.0,
            )
          ],
          gradient: RadialGradient(colors: [
            _colorCenter,
            _colorOutline,
          ], radius: 0.5),
        ),
      ),
    );
  }
}

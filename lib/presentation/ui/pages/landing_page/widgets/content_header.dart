import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContentHeader extends StatelessWidget {
  final String contentHeaderTitle;
  const ContentHeader({super.key, required this.contentHeaderTitle});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            contentHeaderTitle,
            style: GoogleFonts.poppins(
              fontSize: 18.0,
              color: Colors.black87,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: Icon(
            Icons.more_horiz_rounded,
            color: Colors.black87,
            size: 25.0,
          ),
        ),
      ],
    );
  }
}

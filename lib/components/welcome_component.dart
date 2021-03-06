import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kahla_bidha_login_page/library/colors.dart' as global_colors;

class WelcomeComponent extends StatelessWidget {
  final VoidCallback? onClick;
  final bool? isWide ;
  const WelcomeComponent({
    Key? key,
    this.onClick,
    this.isWide = true
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: global_colors.blackColor,
      child: Center(
        child: ListView(
          shrinkWrap: true,
          children: [
            AutoSizeText(
                'Kahla Bidha',
                textAlign: TextAlign.center,
                maxLines: 2,
                minFontSize: 20.0,
                maxFontSize: 120.0,
                style: GoogleFonts.pacifico(
                    fontSize: 180.0,
                    height: 1.0,
                    color: global_colors.whiteColor,
                )
            ),
            if (!isWide!) const SizedBox(
              height: 80.0,
            ),
            if (!isWide!) FractionallySizedBox(
              widthFactor: 0.5,
              child: ElevatedButton(
                onPressed: () => onClick!(),
                child: Text(
                    "Login",
                    style: GoogleFonts.cookie(
                      fontSize: 15.0,
                      color: global_colors.blackColor,
                    )
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(global_colors.whiteColor),
                    foregroundColor: MaterialStateProperty.all(global_colors.blackColor),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                        const EdgeInsets.only(
                            top: 23.0,
                            bottom: 23.0
                        )
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        )
                    )
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
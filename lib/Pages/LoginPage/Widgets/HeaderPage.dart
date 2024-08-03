import 'package:flutter/material.dart';
import 'package:verifytapp/Constant/Screen.dart';
import 'package:verifytapp/Pages/LoginPage/Screens/LoginScreens.dart';
import 'BodyPage.dart';

class LoginHeader extends StatefulWidget {
  const LoginHeader({super.key});

  @override
  State<LoginHeader> createState() => _LoginHeaderState();
}

class _LoginHeaderState extends State<LoginHeader> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Stack(children: [
      Container(
        padding: EdgeInsets.only(
            top: Screens.bodyheight(context) * 0.32,
            bottom: Screens.bodyheight(context) * 0.1),
        child: CustomPaint(
          size: Size(400, 550),
          painter: RPSCustomPainter(),
        ),
      ),
      Container(
        padding: EdgeInsets.only(top: Screens.fullHeight(context)) * 0.18,
        child: Center(
          child: Column(
            children: [
              Text(
                'Verifyt',
                style: theme.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                    fontSize: 45),
              ),
              Text(
                'Ensure Accuracy',
                style: theme.textTheme.titleMedium?.copyWith(),
              ),
              SizedBox(
                height: Screens.bodyheight(context) * 0.07,
              ),
              LoginBodyPage()
            ],
          ),
        ),
      )
    ]);
  }
}

// class RPSCustomPainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     // Layer 1

//     Paint paint_fill_0 = Paint()
//       ..color = Color.fromARGB(255, 46, 40, 128)
//       ..style = PaintingStyle.fill
//       ..strokeWidth = size.width * 0.00
//       ..strokeCap = StrokeCap.butt
//       ..strokeJoin = StrokeJoin.miter;

//     Path path_0 = Path();
//     path_0.moveTo(size.width * 0.0029148, size.height * 0.3942480);
//     path_0.quadraticBezierTo(size.width * 0.1636094, size.height * 0.2269531,
//         size.width * 0.2830000, size.height * 0.2126270);
//     path_0.cubicTo(
//         size.width * 0.3981562,
//         size.height * 0.1848438,
//         size.width * 0.5020445,
//         size.height * 0.2245605,
//         size.width * 0.6929432,
//         size.height * 0.1750293);
//     path_0.quadraticBezierTo(size.width * 0.8927165, size.height * 0.1125879,
//         size.width * 1.0066043, size.height * 0.0005859);
// //
//     path_0.quadraticBezierTo(size.width * 1.0042673, size.height * 0.4903613,
//         size.width * 1.0038654, size.height * 0.6726074);
//     path_0.cubicTo(
//         //bottom right
//         size.width * 0.9814779,
//         size.height * 0.7109570,
//         size.width * 0.8579592,
//         size.height * 0.8751660,
//         size.width * 0.5423747,
//         size.height * 0.8311133);
//     path_0.cubicTo(
//         //bottom left
        // size.width * 0.3752122,
        // size.height * 0.8031445,
        // size.width * 0.3185438,
        // size.height * 0.8368359,
        // size.width * 0.2239296,
        // size.height * 0.8752051);
//     path_0.quadraticBezierTo(size.width * 0.0939983, size.height * 0.9381152,
//         size.width * 0.0049393, size.height * 1.0085059);

//     canvas.drawPath(path_0, paint_fill_0);

//     // Layer 1

//     Paint paint_stroke_0 = Paint()
//       ..color = const Color.fromARGB(255, 33, 150, 243)
//       ..style = PaintingStyle.stroke
//       ..strokeWidth = size.width * 0.00
//       ..strokeCap = StrokeCap.butt
//       ..strokeJoin = StrokeJoin.miter;

//     canvas.drawPath(path_0, paint_stroke_0);
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return true;
//   }
// }

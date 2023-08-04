import 'package:flutter/material.dart';
import 'package:whatsapp_ui/core/constants/app_colors.dart';
import 'package:whatsapp_ui/features/splash_screen/widgets/meta_logo_with_text_widget.dart';
import 'package:whatsapp_ui/features/splash_screen/widgets/splash_logo.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          /// app logo
          const Center(
            child: SplashLogo(),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin:
                  const EdgeInsets.only(bottom: 40 ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  /// arrow button to go to next screen
                  GestureDetector(
                    onTap: () {
                      
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.neutral03,
                        border: Border.all(color: AppColors.neutral02, width: 1),
                        borderRadius: BorderRadius.circular(100)
                      ),
                      child: const Icon(Icons.chevron_right_outlined, size: 38, color: AppColors.green01,)),
                  ),
                  const SizedBox(height: 20,),
                  /// Meta text with logo 
                  const MetaLogoWithTextWidget(),
                  const SizedBox(
                    height: 30 ,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}





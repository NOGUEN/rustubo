import 'package:flutter/material.dart';
import 'package:rutsubo/app/view/landing_page/landing_lists/landing_list_cells.dart';
import 'package:rutsubo/global_setting/app_colors.dart';
import 'package:rutsubo/global_setting/app_string.dart';
import 'package:rutsubo/global_setting/app_values.dart';
import 'package:rutsubo/responsive.dart';

class LandingListCellSecond extends StatelessWidget {
  const LandingListCellSecond({super.key});

  @override
  Widget build(BuildContext context) {
    return LandingListFlowCell(
      height: 600,
      content: Responsive.isDesktop(context)
          ? const SecondListCellWeb()
          : Responsive.isTablet(context)
              ? const SecondListCellTablet()
              : const SecondListCellMobile(),
      imgPath: Responsive.isMobile(context)
          ? AppString.img_landing_background_full_2
          : AppString.img_landing_background_4,
    );
  }
}

class SecondListCellWeb extends StatelessWidget {
  const SecondListCellWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 500,
          child: Image.asset('images/manga.png'),
        ),
        const SizedBox(width: 100),
        RichText(
          text: TextSpan(
            style: const TextStyle(
              fontSize: AppValues.webLandingFontSize,
              color: Colors.black,
              height: AppValues.lineHeight,
            ),
            children: [
              landingTextSpan("\n", AppColors.white, fontSize: 0),
              landingTextSpan("소년 점프 제 99회\n", AppColors.white),
              landingTextSpan("데즈카상", AppColors.highlightGreen, fontSize: 35),
              landingTextSpan("을 수상하고,\n현재 ", AppColors.white),
              landingTextSpan("주간소년점프", AppColors.highlightRed, fontSize: 35),
              landingTextSpan("에서\n", AppColors.white),
              landingTextSpan('단편게재, 일러스트 제작 등을\n하며 신인작가로써\n만화활동을 하고 있습니다.',
                  AppColors.white),
            ],
          ),
        ),
      ],
    );
  }
}

class SecondListCellTablet extends StatelessWidget {
  const SecondListCellTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 400,
          child: Image.asset('images/manga.png'),
        ),
        const SizedBox(width: 100),
        RichText(
          text: TextSpan(
            style: const TextStyle(
              fontSize: AppValues.tabletLandingFontSize,
              color: Colors.black,
              height: AppValues.lineHeight,
            ),
            children: [
              landingTextSpan("\n", AppColors.white, fontSize: 40),
              landingTextSpan("소년 점프 제 99회\n", AppColors.white),
              landingTextSpan("데즈카상", AppColors.highlightGreen, fontSize: 35),
              landingTextSpan("을 수상하고,\n현재 ", AppColors.white),
              landingTextSpan("주간소년점프", AppColors.highlightRed, fontSize: 35),
              landingTextSpan("에서\n", AppColors.white),
              landingTextSpan('단편게재, 일러스트 제작 등을\n하며 신인작가로써\n만화활동을 하고 있습니다.',
                  AppColors.white),
            ],
          ),
        ),
      ],
    );
  }
}

class SecondListCellMobile extends StatelessWidget {
  const SecondListCellMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        SizedBox(
          height: 250,
          child: Image.asset('images/manga.png'),
        ),
        const SizedBox(height: 30),
        RichText(
          text: TextSpan(
            style: const TextStyle(
              fontSize: AppValues.mobileLandingFontSize,
              color: Colors.black,
              height: AppValues.lineHeight,
            ),
            children: [
              landingTextSpan("소년 점프 제 99회\n", AppColors.white),
              landingTextSpan("데즈카상", AppColors.highlightGreen, fontSize: 30),
              landingTextSpan("을 수상하고, \n현재 ", AppColors.white),
              landingTextSpan("주간소년점프", AppColors.highlightRed, fontSize: 30),
              landingTextSpan("에서\n", AppColors.white),
              landingTextSpan('단편게재, 일러스트 제작 등을 하며\n신인작가로써\n만화활동을 하고 있습니다.',
                  AppColors.white),
            ],
          ),
        ),
        const Spacer(),
      ],
    );
  }
}

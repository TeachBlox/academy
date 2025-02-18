import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:teachblox/academy/screens/landing_screen/courses/course_block.dart';
import 'package:teachblox/academy/screens/landing_screen/courses/courses_title.dart';
import 'package:teachblox/assets/png_image.dart';
import 'package:teachblox/l10n/locals.dart';
import 'package:teachblox/utils.dart';
import 'package:teachblox/widgets/layout/adaptive_padding.dart';

class Courses extends StatelessWidget {
  const Courses({super.key});

  List<StaggeredGridTile> _getBlocks(BuildContext context) {
    final locale = getLocale(context);

    return [
      StaggeredGridTile.fit(
        crossAxisCellCount: 1,
        child: CourseBlock(
          title: locale.landingScreen_courses_block1_title,
          description: locale.landingScreen_courses_block1_description,
          imagePath: PngImage.landingCourseBlockchain,
          path: '/1',
        ),
      ),
      StaggeredGridTile.fit(
        crossAxisCellCount: 1,
        child: CourseBlock(
          title: locale.landingScreen_courses_block2_title,
          description: locale.landingScreen_courses_block2_description,
          imagePath: PngImage.landingCourseFrontend,
          path: '/2',
        ),
      ),
      StaggeredGridTile.fit(
        crossAxisCellCount: 1,
        child: CourseBlock(
          title: locale.landingScreen_courses_block3_title,
          description: locale.landingScreen_courses_block3_description,
          imagePath: PngImage.landingCourseTWA,
          path: '/3',
        ),
      ),
      StaggeredGridTile.fit(
        crossAxisCellCount: 1,
        child: CourseBlock(
          title: locale.landingScreen_courses_block4_title,
          description: locale.landingScreen_courses_block4_description,
          imagePath: PngImage.landingCourseSmart,
          path: '/4',
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final blocks = _getBlocks(context);
    return AdaptivePadding(
      child: Padding(
        padding: EdgeInsets.only(
          top: getAdaptiveValue(
            context,
            mobile: 100.0,
            tablet: 150.0,
            desktop: 200.0,
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              width: 480.0,
              child: CoursesTitle(),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 72.0),
              child: StaggeredGrid.count(
                crossAxisCount: getAdaptiveValue(
                  context,
                  mobile: 1,
                  tablet: 2,
                  desktop: 4,
                ),
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                children: blocks,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import '../models/explore_item_model.dart';
import 'package:bishnu_s_application1/core/app_export.dart';
import 'package:bishnu_s_application1/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ExploreItemWidget extends StatelessWidget {
  ExploreItemWidget(
    this.exploreItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ExploreItemModel exploreItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomIconButton(
          height: 70.adaptSize,
          width: 70.adaptSize,
          padding: EdgeInsets.all(23.h),
          child: CustomImageView(
            svgPath: ImageConstant.imgArrowleftPrimary,
          ),
        ),
        SizedBox(height: 7.v),
        Text(
          exploreItemModelObj.manshirt!,
          overflow: TextOverflow.ellipsis,
          style: CustomTextStyles.bodySmall10,
        ),
      ],
    );
  }
}

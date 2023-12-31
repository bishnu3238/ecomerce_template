import '../models/categories_item_model.dart';
import 'package:bishnu_s_application1/core/app_export.dart';
import 'package:bishnu_s_application1/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CategoriesItemWidget extends StatelessWidget {
  CategoriesItemWidget(
    this.categoriesItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CategoriesItemModel categoriesItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: EdgeInsets.only(bottom: 15.v),
          child: Column(
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
                categoriesItemModelObj.manshirt!,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodySmall10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

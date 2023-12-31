import 'bloc/notification_offer_bloc.dart';
import 'models/notification_offer_model.dart';
import 'package:bishnu_s_application1/core/app_export.dart';
import 'package:bishnu_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:bishnu_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:bishnu_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class NotificationOfferScreen extends StatelessWidget {
  const NotificationOfferScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<NotificationOfferBloc>(
        create: (context) => NotificationOfferBloc(NotificationOfferState(
            notificationOfferModelObj: NotificationOfferModel()))
          ..add(NotificationOfferInitialEvent()),
        child: NotificationOfferScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<NotificationOfferBloc, NotificationOfferState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              appBar: CustomAppBar(
                  leadingWidth: 40.h,
                  leading: AppbarImage(
                      svgPath: ImageConstant.imgArrowleftBlueGray300,
                      margin:
                          EdgeInsets.only(left: 16.h, top: 16.v, bottom: 15.v),
                      onTap: () {
                        onTapArrowleftone(context);
                      }),
                  title: AppbarSubtitle(
                      text: "lbl_notification".tr,
                      margin: EdgeInsets.only(left: 12.h))),
              body: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(vertical: 12.v),
                  child: Column(children: [
                    Container(
                        width: double.maxFinite,
                        padding: EdgeInsets.all(16.h),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                  svgPath: ImageConstant.imgOffer,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize,
                                  margin: EdgeInsets.only(bottom: 94.v)),
                              Expanded(
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 12.h),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("lbl_the_best_title".tr,
                                                style:
                                                    theme.textTheme.titleSmall),
                                            SizedBox(height: 11.v),
                                            SizedBox(
                                                width: 305.h,
                                                child: Text(
                                                    "msg_culpa_cillum_consectetur"
                                                        .tr,
                                                    maxLines: 3,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: theme
                                                        .textTheme.bodySmall!
                                                        .copyWith(
                                                            height: 1.80))),
                                            SizedBox(height: 9.v),
                                            Text("msg_april_30_2014_1_01".tr,
                                                style: CustomTextStyles
                                                    .bodySmallOnPrimary10)
                                          ])))
                            ])),
                    Container(
                        width: double.maxFinite,
                        padding: EdgeInsets.all(16.h),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                  svgPath: ImageConstant.imgOffer,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize,
                                  margin: EdgeInsets.only(bottom: 72.v)),
                              Expanded(
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 12.h),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("msg_summer_offer_98".tr,
                                                style:
                                                    theme.textTheme.titleSmall),
                                            SizedBox(height: 10.v),
                                            SizedBox(
                                                width: 305.h,
                                                child: Text(
                                                    "msg_culpa_cillum_consectetur2"
                                                        .tr,
                                                    maxLines: 2,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: theme
                                                        .textTheme.bodySmall!
                                                        .copyWith(
                                                            height: 1.80))),
                                            SizedBox(height: 9.v),
                                            Text("msg_april_30_2014_1_01".tr,
                                                style: CustomTextStyles
                                                    .bodySmallOnPrimary10)
                                          ])))
                            ])),
                    SizedBox(height: 5.v),
                    Container(
                        width: double.maxFinite,
                        padding: EdgeInsets.all(16.h),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                  svgPath: ImageConstant.imgOffer,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize,
                                  margin: EdgeInsets.only(bottom: 94.v)),
                              Expanded(
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 12.h),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("msg_special_offer_25".tr,
                                                style:
                                                    theme.textTheme.titleSmall),
                                            SizedBox(height: 9.v),
                                            SizedBox(
                                                width: 305.h,
                                                child: Text(
                                                    "msg_culpa_cillum_consectetur"
                                                        .tr,
                                                    maxLines: 3,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: theme
                                                        .textTheme.bodySmall!
                                                        .copyWith(
                                                            height: 1.80))),
                                            SizedBox(height: 9.v),
                                            Text("msg_april_30_2014_1_01".tr,
                                                style: CustomTextStyles
                                                    .bodySmallOnPrimary10)
                                          ])))
                            ]))
                  ]))));
    });
  }

  /// Navigates to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is
  /// used to build the navigation stack. When the action is triggered, this
  /// function uses the [NavigatorService] to navigate to the previous screen
  /// in the navigation stack.
  onTapArrowleftone(BuildContext context) {
    NavigatorService.goBack();
  }
}

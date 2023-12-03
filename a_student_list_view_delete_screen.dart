import '../a_student_list_view_delete_screen/widgets/preview_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:sksu_fv1/core/app_export.dart';
import 'package:sksu_fv1/widgets/app_bar/appbar_subtitle.dart';
import 'package:sksu_fv1/widgets/app_bar/appbar_title.dart';
import 'package:sksu_fv1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:sksu_fv1/widgets/app_bar/custom_app_bar.dart';
import 'package:sksu_fv1/widgets/custom_elevated_button.dart';

class AStudentListViewDeleteScreen extends StatelessWidget {
  const AStudentListViewDeleteScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 51.v),
            child: SizedBox(
              height: 736.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  _buildThirteen(context),
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: double.maxFinite,
                          padding: EdgeInsets.symmetric(
                            horizontal: 20.h,
                            vertical: 18.v,
                          ),
                          decoration: AppDecoration.fillSecondaryContainer1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(bottom: 43.v),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 2.h),
                                        child: Text(
                                          "1 Al-Battani",
                                          style: theme.textTheme.headlineLarge,
                                        ),
                                      ),
                                      SizedBox(height: 47.v),
                                      _buildPreview(context),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 140.v,
                                width: 8.h,
                                margin: EdgeInsets.only(
                                  left: 17.h,
                                  top: 110.v,
                                  bottom: 322.v,
                                ),
                                decoration: BoxDecoration(
                                  color:
                                      appTheme.blueGray10077.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(
                                    4.h,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 76.v),
                        _buildTwelve(context),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: Padding(
        padding: EdgeInsets.only(left: 59.h),
        child: Column(
          children: [
            AppbarTitle(
              text: "Cikgu Zarina",
            ),
            AppbarSubtitle(
              text: "Welcome Back!",
              margin: EdgeInsets.only(right: 109.h),
            ),
          ],
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgProfilePicture,
          margin: EdgeInsets.only(
            left: 11.h,
            right: 66.h,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildThirteen(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.only(bottom: 50.v),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              ImageConstant.imgGroup222,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 64.h,
            vertical: 16.v,
          ),
          decoration: AppDecoration.fillBlueGray,
          child: CustomElevatedButton(
            width: 144.h,
            text: "Save",
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPreview(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (
        context,
        index,
      ) {
        return SizedBox(
          height: 10.v,
        );
      },
      itemCount: 5,
      itemBuilder: (context, index) {
        return PreviewItemWidget();
      },
    );
  }

  /// Section Widget
  Widget _buildTwelve(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 89.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.fillOnErrorContainer,
      child: CustomImageView(
        imagePath: ImageConstant.imgFrame1,
        height: 21.v,
        width: 244.h,
      ),
    );
  }
}

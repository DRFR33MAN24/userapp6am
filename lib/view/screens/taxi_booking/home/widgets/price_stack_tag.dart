import 'package:flutter/material.dart';
import 'package:sixam_mart/util/dimensions.dart';
import 'package:sixam_mart/util/images.dart';
import 'package:sixam_mart/util/styles.dart';

class ReviewStackTag extends StatelessWidget {
  final String value;
  const ReviewStackTag({Key key,  this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(5), bottomRight: Radius.circular(5),
            ),
            gradient: LinearGradient(colors: [
              Colors.black.withOpacity(0.7),
              Colors.black.withOpacity(0.35),
            ]),
          ),

          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: Dimensions.PADDING_SIZE_EXTRA_SMALL,vertical:Dimensions.PADDING_SIZE_EXTRA_SMALL ),
            child: Row(
              children: [
                Image.asset(
                  Images.star_fill,
                  width: 10,
                  height: 10,
                ),
                Text(value,
                  style: robotoRegular.copyWith(
                    fontSize: Dimensions.fontSizeExtraSmall, color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
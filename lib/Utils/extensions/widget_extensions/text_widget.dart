import 'package:flutter/material.dart';


Widget TextWidgetInterBold({
  required String title,
  required double fontSize,
  FontWeight fontWeight = FontWeight.normal,
  TextAlign align =TextAlign.start,
  required Color color,
      Shadow? shadow = const Shadow(color: Colors.white, offset: Offset(0, 0), blurRadius: 0)

})

{return Text(
  title,
  style: TextStyle(
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: color,
    shadows: shadow != null ? [shadow] : null,
  ),
  maxLines: 3,
  overflow: TextOverflow.ellipsis,
  textAlign: align,
);}




Widget TextWidgetInterRegular({
  required String title,
  required double fontSize,
  required Color color,
  FontWeight fontWeight = FontWeight.normal,
  TextAlign align = TextAlign.start,
})
{
  return Text(title,style :TextStyle(
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: color,
    fontFamily: 'Inter-Regular',
  ),
    maxLines: 100,
    overflow: TextOverflow.ellipsis,
    textAlign: align,
  );
}

Widget TextWidgetInterMedium({
  required String title,
  required double fontSize,
  required color ,
  FontWeight fontWeight = FontWeight.normal,
  TextAlign align = TextAlign.start
})
{
  return Text(
    title,
    style:TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      fontFamily: 'Inter-Medium',
    ),
    maxLines: 3,
    overflow: TextOverflow.ellipsis,
    textAlign: align,
  );


}

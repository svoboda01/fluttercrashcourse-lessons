import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:lesson01/config/constants.dart';

class CalPager extends StatelessWidget {
  static const String routeName = '/cal_pager';

  const CalPager({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
            children: [
      'adventures-begin-mug@3x.png',
      'apple-and-juice@3x.png',
      'apples-on-tree@3x.png'
    ]
                .map((name) => CachedNetworkImage(
                      imageUrl:
                          "${baseBackgroundImageURL(env['SUPABASE_PROJECT_ID']!)}/$name",
                      fit: BoxFit.cover,
                      alignment: Alignment.center,
                      placeholder: (context, url) =>
                          const CircularProgressIndicator(),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                    ))
                .toList()));
  }
}

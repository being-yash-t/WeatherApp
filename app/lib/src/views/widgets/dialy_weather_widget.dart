import 'package:app/src/config/config.dart';
import 'package:app/src/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

class DailyWeatherWidget extends StatelessWidget {
  const DailyWeatherWidget({Key? key, required this.dailyWeather})
      : super(key: key);
  final List<Daily> dailyWeather;

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          // shrinkWrap: true,
          // itemCount: dailyWeather.length,
          children: dailyWeather.map<Widget>((item) {
            // if (index == 0) {
            //   return const SizedBox();
            // }
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: _size.width * 0.27,
                      child: Text(
                        getDayFromEpoch(item.dt)
                        // +", " + getDateTimeFromUnix(item.dt).day.toString()
                        ,
                        style: Styles.subTitleTextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(
                      width: _size.width * 0.09,
                      child: Image.asset(
                        ImageAssets.getSmallAsset(item.weather.first.icon),
                        width: _size.width * 0.09,
                      ),
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    Text(
                      '${item.temp.max}°',
                      style: Styles.titleTextStyle(
                          fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      '${item.temp.min}°',
                      style: Styles.subTitleTextStyle(
                          fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ]),
            );
          }).toList(),
        ));
  }
}

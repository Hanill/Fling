import 'package:fling/screens/mypage/customer_service/cs_screen/customer_service_screen.dart';
import 'package:fling/screens/mypage/preferences/preferences_screen.dart';
import 'package:fling/screens/mypage/privacy/privacy_screen/privacy_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PrivateSettings extends StatelessWidget {
  const PrivateSettings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container (
        margin: const EdgeInsets.only(top: 50, left: 36.0),
        alignment: Alignment.topLeft,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextButton.icon(
                onPressed: () {},
                icon: SvgPicture.asset('assets/icons/mypage_spot.svg',width: 30, height: 30 ), label: Text('동네인증', style: TextStyle(color: Colors.black)),
            ),
            TextButton.icon(
              onPressed: () {Navigator.push(context, MaterialPageRoute(
                  builder: (context) => const PrivacyScreen()));},
              icon: SvgPicture.asset('assets/icons/mypage_info.svg',width: 30, height: 30 ), label: Text('개인정보',style: TextStyle(color: Colors.black)),
            ),
             TextButton.icon(
              onPressed: () {Navigator.push(context, MaterialPageRoute(
    builder: (context) => const CustomerServiceScreen()));},
               icon: SvgPicture.asset('assets/icons/mypage_center.svg',width: 30, height: 30 ), label: Text('고객센터',style: TextStyle(color: Colors.black)),
            ),
            TextButton.icon(
               onPressed: () {Navigator.push(context, MaterialPageRoute(
                   builder: (context) => const PreferencesScreen()));},
                icon: SvgPicture.asset('assets/icons/mypage_setting.svg',width: 30, height: 30 ), label: Text('환경설정',style: TextStyle(color: Colors.black)),
            )
          ],
        )
    );
  }
}
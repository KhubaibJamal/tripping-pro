import 'package:flutter/material.dart';
import 'package:tripping_pro/res/theme/theme.dart';
import 'package:tripping_pro/screens/widgets/custom_safearea.dart';
import 'package:tripping_pro/utils/responsiveSize.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomSafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text('Notifications'),
          centerTitle: true,

          actions: [
            Text(
              "Clear",
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                fontSize: 16,
                height: 1.0,
                letterSpacing: 0.0,
              ),
            ),
            SizedBox(width: 20),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: NotificationTile(
                  notificationTitle: "New message from John Doe",
                  notificationSubtitle: "Hey! How are you?",
                  notificationImage: "https://picsum.photos/200",
                  isNewNotification:
                      (index == 2 || index == 4 || index == 6) ? true : false,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class NotificationTile extends StatelessWidget {
  final String notificationTitle, notificationSubtitle, notificationImage;
  final bool? isNewNotification;
  const NotificationTile({
    super.key,
    required this.notificationTitle,
    required this.notificationSubtitle,
    required this.notificationImage,
    this.isNewNotification = false,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(10),
      tileColor: CustomColors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        side:
            isNewNotification == true
                ? const BorderSide(color: CustomColors.bodyTextColor, width: 1)
                : BorderSide.none,
      ),
      leading: Container(
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          // border: Border.all(color: CustomColors.bodyTextColor, width: 1.5),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            notificationImage,
            height: 40.rh(context),
            width: 40.rw(context),
            fit: BoxFit.fill,
          ),
        ),
      ),
      title: Text(
        notificationTitle,
        style: TextStyle(
          fontFamily: 'HindJalandhar',
          fontWeight: FontWeight.w500,
          fontSize: 14,
          height: 1.0,
          color: CustomColors.primary,
          letterSpacing: 1.0,
        ),
      ),
      subtitle: Text(
        notificationSubtitle,
        style: TextStyle(
          fontFamily: 'HindJalandhar',
          fontWeight: FontWeight.w500,
          fontSize: 14,
          height: 1.0,
          color: Color(0xFF6B6B6B),
          letterSpacing: 1.0,
        ),
      ),
      trailing:
          isNewNotification == true
              ? Container(
                padding: const EdgeInsets.only(
                  left: 8,
                  right: 8,
                  top: 5,
                  bottom: 5,
                ),
                decoration: BoxDecoration(
                  color: CustomColors.primary,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Text(
                  "New",
                  style: Theme.of(context).textTheme.displaySmall!.copyWith(
                    fontSize: context.font.normal - 2,
                    color: CustomColors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              )
              : null,
    );
  }
}

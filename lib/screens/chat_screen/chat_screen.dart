import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tripping_pro/res/constants/media_constants.dart';
import 'package:tripping_pro/res/theme/theme.dart';
import 'package:tripping_pro/screens/widgets/custom_safearea.dart';
import 'package:tripping_pro/utils/responsiveSize.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomSafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: SvgPicture.asset(
              MediaConstants.drawerIcon,
              height: 25,
              width: 25,
              colorFilter: ColorFilter.mode(
                CustomColors.primary,
                BlendMode.srcIn,
              ),
            ),
          ),
          actions: [
            SvgPicture.asset(MediaConstants.heart, height: 25, width: 25),
            SizedBox(width: 15.rw(context)),
            SvgPicture.asset(MediaConstants.share, height: 25, width: 25),
            SizedBox(width: 15.rw(context)),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView(
                children: const [
                  ChatBubble(text: "Hey!", isCurrentUser: true),
                  ChatBubble(text: "Hey!", isCurrentUser: false),
                  ChatBubble(text: "How are you", isCurrentUser: true),
                  ChatBubble(
                    text: "I am fine what about you",
                    isCurrentUser: false,
                  ),
                ],
              ),
            ),
            const Spacer(),
            TextField(
              decoration: InputDecoration(
                hintText: 'Write a message',
                hintStyle: TextStyle(color: Colors.grey[600], fontSize: 16),
                // Rounded border
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.white,

                contentPadding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 15,
                ),

                suffixIcon: Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.emoji_emotions_outlined,
                        color: CustomColors.primary,
                        size: 24,
                      ),
                      SizedBox(width: 10),
                      Icon(
                        Icons.attach_file,
                        color: CustomColors.primary,
                        size: 24,
                      ),
                      SizedBox(width: 10),
                      Icon(Icons.send, color: CustomColors.primary, size: 24),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ChatBubble extends StatelessWidget {
  final String text;
  final bool isCurrentUser;
  const ChatBubble({
    super.key,
    required this.text,
    required this.isCurrentUser,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        isCurrentUser ? 64.0 : 16.0,
        4,
        isCurrentUser ? 16.0 : 64.0,
        4,
      ),
      child: Column(
        crossAxisAlignment:
            isCurrentUser ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          if (!isCurrentUser) ...[
            SvgPicture.asset(MediaConstants.chatBotIcon),
            SizedBox(height: 20.rh(context)),
          ],
          Align(
            alignment:
                isCurrentUser ? Alignment.centerRight : Alignment.centerLeft,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color:
                    !isCurrentUser
                        ? CustomColors.primary.withValues(alpha: 0.2)
                        : const Color(0xFF979797).withValues(alpha: 0.2),
                borderRadius:
                    !isCurrentUser
                        ? const BorderRadius.only(
                          topLeft: Radius.circular(4),
                          topRight: Radius.circular(16),
                          bottomLeft: Radius.circular(16),
                          bottomRight: Radius.circular(16),
                        )
                        : const BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(4),
                          bottomLeft: Radius.circular(16),
                          bottomRight: Radius.circular(16),
                        ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  text,
                  style: const TextStyle(
                    color: Color(0xff1e1e1e),
                    fontFamily: 'Poppins',
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

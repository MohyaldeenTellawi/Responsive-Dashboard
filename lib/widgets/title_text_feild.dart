import 'package:flutter/material.dart';

import '../core/utils/styles.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            Expanded(
              child: TitleTextFeild(
                  title: 'Customer name', hintText: 'Type customer name'),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TitleTextFeild(
                  title: 'Customer Email', hintText: 'Type customer email'),
            ),
          ],
        ),
        const SizedBox(height: 24),
        const Row(
          children: [
            Expanded(
              child: TitleTextFeild(
                  title: 'Item name', hintText: 'Type customer name'),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TitleTextFeild(title: 'Item mount', hintText: 'USD'),
            ),
          ],
        ),
        const SizedBox(height: 24),
        Row(
          children: [
            Expanded(
                child: CustomButtonInQuickVoice(
              textColor: const Color(0xFF4DB7F2),
              buttonName: 'Add more details',
              onPressed: () {},
              backgroundColor: Colors.transparent,
            )),
            const SizedBox(width: 24),
            Expanded(
                child: CustomButtonInQuickVoice(
              textColor: Colors.white,
              buttonName: 'Send Money',
              onPressed: () {},
              backgroundColor: const Color(0xFF4DB7F2),
            )),
          ],
        )
      ],
    );
  }
}

class TitleTextFeild extends StatelessWidget {
  const TitleTextFeild(
      {super.key, required this.title, required this.hintText});
  final String title, hintText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: Styles.styleRegular16),
        const SizedBox(height: 12),
        TextFormField(
          cursorColor: Colors.black,
          onTapOutside: (event) {
            FocusScope.of(context).unfocus();
          },
          decoration: InputDecoration(
              hintText: hintText,
              hintStyle: Styles.styleRegular16
                  .copyWith(color: const Color(0xFFAAAAAA)),
              fillColor: const Color(0xFFFAFAFA),
              filled: true,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: Color(0xFFFAFAFA))),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: Color(0xFFFAFAFA))),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: Color(0xFFFAFAFA)))),
        )
      ],
    );
  }
}

class CustomButtonInQuickVoice extends StatelessWidget {
  const CustomButtonInQuickVoice(
      {super.key,
      required this.buttonName,
      required this.onPressed,
      required this.backgroundColor,
      required this.textColor});
  final String buttonName;
  final Color backgroundColor;
  final Color textColor;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            surfaceTintColor: Colors.transparent,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            elevation: 0,
            backgroundColor: backgroundColor),
        onPressed: onPressed,
        child: Text(buttonName,
            style: Styles.styleSemiBold18.copyWith(color: textColor)),
      ),
    );
  }
}

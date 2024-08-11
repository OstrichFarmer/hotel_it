import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_it/services/network/constant.dart';

class OTPField extends StatefulWidget {
  const OTPField({super.key, required this.onComplete});
  final VoidCallback onComplete;

  @override
  OTPFieldState createState() => OTPFieldState();
}

class OTPFieldState extends State<OTPField> {
  final List<FocusNode> _focusNodes =
      List<FocusNode>.generate(4, (_) => FocusNode());
  final List<TextEditingController> _controllers =
      List<TextEditingController>.generate(4, (_) => TextEditingController());

  @override
  void dispose() {
    for (var node in _focusNodes) {
      node.dispose();
    }
    for (var controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  void _onChanged(String value, int index) {
    if (value.isNotEmpty && index < 3) {
      _focusNodes[index + 1].requestFocus();
    } else if (value.isEmpty && index > 0) {
      _focusNodes[index - 1].requestFocus();
    }

    // Check if all fields are filled
    if (_controllers.every((controller) => controller.text.isNotEmpty)) {
      widget.onComplete();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(4, (index) {
        return Padding(
          padding: EdgeInsets.only(right: 20.w),
          child: SizedBox(
            width: 50.w,
            child: TextField(
              obscureText: true,
              obscuringCharacter: '⬤',
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: primaryColor,
                  fontSize: 20),
              controller: _controllers[index],
              focusNode: _focusNodes[index],
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              maxLength: 1,
              onChanged: (value) => _onChanged(value, index),
              decoration: InputDecoration(
                fillColor: const Color(0xFFEEEEEE),
                filled: true,
                counterText: '',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}

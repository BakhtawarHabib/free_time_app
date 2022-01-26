// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:live_tv_ui/constants/colors.dart';
// import 'package:live_tv_ui/constants/styles.dart';

// class CustomEmailTextField extends StatelessWidget {
//   final validator;
//   final lableText;
//   final onIconPressed;
//   final onChanged;
//   final isPassword;
//   final isObscureText;
//   final controller;
//   double width;

//   CustomEmailTextField({
//     this.controller,
//     @required this.lableText,
//     required this.width,
//     this.onIconPressed,
//     @required this.validator,
//     @required this.onChanged,
//     this.isPassword = false,
//     this.isObscureText = false,
//   });
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       constraints: const BoxConstraints(
//         maxHeight: double.infinity,
//       ),
//       decoration: BoxDecoration(
//         border: Border.all(color: baseColor.withOpacity(0.7)),
//         borderRadius: BorderRadius.circular(10),
//         color: whiteColor,
//       ),
//       width: width.w,
//       child: TextFormField(
//         controller: this.controller,
//         onChanged: onChanged,
//         validator: validator,
//         obscureText: isObscureText,
//         textAlign: TextAlign.left,
//         decoration: InputDecoration(
//           hintStyle: hinttextStyle,
//           prefixIcon: const Padding(
//             padding: EdgeInsets.all(15.0),
//             child: Icon(Icons.mail),
//           ),
//           border: InputBorder.none,
//           errorStyle:
//               const TextStyle(fontSize: 9.7, height: 0.06, color: Colors.red),
//           hintText: lableText,
//           contentPadding: const EdgeInsets.all(20.0),
//         ),
//       ),
//     );
//   }
// }

// class CustomNormalTextField extends StatelessWidget {
//   final validator;
//   final lableText;
//   final onChanged;
//   final controller;
//   double width;

//   CustomNormalTextField({
//     this.controller,
//     @required this.lableText,
//     required this.width,
//     @required this.validator,
//     @required this.onChanged,
//   });
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       constraints: const BoxConstraints(
//         maxHeight: double.infinity,
//       ),
//       decoration: BoxDecoration(
//         border: Border.all(color: baseColor.withOpacity(0.2)),
//         borderRadius: BorderRadius.circular(10),
//         color: whiteColor,
//       ),
//       width: width.w,
//       child: TextFormField(
//         controller: controller,
//         onChanged: onChanged,
//         validator: validator,
//         textAlign: TextAlign.left,
//         decoration: InputDecoration(
//           border: InputBorder.none,
//           errorStyle:
//               const TextStyle(fontSize: 9.7, height: 0.06, color: Colors.red),
//           hintText: lableText,
//           contentPadding: const EdgeInsets.all(20.0),
//         ),
//       ),
//     );
//   }
// }

// class CustomPasswordTextField extends StatelessWidget {
//   bool _passwordVisible = false;
//   final validator;
//   final lableText;
//   final onIconPressed;
//   final onChanged;
//   final isPassword;
//   final isObscureText;
//   final controller;
//   VoidCallback onpress;
//   double width;

//   CustomPasswordTextField({
//     this.controller,
//     @required this.lableText,
//     required this.width,
//     this.onIconPressed,
//     @required this.validator,
//     @required this.onChanged,
//     required this.onpress,
//     this.isPassword = false,
//     this.isObscureText = false,
//   });
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       constraints: const BoxConstraints(
//         maxHeight: double.infinity,
//       ),
//       decoration: BoxDecoration(
//         border: Border.all(color: baseColor.withOpacity(0.2)),
//         borderRadius: BorderRadius.circular(10),
//         color: whiteColor,
//       ),
//       width: width.w,
//       child: TextFormField(
//         controller: this.controller,
//         onChanged: onChanged,
//         validator: validator,
//         obscureText: _passwordVisible,
//         textAlign: TextAlign.left,
//         decoration: InputDecoration(
//           suffixIcon: IconButton(
//             icon: Icon(
//               // Based on passwordVisible state choose the icon
//               _passwordVisible ? Icons.visibility : Icons.visibility_off,
//               color: Theme.of(context).primaryColorDark,
//             ),
//             onPressed: onpress,
//           ),
//           border: InputBorder.none,
//           errorStyle:
//               const TextStyle(fontSize: 9.7, height: 0.06, color: Colors.red),
//           hintText: lableText,
//           contentPadding: const EdgeInsets.all(20.0),
//         ),
//       ),
//     );
//   }
// }

// class CustomSearchtextfield extends StatelessWidget {
//   const CustomSearchtextfield({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 48.h,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(10),
//         color: whiteColor,
//       ),
//       width: 337.w,
//       child: TextFormField(
//         // controller: this.controller,
//         validator: (val) =>
//             // ignore: prefer_is_empty
//             val!.length == 0 ? "fill the field" : null,
//         onChanged: (value) {},

//         textAlign: TextAlign.left,
//         decoration: const InputDecoration(
//           prefixIcon: Icon(
//             Icons.search,
//             color: baseColor,
//           ),
//           border: InputBorder.none,
//           errorStyle: TextStyle(fontSize: 9.7, height: 0.06, color: Colors.red),
//           hintText: "Search..",
//           contentPadding: EdgeInsets.all(20.0),
//         ),
//       ),
//     );
//   }
// }

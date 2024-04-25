import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtomButtton extends StatelessWidget {
  final String title;
  final IconData? icon;
  final void Function()? ontap;
  const ButtomButtton(
      {super.key, required this.title, required this.icon, this.ontap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Padding(
        padding: EdgeInsets.only(bottom: 30.h),
        child: Container(
          width: 200.w,
          height: 50.h,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  const Color.fromARGB(255, 4, 89, 185),
                  const Color.fromARGB(255, 4, 60, 180).withOpacity(0.9),
                ],
              ),
              borderRadius: BorderRadius.circular(30),
              boxShadow: const [
                BoxShadow(
                    color: Color.fromARGB(255, 5, 61, 167),
                    offset: Offset(0, 5),
                    blurRadius: 6)
              ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                (icon),
                color: Colors.white,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                '$title',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

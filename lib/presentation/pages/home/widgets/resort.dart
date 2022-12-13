import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:travel_ui/presentation/pages/home/widgets/resort_details_page.dart';

class Resort extends HookConsumerWidget {
  const Resort({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const ResortDetailsPage()));
      },
      child: SizedBox(
        height: 27.h,
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 15,
            itemBuilder: (BuildContext context, int index) => Container(
                  width: 67.w,
                  margin: EdgeInsets.only(right: 6.w),
                  decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xff323040)),
                      borderRadius: BorderRadius.circular(25.sp)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 3.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 1.2.h),
                          width: double.infinity,
                          height: 16.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22.sp),
                            image: const DecorationImage(
                                image: NetworkImage(
                                    "https://thumbs.dreamstime.com/x/simple-motion-loopable-k-flat-cartoon-animation-car-road-urban-city-landscape-moving-skyline-skyscrapers-125347789.jpg"),
                                fit: BoxFit.cover),
                          ),
                        ),
                        SizedBox(
                          height: .5.h,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Cruise Resort",
                                  style: TextStyle(
                                      fontSize: 18.sp, color: Colors.white),
                                ),
                                SizedBox(
                                  height: 1.h,
                                ),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.fmd_good_outlined,
                                      color: Color(0xff7F7E88),
                                    ),
                                    SizedBox(
                                      width: 1.w,
                                    ),
                                    const Text(
                                      "Bali, Indonesia",
                                      style:
                                          TextStyle(color: Color(0xff7F7E88)),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 15.sp,
                                  backgroundImage: const NetworkImage(
                                      "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                                  backgroundColor: Colors.transparent,
                                ),
                                CircleAvatar(
                                  radius: 15.sp,
                                  backgroundImage: const NetworkImage(
                                      "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                                  backgroundColor: Colors.transparent,
                                ),
                                Container(
                                  height: 21.sp,
                                  width: 21.sp,
                                  //padding: EdgeInsets.all(11.sp),
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.blue),
                                  child: Center(
                                    child: Text(
                                      '+24',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 13.sp),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )),
      ),
    );
  }
}

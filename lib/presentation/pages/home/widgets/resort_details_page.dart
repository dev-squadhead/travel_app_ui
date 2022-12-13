import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ResortDetailsPage extends HookConsumerWidget {
  const ResortDetailsPage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff1B182C),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 2.w, right: 2.w, top: 0.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 57.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.sp),
                            image: const DecorationImage(
                                image: NetworkImage(
                                    'https://thumbs.dreamstime.com/x/simple-motion-loopable-k-flat-cartoon-animation-car-road-urban-city-landscape-moving-skyline-skyscrapers-125347789.jpg'),
                                fit: BoxFit.cover)),
                      ),
                      Positioned(
                        left: 5.w,
                        top: 4.h,
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            height: 10.w,
                            width: 10.w,
                            decoration: const BoxDecoration(
                                color: Color(0xff6B869B),
                                shape: BoxShape.circle),
                            child: const Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 5.w,
                        top: 4.h,
                        child: Container(
                          height: 10.w,
                          width: 10.w,
                          decoration: const BoxDecoration(
                              color: Color(0xff6B869B), shape: BoxShape.circle),
                          child: const Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 4.h,
                        left: 4.w,
                        child: Container(
                          height: 10.h,
                          width: 88.w,
                          decoration: BoxDecoration(
                            color: const Color(0xff6B869B),
                            borderRadius: BorderRadius.circular(20.sp),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 3.5.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 7.5.h,
                                  width: 18.w,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(17.sp),
                                      image: const DecorationImage(
                                          image: NetworkImage(
                                              "https://images.unsplash.com/photo-1580698543091-88c76b323ff1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YmlnJTIwc2hpcHxlbnwwfHwwfHw%3D&w=1000&q=80"),
                                          fit: BoxFit.cover)),
                                ),
                                Container(
                                  height: 7.5.h,
                                  width: 18.w,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(17.sp),
                                      image: const DecorationImage(
                                          image: NetworkImage(
                                              "https://images.unsplash.com/photo-1580698543091-88c76b323ff1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YmlnJTIwc2hpcHxlbnwwfHwwfHw%3D&w=1000&q=80"),
                                          fit: BoxFit.cover)),
                                ),
                                Container(
                                  height: 7.5.h,
                                  width: 18.w,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(17.sp),
                                      image: const DecorationImage(
                                          image: NetworkImage(
                                              "https://images.unsplash.com/photo-1580698543091-88c76b323ff1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YmlnJTIwc2hpcHxlbnwwfHwwfHw%3D&w=1000&q=80"),
                                          fit: BoxFit.cover)),
                                ),
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Container(
                                      height: 7.5.h,
                                      width: 18.w,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(17.sp),
                                          image: const DecorationImage(
                                              image: NetworkImage(
                                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlP3Om39e7M4bRIgS_oAMH_S6fOaRgdiDzwA&usqp=CAU"),
                                              fit: BoxFit.cover)),
                                    ),
                                    Positioned(
                                      top: 2.7.h,
                                      bottom: 2.7.h,
                                      left: 5.5.w,
                                      right: 5.5.w,
                                      child: Text(
                                        "+10",
                                        style: TextStyle(
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5.w, right: 5.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 3.h,
                  ),
                  Text(
                    "Cruise Resort",
                    style: TextStyle(
                        fontSize: 20.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
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
                      Text(
                        "Bali, Indonesia",
                        style: TextStyle(
                            color: const Color(0xff7F7E88), fontSize: 16.sp),
                      ),
                      SizedBox(
                        width: 3.w,
                      ),
                      Icon(
                        Icons.circle,
                        size: 12.sp,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 3.w,
                      ),
                      Text(
                        '\$500/person',
                        style: TextStyle(
                            color: const Color(0xffA09FA7), fontSize: 16.sp),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 6.h,
                        width: 13.w,
                        decoration: BoxDecoration(
                            color: const Color(0xff383644),
                            borderRadius: BorderRadius.circular(15.sp)),
                        child: Container(
                          margin: EdgeInsets.all(13.sp),
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(12.sp)),
                          child: const Icon(Icons.query_builder),
                        ),
                      ),
                      SizedBox(
                        width: 2.5.w,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: .4.h,
                          ),
                          Text(
                            "Duration",
                            style: TextStyle(
                                color: const Color(0xff7F7E88),
                                fontSize: 16.sp),
                          ),
                          SizedBox(
                            height: .4.h,
                          ),
                          Text(
                            "8 hours",
                            style:
                                TextStyle(color: Colors.white, fontSize: 16.sp),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 12.w,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 6.h,
                            width: 13.w,
                            decoration: BoxDecoration(
                                color: const Color(0xff383644),
                                borderRadius: BorderRadius.circular(15.sp)),
                            child: Icon(
                              Icons.star,
                              color: const Color(0xffF7B063),
                              size: 25.sp,
                            ),
                          ),
                          SizedBox(
                            width: 2.5.w,
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: .4.h,
                              ),
                              Text(
                                "Rating",
                                style: TextStyle(
                                    color: const Color(0xff7F7E88),
                                    fontSize: 16.sp),
                              ),
                              SizedBox(
                                height: .4.h,
                              ),
                              Text(
                                "4.85",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16.sp),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    "Description",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 2.5.h,
                  ),
                  Text(
                    "Explore breath-taling moments of wscape and\nthe beautiful of Bali. Explore the Bli's ture",
                    style: TextStyle(
                        color: const Color(0xff7F7E88), fontSize: 16.sp),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  SizedBox(
                    height: 7.h,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.sp),
                        ),
                      ),
                      child: Text(
                        "Book now",
                        style: TextStyle(
                            fontSize: 17.sp, fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

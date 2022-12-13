import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:travel_ui/presentation/pages/home/widgets/resort.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final searchController = useTextEditingController();

    return Scaffold(
      backgroundColor: const Color(0xff1B182C),
      appBar: AppBar(
        backgroundColor: const Color(0xff1B182C),
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.all(12.sp),
              decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xff323040)),
                  shape: BoxShape.circle),
              child: const Icon(Icons.notes),
            ),
            Container(
              padding: EdgeInsets.all(12.sp),
              decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xff323040)),
                  shape: BoxShape.circle),
              child: const Icon(Icons.notification_add),
            ),
          ],
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 3.h,
            ),
            Text(
              "Discover the",
              style: TextStyle(fontSize: 20.sp, color: const Color(0xffCECDD1)),
            ),
            SizedBox(
              height: 1.h,
            ),
            Text(
              "beauty of the world",
              style: TextStyle(fontSize: 20.sp, color: Colors.white),
            ),
            SizedBox(
              height: 4.h,
            ),
            TextFormField(
              controller: searchController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.sp),
                  ),
                  filled: true,
                  hintStyle: const TextStyle(color: Color(0xff63616E)),
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Color(0xff63616E),
                  ),
                  suffixIcon: Padding(
                    padding: EdgeInsets.only(right: 2.w),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color(0xff274366),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.explore,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  hintText: "Search places",
                  fillColor: const Color(0xff322F40)),
            ),
            SizedBox(
              height: 4.h,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.h),
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20.sp)),
                    child: const Text(
                      'All',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    'Reccomended',
                    style: TextStyle(
                        color: const Color(0xff7F7E88), fontSize: 17.sp),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    'Popular',
                    style: TextStyle(
                        color: const Color(0xff7F7E88), fontSize: 17.sp),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    'Ratings',
                    style: TextStyle(
                        color: const Color(0xff7F7E88), fontSize: 17.sp),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    'Reccomended',
                    style: TextStyle(
                        color: const Color(0xff7F7E88), fontSize: 17.sp),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    'Reccomended',
                    style: TextStyle(
                        color: const Color(0xff7F7E88), fontSize: 17.sp),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 4.h,
            ),
            const Resort(),
            SizedBox(
              height: 4.h,
            ),
            Text(
              "Categories",
              style: TextStyle(fontSize: 18.sp, color: Colors.white),
            ),
            SizedBox(
              height: 3.h,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(14.sp),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xff322F40),
                        ),
                        child: CircleAvatar(
                          radius: 18.sp,
                          backgroundImage: const NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSeStP9NcyblbMKbywOxbV-2HAqAp8TGvKGQ&usqp=CAU"),
                          backgroundColor: Colors.transparent,
                        ),
                      ),
                      Text(
                        'Beach',
                        style: TextStyle(
                            color: const Color(0xff7F7E88), fontSize: 16.sp),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(14.sp),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xff322F40),
                        ),
                        child: CircleAvatar(
                          radius: 18.sp,
                          backgroundImage: const NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSeStP9NcyblbMKbywOxbV-2HAqAp8TGvKGQ&usqp=CAU"),
                          backgroundColor: Colors.transparent,
                        ),
                      ),
                      Text(
                        'Camp',
                        style: TextStyle(
                            color: const Color(0xff7F7E88), fontSize: 16.sp),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(14.sp),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xff322F40),
                        ),
                        child: CircleAvatar(
                          radius: 18.sp,
                          backgroundImage: const NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSeStP9NcyblbMKbywOxbV-2HAqAp8TGvKGQ&usqp=CAU"),
                          backgroundColor: Colors.transparent,
                        ),
                      ),
                      Text(
                        'Mountain',
                        style: TextStyle(
                            color: const Color(0xff7F7E88), fontSize: 16.sp),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(14.sp),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xff322F40),
                        ),
                        child: CircleAvatar(
                          radius: 18.sp,
                          backgroundImage: const NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSeStP9NcyblbMKbywOxbV-2HAqAp8TGvKGQ&usqp=CAU"),
                          backgroundColor: Colors.transparent,
                        ),
                      ),
                      Text(
                        'Forest',
                        style: TextStyle(
                            color: const Color(0xff7F7E88), fontSize: 16.sp),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(14.sp),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xff322F40),
                        ),
                        child: CircleAvatar(
                          radius: 18.sp,
                          backgroundImage: const NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSeStP9NcyblbMKbywOxbV-2HAqAp8TGvKGQ&usqp=CAU"),
                          backgroundColor: Colors.transparent,
                        ),
                      ),
                      Text(
                        'Beach',
                        style: TextStyle(
                            color: const Color(0xff7F7E88), fontSize: 16.sp),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(14.sp),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xff322F40),
                        ),
                        child: CircleAvatar(
                          radius: 18.sp,
                          backgroundImage: const NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSeStP9NcyblbMKbywOxbV-2HAqAp8TGvKGQ&usqp=CAU"),
                          backgroundColor: Colors.transparent,
                        ),
                      ),
                      Text(
                        'Beach',
                        style: TextStyle(
                            color: const Color(0xff7F7E88), fontSize: 16.sp),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

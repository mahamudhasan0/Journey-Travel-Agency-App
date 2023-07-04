import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:tour/const/app_color.dart';

class OnboardingScreen extends StatelessWidget {
  final List<String> _lottieFiles = [
    'assets/files/welcome.json',
    'assets/files/support.json',
    'assets/files/categories.json',
  ];

  final List<String> _title = [
    'welcome',
    'categories',
    'support',
  ];

  final List<String> _description = [
    "Embark on a journey of discovery, adventure, and unforgettable experiences. With our Travel App, your wanderlust will find its perfect companion. Whether you're a seasoned explorer or a first-time traveler, we're here to make your travel dreams come true.",
    "Flights: Find and book the best flight deals for your next adventure.Accommodations: Discover and reserve a wide range of accommodations for a comfortable stay.Destinations: Explore detailed information about popular travel destinations worldwide.Tours & Activities: Book exciting tours and activities to enhance your travel experience.Travel Planning: Plan your trip efficiently with itinerary creation, budgeting, and packing assistance.Travel Guides: Get comprehensive guides for various destinations, including local insights and tips.Transportation: Find and book transportation options for seamless travel within your destination.Travel Deals: Access exclusive offers and discounts on flights, hotels, and vacation packages.",
    "Help Center: Access FAQs and tutorials for quick assistance.In-App Chat: Instantly chat with our support team for real-time help.Email Support: Reach out to us via email for personalized assistance.Social Media Support: Connect with us on social media for quick responses.Phone Support: Call our dedicated support line for immediate help.Feedback Collection: Share your thoughts to help us improve your experience.Proactive Updates: Stay informed with timely notifications and newsletters.Multilingual Assistance: Get support in your preferred language."
  ];
  RxInt _currentIndex = 0.obs;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10.w),
        child: Column(
          children: [
            Obx(
              () => Expanded(
                flex: 2,
                child: Lottie.asset(_lottieFiles[_currentIndex.toInt()]),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.scaffoldColor,
                  borderRadius: BorderRadius.all(Radius.circular(10.r)),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black26,
                        offset: Offset(4.0, 4.0),
                        blurRadius: 10,
                        spreadRadius: 1.0),
                    BoxShadow(
                        color: Colors.white,
                        offset: Offset(-4.0, -4.0),
                        blurRadius: 5,
                        spreadRadius: 1.0),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

import 'package:flutter/material.dart';

class GlobalVariables {
  // COLORS
  static const appBarGradient = LinearGradient(
    colors: [
      Color(0xFF037EE6),
      Color(0xFF05BBF5),
    ],
    stops: [0.5, 1.0],
  );

  static const secondaryColor = Color(0xFFFF9900); // Amazon Orange
  static const backgroundColor = Colors.white;
  static const Color greyBackgroundColor = Color(0xffebecee);
  static const selectedNavBarColor = Color(0xFF037EE6);
  static const unselectedNavBarColor = Colors.black87;

  // STATIC IMAGES
  static const List<String> carouselImages = [
    'https://images-eu.ssl-images-amazon.com/images/G/31/img21/Wireless/WLA/TS/D37847648_Accessories_savingdays_Jan22_Cat_PC_1500.jpg',
    'https://images-eu.ssl-images-amazon.com/images/G/31/img2021/Vday/bwl/English.jpg',
    'https://images-eu.ssl-images-amazon.com/images/G/31/img22/Wireless/AdvantagePrime/BAU/14thJan/D37196025_IN_WL_AdvantageJustforPrime_Jan_Mob_ingress-banner_1242x450.jpg',
    'https://images-na.ssl-images-amazon.com/images/G/31/Symbol/2020/00NEW/1242_450Banners/PL31_copy._CB432483346_.jpg',
    'https://images-na.ssl-images-amazon.com/images/G/31/img21/shoes/September/SSW/pc-header._CB641971330_.jpg',
  ];

  static const List<Map<String, String>> categoryImages = [
    {
      'title': 'Mobiles',
      'image': 'https://images.unsplash.com/photo-1546054454-aa26e2b734c7?q=80&w=640&auto=format&fit=crop',
    },
    {
      'title': 'Essentials',
      'image': 'https://images.unsplash.com/photo-1470229722913-7c0e2dbbafd3?q=80&w=640&auto=format&fit=crop',
    },
    {
      'title': 'Appliances',
      'image': 'https://images.unsplash.com/photo-1578643463396-0997cb5328c1?q=80&w=640&auto=format&fit=crop',
    },
    {
      'title': 'Books',
      'image': 'https://images.unsplash.com/photo-1495446815901-a7297e633e8d?q=80&w=640&auto=format&fit=crop',
    },
    {
      'title': 'Fashion',
      'image': 'https://images.unsplash.com/photo-1445205170230-053b83016050?q=80&w=640&auto=format&fit=crop',
    },
  ];
  
  // API URLs
  static const String baseUrl = 'http://localhost:3000';
} 
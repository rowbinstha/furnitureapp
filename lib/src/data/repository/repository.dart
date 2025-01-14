import 'package:flutter/material.dart';
import 'package:furniture_app/constant/app_asset.dart';
import 'package:furniture_app/src/data/model/furniture.dart';
import 'package:furniture_app/src/data/model/furniture_color.dart';

class Repository {
  get getFurnitureList {
    const dummyText =
        """Lorem Ipsum is simply dummy text of the printing and typesetting
       industry. Lorem Ipsum has been the industry's standard dummy text ever
        since the 1500s, when an unknown printer took a galley of type and
         scrambled it to make a type specimen book. It has survived not only 
         five centuries, but also the leap into electronic typesetting,
          remaining essentially unchanged.""";

    List<Furniture> furnitureList = [
      Furniture(
        id: 1,
        quantity: 1,
        isFavorite: false,
        title: 'All-in-One Standing Desk Glass',
        description: dummyText,
        price: 469.99,
        score: 3.5,
        images: const [
          AppAsset.comharStandingDesk1,
          AppAsset.comharStandingDesk2,
          AppAsset.comharStandingDesk3,
          AppAsset.comharStandingDesk4,
          AppAsset.comharStandingDesk5,
          AppAsset.comharStandingDesk6,
          AppAsset.comharStandingDesk7,
        ],
        colors: <FurnitureColor>[
          FurnitureColor(color: const Color(0xFF616161), isSelected: true),
          FurnitureColor(color: const Color(0xFF424242)),
        ],
      ),
      Furniture(
        id: 2,
        isFavorite: false,
        quantity: 1,
        title: 'Gaming Desk with Mouse Pad',
        description: dummyText,
        price: 299.99,
        score: 4.5,
        images: const [
          AppAsset.ergonomicGamingDesk1,
          AppAsset.ergonomicGamingDesk2,
          AppAsset.ergonomicGamingDesk3,
          AppAsset.ergonomicGamingDesk4,
          AppAsset.ergonomicGamingDesk5,
        ],
        colors: <FurnitureColor>[
          FurnitureColor(color: const Color(0xFF5d4037), isSelected: true),
          FurnitureColor(color: const Color(0xFF424242)),
        ],
      ),
      Furniture(
        id: 3,
        quantity: 1,
        isFavorite: false,
        title: 'Bamboo Standing Desk',
        description: dummyText,
        price: 659.99,
        score: 3.0,
        images: const [
          AppAsset.kanaBambooDesk1,
          AppAsset.kanaBambooDesk2,
          AppAsset.kanaBambooDesk3,
          AppAsset.kanaBambooDesk4,
          AppAsset.kanaBambooDesk5,
          AppAsset.kanaBambooDesk6,
        ],
        colors: <FurnitureColor>[
          FurnitureColor(color: const Color(0xFF616161), isSelected: true),
          FurnitureColor(color: const Color(0xFF212121)),
        ],
      ),
      Furniture(
        id: 4,
        quantity: 1,
        isFavorite: false,
        title: 'Office Chair',
        description: dummyText,
        price: 349.99,
        score: 2.5,
        images: const [
          AppAsset.soutienOfficeChair1,
          AppAsset.soutienOfficeChair2,
          AppAsset.soutienOfficeChair3,
          AppAsset.soutienOfficeChair4,
          AppAsset.soutienOfficeChair5,
          AppAsset.soutienOfficeChair6,
        ],
        colors: <FurnitureColor>[
          FurnitureColor(color: const Color(0xFF455a64), isSelected: true),
          FurnitureColor(color: const Color(0xFF263238)),
        ],
      ),
      Furniture(
        id: 5,
        quantity: 1,
        isFavorite: false,
        title: 'Standing Desk',
        description: dummyText,
        price: 499.99,
        score: 2.8,
        images: const [
          AppAsset.theodoreStandingDesk1,
          AppAsset.theodoreStandingDesk2,
          AppAsset.theodoreStandingDesk3,
          AppAsset.theodoreStandingDesk4,
          AppAsset.theodoreStandingDesk5,
        ],
        colors: <FurnitureColor>[
          FurnitureColor(color: const Color(0xFF5d4037), isSelected: true),
          FurnitureColor(color: const Color(0xFF455a64)),
        ],
      ),
    ];

    return furnitureList;
  }
}

import 'package:flutter/material.dart';
import 'package:nike_snickers/models/shoes.dart';

class Cart extends ChangeNotifier {
  List<Shoes> shoeShop = [
    Shoes(
        price: '110',
        imagePath: 'lib/assets/nike_air_force_1_2.webp',
        description:
            'The radiance lives on in the Nike Air Force 1 ’07, the b-ball icon that puts a fresh spin on what you know best: crisp leather, bold colors and the perfect amount of flash to make you shine.',
        title: 'Nike Air Force 1'),
    Shoes(
        price: '125',
        imagePath: 'lib/assets/air_jordan_1_mid_1.webp',
        description:
            'Inspired by the original AJ1, the Air Jordan 1 Mid offers fans a chance to follow in MJs footsteps. Fresh color trims the clean, classic materials, imbuing modernity into a classic design.',
        title: 'Air Jordan 1 Mid'),
    Shoes(
        price: '180',
        imagePath: 'lib/assets/invincible-3_1.jpg',
        description:
            'With maximum cushioning to support every mile, the Invincible 3 gives you our highest level of comfort underfoot to help you stay on your feet today, tomorrow and beyond. Designed to help keep you on the run, it’s super supportive and bouncy, so that you can propel down your preferred path and come back for your next run feeling ready and reinvigorated.',
        title: 'Nike Invincible 3'),
    Shoes(
        price: '125',
        imagePath: 'lib/assets/nike_dunk_high.jpg',
        description:
            'Created for the hardwood but taken to the streets, the 80s b-ball icon returns with crisp leather and retro colors. The classic hoops design channels \'80s vintage back onto the streets while the padded, high-top collar adds an old-school look rooted to comfort.',
        title: 'Nike Dunk High'),
    Shoes(
        price: '99.97',
        imagePath: 'lib/assets/max_terrascape_plus.webp',
        description:
            'Rebellious 90s style gets remastered. Rugged details, including a reinforced toe and durable plastic cage, ramp up your attitude with outdoor-inspired vibes. And for added stability, it updates your Tuned Air experience with our innovative Crater Foam midsole.',
        title: 'Terrascape Plus'),
  ];
  List<Shoes> userCart = [];
  List<Shoes> getShoeList() {
    return shoeShop;
  }

  List<Shoes> getUserCart() {
    return userCart;
  }

  void addItemToCart(Shoes shoes) {
    userCart.add(shoes);
    notifyListeners();
  }

  void removeItemFromCart(Shoes shoes) {
    userCart.remove(shoes);
    notifyListeners();
  }
}

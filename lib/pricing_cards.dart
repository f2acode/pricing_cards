import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class PricingCard {
  const PricingCard({
    required this.title,
    required this.price,
    required this.subPriceText,
    required this.billedText,
    this.onPress,
    this.mainPricing = false,
    this.mainPricingHighlightText = '',
    this.priceStyle = const TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w600,
    ),
    this.billedTextStyle = const TextStyle(
      fontSize: 12,
      color: Colors.grey,
    ),
    this.cardColor = Colors.white,
    this.titleStyle,
    this.cardBorder,
    this.subPriceStyle,
  });

  final String title;
  final String price;
  final String subPriceText;
  final String billedText;
  final void Function()? onPress;
  final bool mainPricing;
  final String mainPricingHighlightText;
  final TextStyle? priceStyle;
  final TextStyle? billedTextStyle;
  final TextStyle? subPriceStyle;
  final TextStyle? titleStyle;
  final RoundedRectangleBorder? cardBorder;
  final Color? cardColor;
}

class PricingCards extends StatelessWidget {
  const PricingCards({
    Key? key,
    required this.pricingCards,
  }) : super(key: key);

  final List<PricingCard> pricingCards;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      children: pricingCards.map((pc) {
        final pricingCard = Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              color: pc.cardColor,
              shape: pc.mainPricing
                  ? pc.cardBorder ??
                      RoundedRectangleBorder(
                        side: BorderSide(color: Colors.red, width: 4.0),
                        borderRadius: BorderRadius.circular(8.0),
                      )
                  : null,
              child: Container(
                padding: EdgeInsets.all(16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      pc.title,
                      style: pc.titleStyle,
                    ),
                    SizedBox(height: 16),
                    Text(
                      pc.price,
                      style: pc.priceStyle,
                    ),
                    Text(
                      pc.subPriceText,
                      style: pc.subPriceStyle,
                    ),
                    SizedBox(height: 16),
                    Text(
                      pc.billedText,
                      style: pc.billedTextStyle,
                    ),
                  ],
                ),
              ),
            ),
          ],
        );

        return InkWell(
          onTap: pc.onPress,
          child: pc.mainPricing
              ? Badge(
                  alignment: Alignment.center,
                  badgeContent: Text(
                    pc.mainPricingHighlightText,
                    style: TextStyle(color: Colors.white),
                  ),
                  shape: BadgeShape.square,
                  position: BadgePosition.topEnd(top: -10),
                  borderRadius: BorderRadius.circular(16),
                  toAnimate: false,
                  child: pricingCard,
                  badgeColor: Colors.red,
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                )
              : pricingCard,
        );
      }).toList(),
    );
  }
}

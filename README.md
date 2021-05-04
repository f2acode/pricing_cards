# Pricing cards

[![pub package](https://img.shields.io/pub/v/pricing_cards?logo=dart&label=stable&style=flat-square)](https://pub.dev/packages/pricing_cards) [![GitHub license](https://img.shields.io/github/license/f2acode/pricing_cards?style=flat-square)](https://github.com/f2acode/pricing_cards/blob/master/LICENSE)

Awesome pricing cards with custom style options for your flutter project.

You can give as **much cards you want** to this and **personalize the style of each one**.

## Example

The example with all the parameters:

<img src='https://raw.githubusercontent.com/f2acode/pricing_cards/master/example/flutter_01.png' width=300>

The code of this:

```dart
Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
        PricingCards(
            pricingCards: [
                PricingCard(
                title: 'Monthly',
                price: '\$ 9.99',
                subPriceText: '\/mo',
                billedText: 'Billed monthly',
                onPress: () {
                    // make your business
                },
                ),
                PricingCard(
                title: 'Monthly',
                price: '\$ 59.99',
                subPriceText: '\/mo',
                billedText: 'Billed anually',
                mainPricing: true,
                mainPricingHighlightText: 'Save money',
                onPress: () {
                    // make your business
                },
                )
            ],
        ),
        SizedBox(height: 30),
        PricingCards(
            pricingCards: [
                PricingCard(
                title: 'Monthly',
                price: '\$ 9.99',
                subPriceText: '\/mo',
                billedText: 'Billed monthly',
                onPress: () {
                    // make your business
                },
                cardColor: Colors.green,
                priceStyle: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                ),
                titleStyle: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                ),
                billedTextStyle: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                ),
                subPriceStyle: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                ),
                cardBorder: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.red, width: 4.0),
                    borderRadius: BorderRadius.circular(8.0),
                ),
                ),
                PricingCard(
                title: 'Monthly',
                price: '\$ 59.99',
                subPriceText: '\/mo',
                billedText: 'Billed anually',
                mainPricing: true,
                mainPricingHighlightText: 'Save money',
                onPress: () {
                    // make your business
                },
                cardColor: Colors.blue,
                priceStyle: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                ),
                titleStyle: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                ),
                billedTextStyle: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                ),
                subPriceStyle: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                ),
                cardBorder: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.red, width: 4.0),
                    borderRadius: BorderRadius.circular(8.0),
                ),
                )
            ],
        ),
    ],
)
```

## Help this project

- Give an 🌟 on Github;
- Contributions are very welcome! ❤️

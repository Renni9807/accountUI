import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String name, code, amount;
  // Icon type is IconData
  final IconData icon;
  final bool isInverted;

  final _blackColor = const Color(0xFF1F2123);

  final int order;
  final Map<int, Offset> offsetVal = {
    1: const Offset(0, 0),
    2: const Offset(0, -20),
    3: const Offset(0, -40),
  };

  CurrencyCard({
    super.key,
    required this.name,
    required this.code,
    required this.amount,
    required this.icon,
    required this.isInverted,
    required this.order,
  });

  // CurrencyCard({super.key,
  //   required this.name,
  //   required this.code,
  //   required this.amount,
  //   required this.icon,
  // })

// think what is customizable.
// need three different currency card so currency, amount and currency sign should be customizable.
  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: offsetVal[order] ?? const Offset(0, 0),
      // Need to deal with null exception as order may not be a key of offsetVal.
      // So by using ?? operator, I dissolve this issue.
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: isInverted ? Colors.white : _blackColor,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      color: isInverted ? _blackColor : Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        amount,
                        style: TextStyle(
                          color: isInverted ? _blackColor : Colors.white,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        code,
                        style: TextStyle(
                          color: isInverted
                              ? _blackColor.withOpacity(0.8)
                              : Colors.white.withOpacity(0.8),
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Transform.scale(
                // need to specify the scale otherwise it will give an error.
                scale: 2,
                // if you use transform.scale, then container would not change its size.
                child: Transform.translate(
                  offset: const Offset(
                    8,
                    15,
                  ),
                  child: Icon(
                    icon,
                    color: isInverted ? _blackColor : Colors.white,
                    size: 88,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

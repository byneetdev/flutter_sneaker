part of '../main.dart';


class SneakerCard extends StatelessWidget {
  final SneakerModel sneaker;

  const SneakerCard({Key? key, required this.sneaker}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);

    return Container(
      margin: EdgeInsets.only(right: 15),
      width: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: _theme.cardColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  sneaker.brand ?? '',
                  maxLines: 1,
                  style: _theme.textTheme.headline4,
                ),
                const SizedBox(height: 5),
                Text(
                  sneaker.name ?? '',
                  style: _theme.textTheme.headline2,
                  maxLines: 1,
                ),
                const SizedBox(height: 5),
                Text(
                  'SILVER BULLET',
                  maxLines: 1,
                  style: _theme.textTheme.headline4
                      ?.copyWith(color: Color(0xFFCDD1D2)),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          Expanded(
            child: Align(
              alignment: Alignment.center,
              child: OctoImage(
                fit: BoxFit.fitWidth,
                image: CachedNetworkImageProvider(sneaker.image ?? ''),
              ),
            ),
          )
        ],
      ),
    );
  }
}

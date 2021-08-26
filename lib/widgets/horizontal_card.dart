part of '../main.dart';

class _HorizontalCard extends StatelessWidget {
  final SneakerModel sneaker;

  const _HorizontalCard({Key? key, required this.sneaker}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);

    return Container(
      width: 250.0,
      margin: EdgeInsets.only(right: 15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Stack(
          children: [
            OctoImage(
              width: 250,
              height: 150,
              fit: BoxFit.cover,
              image: CachedNetworkImageProvider(
                sneaker.image ?? '',
              ),
            ),
            Container(
              width: 250,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(
                  colors: [
                    Colors.black38,
                    Colors.black54,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 8,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'NEW RELEASE',
                      style: _theme.textTheme.bodyText2?.copyWith(
                        color: Color(0xFF75797A),
                      ),
                    ),
                    Text(
                      sneaker.name ?? '',
                      maxLines: 1,
                      style: _theme.textTheme.headline3
                          ?.copyWith(color: Colors.white),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

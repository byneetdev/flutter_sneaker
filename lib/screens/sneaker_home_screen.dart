part of '../main.dart';

class SneakerHomeScreen extends StatelessWidget {
  const SneakerHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(FeatherIcons.menu),
          color: Colors.white,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(FeatherIcons.shoppingCart),
            color: Colors.white,
          ),
        ],
      ),
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: MediaQuery.of(context).size.height / 2,
            child: Container(
              color: _theme.primaryColor,
              child: Center(
                child: Text(
                  'Explore\nsneakers',
                  textAlign: TextAlign.center,
                  style: _theme.textTheme.headline1?.copyWith(
                    color: Colors.white,
                    fontSize: 25.0,
                  ),
                ),
              ),
            ),
          ),
          Positioned.fill(
            top: MediaQuery.of(context).size.height / 3,
            left: 0.0,
            right: 0.0,
            bottom: 0.0,
            child: Container(
              padding: EdgeInsets.only(top: 15),
              decoration: BoxDecoration(
                color: _theme.backgroundColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  const SizedBox(height: 25),
                  SizedBox(
                    width: double.infinity,
                    height: 150.0,
                    child: ListView.builder(
                      itemCount: _newReleaseList.length,
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      padding: EdgeInsets.only(left: 18),
                      itemBuilder: (context, index) {
                        final _sneaker = _newReleaseList[index];
                        return _HorizontalCard(sneaker: _sneaker);
                      },
                    ),
                  ),
                  const SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: Text('Popular', style: _theme.textTheme.headline3),
                  ),
                  const SizedBox(height: 12),
                  SizedBox(
                    width: double.infinity,
                    height: 250,
                    child: ListView.builder(
                      itemCount: _sneakerList.length,
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      padding: EdgeInsets.only(left: 18),
                      itemBuilder: (context, index) {
                        final _sneaker = _sneakerList[index];
                        return SneakerCard(sneaker: _sneaker);
                      },
                    ),
                  ),
                  const SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: Text('Trending', style: _theme.textTheme.headline3),
                  ),
                  const SizedBox(height: 12),
                  SizedBox(
                    width: double.infinity,
                    height: 250,
                    child: ListView.builder(
                      itemCount: _sneakerList.length,
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      padding: EdgeInsets.only(left: 18),
                      itemBuilder: (context, index) {
                        final _sneaker = _sneakerList[index];
                        return SneakerCard(sneaker: _sneaker);
                      },
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:bisharer/color.dart';
import 'package:bisharer/generateInfo.dart';
import 'package:bisharer/screens/opportunity_details/view_image.dart';

class OpportunityDetails extends StatelessWidget {
  final List<String>? tags;
  final DateTime? createdAt;
  final String? title, image, category, id, company, views, applied, body;
  OpportunityDetails({
    this.tags,
    this.id,
    this.category,
    this.createdAt,
    this.title,
    this.company,
    this.image,
    this.views,
    this.applied,
    this.body,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: ClampingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        slivers: <Widget>[
          _buildSliverHeader(context),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                _buildTagArea(),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                    right: 15,
                    bottom: 20,
                  ),
                  child: Text(
                    getTitle(),
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontFamily: 'times',
                      letterSpacing: 1.1,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 30,
                    left: 15,
                    right: 15,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Offered by ' + getCompany(),
                              style: TextStyle(
                                fontSize: 15,
                                // color: primaryLight,
                                fontWeight: FontWeight.w400,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: 7),
                            Text(
                              getRandomDate(),
                              style: TextStyle(
                                  // color: primaryLight,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Icon(Icons.remove_red_eye_outlined),
                                  Text(
                                    getRandomNumbers(),
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Icon(Icons.bookmark_added_outlined),
                                  Text(
                                    getRandomNumbers(),
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    _longText,
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'serif',
                      letterSpacing: 1.1,
                      wordSpacing: 1.5,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                      height: 1.5,
                    ),
                    // textHeightBehavior:,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      persistentFooterButtons: [_buildBottomArea(context)],
    );
  }

  Widget _buildTagArea() {
    return SingleChildScrollView(
      child: SizedBox(
        height: 70,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _buildTags(),
            _buildTags(),
            _buildTags(),
            _buildTags(),
            _buildTags(),
            _buildTags(),
            _buildTags(),
            _buildTags(),
            _buildTags(),
            _buildTags(),
          ],
        ),
      ),
      scrollDirection: Axis.horizontal,
    );
  }

  Widget _buildTags({String? title}) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: InputChip(
        onPressed: () {},
        label: Text(
          getCompany(),
          style: TextStyle(color: Colors.black87),
        ),
        backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
      ),
    );
  }

  Widget _buildBottomArea(BuildContext context) => Container(
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildPersistentButtons(
              icon: Icons.add,
              text: 'Interested',
            ),
            _buildPersistentButtons(
              icon: Icons.save_alt_outlined,
              text: 'Save',
            ),
            _buildPersistentButtons(
              icon: Icons.share_outlined,
              text: 'Share',
            ),
          ],
        ),
      );

  Widget _buildSliverHeader(BuildContext context) => SliverAppBar(
        backgroundColor: Colors.white,
        leading: Container(
          decoration: BoxDecoration(
            color: Colors.white54,
            borderRadius: BorderRadius.all(Radius.circular(0)),
          ),
          child: IconButton(
            // color: primaryLight,
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        stretch: true,
        pinned: true,
        collapsedHeight: kToolbarHeight,
        automaticallyImplyLeading: false,
        elevation: 1,
        expandedHeight: 300,
        flexibleSpace: FlexibleSpaceBar(
          background: GestureDetector(
            onTap: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (BuildContext context) {
              return ViewImage();
            })),
            child: Hero(
              tag: 'opportunity uid',
              child: Image.network(
                getRandomImage(),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      );

  Widget _buildPersistentButtons({IconData? icon, String? text}) {
    return Expanded(
      child: InkWell(
        splashColor: Colors.grey.withOpacity(0.4),
        highlightColor: Colors.grey.withOpacity(0.4),
        onTap: () {},
        child: Container(
          padding: EdgeInsets.all(5),
          height: kToolbarHeight,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(icon!),
              Text(text!),
            ],
          ),
        ),
      ),
    );
  }

  String get _longText =>
      '''Lorem ipsum dolor sit amet consectetur, adipisicing elit. Suscipit commodi natus molestiae, mollitia animi nulla accusamus minus exercitationem, pariatur magnam aliquam ipsum quos, eveniet autem? Cumque quidem deleniti dolorum amet!
Nesciunt praesentium nobis voluptatem? Quibusdam perferendis illum delectus assumenda debitis, minus dolore, ipsam recusandae saepe nihil culpa reiciendis deserunt aut maxime eaque autem, soluta ex amet earum suscipit? Odio, reprehenderit!
Quibusdam at nihil accusamus dignissimos eius temporibus veritatis ex pariatur. Commodi quae magni harum id tempore eos unde exercitationem, incidunt voluptatem, mollitia eligendi. Animi praesentium est magnam, provident aliquam deserunt.
Beatae, consequuntur doloribus! Assumenda non sed ratione aspernatur molestiae quae veritatis minus asperiores, minima consectetur blanditiis doloribus rerum ex sit ea veniam labore tenetur consequatur repellendus laborum! Consectetur, possimus sed!
Quidem, illo ad adipisci dolore maiores repellendus alias veniam, quibusdam sequi provident impedit placeat quis possimus eius voluptate neque veritatis ipsa, nostrum numquam asperiores obcaecati consectetur nobis. Possimus, facilis aliquid!
Ducimus consequatur similique ipsaolor tenetur, tempore repudiandae molestiae atque hic. Id amet aliquid sequi explicabo eveniet, error quibusdam expedita laboriosam, soluta cum nam impedit quasi neque modi?
Aperiam magni ad quidem voluptate doloremque, numquam temporibus sequi, impedit ea explicabo ex minus, delectus officiis mollitia. Harum sequi tenetur praesentium vitae, hic, nostrum fuga quis labore reiciendis, quibusdam eos!
Sunt, quisquam dolore quasi minus quod, itaque voluptates facilis tenetur aspernatur possimus nesciunt provident maiores vitae cumque aut repellendus pariatur architecto ab alias sed amet rerum ratione impedit? Laudantium, obcaecati?
Explicabo aliquid magnam saepe nisi, sit harum molestias autem. Est facilis quo, dolorem eum, magnam laudantium dolor soluta, aut obcaecati porro totam ab? Nisi corporis ipsa, fugit facere quas perspiciatis.
A enim velit voluptates placeat magnam, nostrum repellendus beatae et explicabo ipsum exercitationem nisi commodi, qui blanditiis. Vitae, neque facilis, provident voluptatibus id obcaecati iste, ab sapiente sit fugiat delectus.
Distinctio, obcaecati maxime molestiae aut ipsum delectus autem blanditiis totam iste id molestias et reprehenderit vero reiciendis natus a deserunt excepturi suscipit. Officia cumque tempora est cum debitis minus doloribus?
Quos natus quam autem repellat eos quaerat doloremque porro dolorem, dolore sit magni veritatis harum! Hic sint est provident! Deleniti laborum minima tempora harum, ducimus sonem reprehenderit possimus ipsam impedit atque quas, fugit rerum? Tenetur blanditiis nostrum, sit id culpa earum iure dignissimos consectetur doloribus, error ratione quia illum ipsam.''';
}

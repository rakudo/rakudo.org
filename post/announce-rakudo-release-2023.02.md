%% title: Announce: Rakudo compiler, Release #159 (2023.02)
%% date: 2023-02-22

On behalf of the Rakudo development team, I’m very happy to announce the
February 2023 release of Rakudo #159. Rakudo is an implementation of
the Raku[^1] language.

The source tarball for this release is available from
<https://rakudo.org/files/rakudo>.
Pre-compiled archives will be available shortly.

New in 2023.02:

+ Improvements:
    + Make use of line directive information for compile time errors [6bc209fc]
      [89c23ddf]
    + Improve error message on "foo".Order [665375ba]
    + Try to be more explicit when exception reporting dies [45b19784]
    + Make X::Method::NotFound more resilient [eff02440]

+ Additions:
    + Allow for .rakutest as extension of Rakudo test files [4a42b211]
      [0d49c2e7]
    + Implement numeric coercers for Date/DateTime [72856df9]
    + Allow * to be used as identity on classify|categorize [4b264b80]
    + Introduce `$*EXIT` / `$*EXCEPTION` dynamic vars [50050866]
    + Add In Memoriam for Ben Davies [ccbf9a09][3d2f8bd9]
    + Add Complex.sign to v6.e [34cf82aa]
    + Add Unicode class to v6.c [db7ca2dd]
    + Make log and sqrt handle negative values mathematically correct
      in v6.e [760e21c1]
    + Make RakuAST:: classes available with `use experimental :rakuast`
      [c9cb334e]

+ Efficiency:
    + Make List.head() about 2.4x as fast [7e69a6de][615b9bf9]
    + Don't pollute PROCESS:: with failed $*FOO lookups [6ef8993f]

+ Fixes:
    + Fix EVAL regression on symbol leakage [1ea6be79]
    + Resolve the case of CUPR auto-vivifying some dynamics [7194b1e6]
    + Fix the list of expected symbols [c6afe382]
    + Fix swapped iterators in Seq.ACCEPTS [f078896c]
    + Don't error without git, but all needed files are present [e3e962c2]
    + Fix `race` to actually race and not secretly hypering [ffc9fc74]
    + Fix defaults for typed optional @/% params [JVM] [49facdc0]
    + Fix storing of typed Hashes from a list [c9e391f0][5ed14bc4]
    + Fix type constraints on QuantHashes [03b3b13d]
    + Fix breakage with "use v6.e.PREVIEW" [JVM] [c88f50d5]
    + Hopefully fix all inheritance issues with set operators [586466e9]
    + Set Xmx4G for building Rakudo [JVM] [67ba2dfc]
    + Fix error reporting for feeds [e09f20ca]
    + Fix serialization issues with Version [9e4fa286]
    + Make Junction:D.(Int|Numeric|Real) work [1841d6d9]
    + Don't special case [+] to List.sum [5c66515d][6b6c0ec8]
    + Correct description of BUILD/TWEAK in BUILDPLAN [fbb669ae]

+ Removals:
    + Eradicate knowledge of unimplemented COMPOSE phaser [0040f813]

+ Internal:
    + Make Azure pipelines know about the `main` branch [c3e0eb7c]
    + Fix a syntax error in Perl code [ad9302d7]
    + Fix NQP version check [7cd8adfa]
    + Some minor harness6 fixes [d50a8667]
    + Upgrade Rakudo tests to Unicode 15.0 [37826798][47ec76bd]
    + (test fixes) .classify|categorize(*) no longer throw [0baf2c0e]
    + Micro-optimize ADD-PAIRS-TO-BAG|MIX [7a6c3095]
    + Fix "ctxlexpad needs an MVMContext" regression in SETTING:: [b21cd61c]
    + Fix test description for unknown modifier (#5179) [69f1aa1f]
    + Warn about Unicode versioning issue wrt tests [268da12b]
    + Many, many commits related to RakuAST development:
      [e05474b6][956bd776][de998b6f][df72d0b1][fd3ed60e][93a39a6a][356e31cc]
      [ebe0c896][bc3ab866][a9f4ffb7][88dd3c0b][ad3bc88b][ea42c963][e47d5634]
      [ae5a599b][62e8f029][51fa4b14][e972178e][c4af208d][77917ed3][0d28cd5e]
      [b4c1acf0][2d29a5d4][f33888f4][cfac29ae][f6da82bc][736001f6][46f2960d]
      [ca6f3096][e79b8cf7][02207076][f77e195c][df9e41c5][99db315d][5d7f94aa]
      [910292ea][30288c3a][f43b66d5][a4233bda][8bdbce85][66a149e4][f9525119]
      [814b6186][c5a08920][08d7349c][421d57c1][2cd932ab][d0e608ab][5bfbd526]
      [bddd0685][a9b6cd89][9837caa3][d5a408a9][f40f8b8a][fa170fcb][86b0d01e]
      [67bb7a27][7acdd9f8][4c6b1e76][f3efb3e2][3989d3e9][6d026119][e193d8c7]
      [3f4dba9b][ca0742d2][5fe88c03][78ff8057][4fc888d2][1d38dfb9][bd39e9e2]
      [1bf6f3cf][4e6da7c9][6e501135][f76b86d1][414bb838][c8f8b4e4][9380dc29]
      [eca14cc9][093974aa][7c28f93e][d5eaf055][5d249be4][01d6624e][f4ab1cdc]
      [a175ad30][18fea042][c95e0c7b][b57b4132][cf0d95a2][20d282de][44039d74]
      [161d1182][4ecb99a3][8f27ecc8][75a3f9f2][8bd84524][e1ffa4de][71686ee6]
      [78247b0c][2fa9a242][b631129a][7f2fd696][fa8841fc][e4eefe3c][49ebe9f5]
      [29ba81e4][ade15c81][2573378f][56ec60cf][ddf7336a][cb802953][b7439c13]
      [72e80874][ecb8399d][185152df][dfbe5680][b2542b5d][50c02aac][517f0e1f]
      [d68afa83][8ba4e59b][eecc8dde][1ea7a07e][2ef5ba8f][8f7b18ba][3513aa3d]
      [74626de5][8bf06ec6][5dbd30af][4863d612][d0cd82f6][84bde282][4af72c04]
      [641b36e4][a69a79ed][bf7b9461][a5e5a56c][c8dd111f][a3d90c45][6bf84783]
      [56e1c7dd][07e81a50][40505920][98dcdd6d][4e75c2c6][f9d1ab4c][d90b2974]
      [5c8a13d7][73c99451][9072bef0][3e64114a][6f6af938][1a5ae542][669bd130]
      [8b35e015][ae36b70a][cbff9299][56a22494][78d72a00][e5f9572b][bb7c0d43]
      [d3cd8a65][b5a3e605][19016866][b3e4d8a5][2c510103][2c53297f][2ae89773]
      [c2a4d0f8][69bb1bdc][dcfbf3f3][15bdf615][b0974b77][114d59d9][f9ae5178]
      [1a121077][fac1c49e][25582954][e0c31a4e][bd545822][e22a5f00][03a2d275]
      [6ca3e817][a9acc308][9acde7a4][51486ed1][dd264844][6529cfcc][49cc2d22]
      [3a4754ee][824893c2][462824d3][0d9f4f52][80ed4e9d][a6b7569c][9f9dd88f]
      [60af9df9][6058326c][28d7b1b1][5e800399][a321e27e][fbfd2dc5][cd029491]
      [0c5d37a4][022a95d4][e67e517a][cbf0db51][9ea7fed8][46016260][827e45b6]
      [5e5c187c][f21b4afa][b664949d][1aecb4a6][f5ecd9b2][4ce1233d][8954e18a]
      [771a3899][e2badf02][9ba49196][479774bf][474e9c6c][16822268][7996004b]
      [f84133ea][bd259c99][c9a8ce7a][1487aae3][dc23129e][f3bd6c59][a12d5c71]
      [ee717b79][03d59793][faf35023][27ed812d][5b410ba0][dedf4ec8][42cf463f]
      [466659ab][5fd119af][19bbb1f4][3073c0c9][ce9426be][a6ba9e25][2729c171]
      [3c2751a7][ad02cb8d][3deb09f1][74a782dc][c894bfa0][70bbe3d7][db8b83ac]
      [ca49bdd3][6a958b76][7bd32e10][982a658e][af8ef19f][5b10b91c][785fc51a]
      [c5cf19a1][274e255c][c01cad8d][7ecdb443][05a1e3ec][bae48821][28056c79]
      [602a5fd3][eb246c27][5ae16fff][0e5bf559][aa506ba0][c2c43fe0][e5ba09da]
      [e5cdfded][a905cf60][2acde281][1b2bc5f9][250f7859][662e78ac][1f239cd9]
      [88eefa6c][c014b970][e1a9388d][01c4b74b][678e6a2e][2ab235dc][78fcc2cd]
      [4e0c305f][125884fb][0182c08e][434786f7][d1fe4e16][d0060a4d][b57678f6]
      [702f44d4][78e56918][706f6b1e][d85cca48][adf1fa74][a2bd6291][c9970ca2]
      [285a8d29][0b35f7a6][1240b867][5c0e9a3f][76385ce8][c9647cc2][5eaaaf0d]
      [ac61d457][f1b870e6][fdafab52][6322b171][0331e302][0d9db08a][9aebf7b6]
      [ec101f94][8c3ac505][6f9c02b0][8df93dde][7f89093e][036025b3][75d72d57]
      [0a8faf6a][a698ff06][b261bbb9][4432699d][2562bb11][dce94bb8][3e6f5297]
      [a71a1a5b][64ca81b1][fa0b5f15][dbceeaba][812c7d18][4abb1134][df7d3129]
      [dfb20c1b][91716f78][9c00fd83][9598d551][a55b6dc4][1301c9fb][43fead09]
      [b9e6b7c3][535f6d81][7d3fa91a][daa20321][af86ac0c][af42c158][ad9a3078]
      [03f96a7b][729efb1c][f109a678][2281bf5b][5d2a0550][aa6f5d0c][a9ff7dbb]
      [35901c9e][90456552][5a9e1bbd][4f692a5c][40671f48][1387e490][6d6ffccd]
      [d81f54d6][1af73a77][09d3ee61][cf5b926d][ee73f7fb][500b8e05][20c7345c]
      [d2f40b23][a2a9208a][20eb4eb9][c22c286e][8ab89b44][0983207a][c4907f0a]
      [868c8322][6c10f579][8975c2f4][4c3e46ea][e157005a][5051dcd8][a87d9f77]
      [da0f4484][671476ec][a3bf626b][6d6316bc][0b84aef4][4b7dfc08][edae0ea8]
      [31fbd7b9][6e41b8f7][36ab2f2c][21ecad40][af7db189][a2ed5826][bfb119f8]
      [166f257b][c3d104aa][ed69091a][763910f9][6b40c2a5][7bc7cb20][1a219730]
      [c4a89741][2e707230][d7d4007e][27f977bf][7dc9b8d7][3b2d223e][78edc121]
      [fa9c2b80][b3a5626e][288b5a95][9ce76692][7e499dfe][65cbd86e][8f0fe8c2]
      [bdc85c20][f09cb960][deb5a9b0][eb86a7bc][6d3f9d74][fcfbdd63][7c18871a]
      [3b6551c5][0cb7b4e2][6e354c57][e609ac65][a67bebf8][11a53e7f][e2714599]
      [86430997][e2756d61][c47ce4e4][9f724d9c][469d3860][5721538f][e0d8fc09]
      [ee45dfed][8f738ebd][6c210ce2][302378ee][2363ab46][58b1d361][471432e5]
      [c34c3b92][124c8cc0][50dfab76][73aefe53][0414316f][54943c3d][21b924b5]
      [96ca0b2a][c9d6d96b][0656a382][2572c1b8][3f80f136][4bc0ca76][985ea4c0]
      [92dc6b33][1c3cfc01][d414c58c][e67f7aca][3efa3604][4f97ea86][cb727cc1]
      [899a4593][3a4ba0c8][06e19367][f45af05c][e8d074da][c3044326][64ed6925]
      [276753ca][6f48e308][a072106f][d38d1c5d][4117642d][4fe1c859][e08fd893]
      [77036a92][1d7c8fb7][960f3086][2e0feac8][eb4a5b2a][7c76a53b][8fa2240b]
      [af51b0f0][bd5851a8][63ceb411][b5e676a5][6429a393][26cdab2c][b5d48ce2]
      [9c22b8e2][f6b68b2b][7d9841eb][f3ddd024][23df134e][0869c5cf][0b95dae7]
      [67171c08][8bd7f06f][8f378efc][0d2cc125][d8308f5d][805faf43][1b2880c0]
      [e50668b9][b72a20fc][ad852824][ea0ebc90][94eab407][6d8f8740][c8c30823]
      [b7d575c8][c16684e3][30810f4f][b02fe6a3][3fca37c1][f0847371][c8629513]
      [c094494a][a3f7785e][21bda1d7][da7bd2d8][daeaa44e][657d7c8d][2bbee1fa]
      [85564fc5][1d35c883][3acae169][cf150618][3544b9ac][48d86e61][d9790692]
      [b5f8be92][979edc1f][8e308201][3ef17793][ce891bb1][33b44db1][b4b094d7]
      [d296a1bf][097843e9][5985171a][c9c6b2f2][4af1d9b7][109bb92a][e675a241]
      [f28db05a][2fb330ca][458f07d6][a9854054][49e72fc5][95fb97b8][a7a34dce]
      [26a8cfcb][b1528886][a4ab9682][69ce0cf8][d09b7b9b][c98d3746][243e8dc9]
      [e205f362][bad08dae][85f4fc2d][939eb2ff][3d406713][a64d8390][9d15c496]
      [bcec0356][dbe6b329][79c28ccc][2add87e4][4cbf0032][948da773][f25f6304]
      [c94ee45a][6ddf3941][de6bcfbd][c4739ff1][62fac9bf][37814937][4b62f4bf]
      [2295d571][1b4e1fcd][c58e7616][b90cb9f9][4011c269][16cd9b36][e023cc56]
      [ae5cc55b][6cf62e99][199f9548][d9f49f0b][7d41c960][ed9db185][84811ea5]
      [ed760d56][5f7c2d05][167e23dd][9e26bf4a][8978230e][8b20dd1b][4b895e87]
      [06a56a0d][87bf4d1e][62a388cb][1c60e5e0][64e3bb47][1c74e758][7e428f87]
      [0b656f47][732d95ea][c4da1ef6][2c8a9d0c][80d9122c][3be38cd5][c9be7083]
      [49ea8493][8c890dd6][72fa2a78][b054eb25][fbd0b628][f22be2d1][46836dc1]
      [0e4c6207][2873c4b5][51495c57][11f4c2f1][b4b462b8][edb21f32][0ebd9a85]
      [02dcc282][cee00fd0][12e15779][07452f94][eefe0a50][ade4484e][3ae59cd1]
      [8798ddc0][439e72e3][298555d3][ac7d479f][760f3944][8191f2e4][18538fb5]
      [ea51b5c3][61171f4a][875c33a4][e818c692][874becf2][522f1b02][b8900999]
      [ea1919ec][8be48005][119ea0cb][0bd2deb1][f30a8b21][51762f5d][533fe92a]
      [d2d731d6][79cd2a78][971763f2][31f28de6][e5cfb41d][263ad354][7e536922]
      [e92e3c54][4fbe897e][5ef01bcf][67ed1c3c][8549417b][57bdeba2][7542441b]
      [4519b9d5][c69caa73][86a246d3][f4aeb3e0][6a89d237][912f518c][fc2892e9]
      [64c969cc][eac76a34][13b1c90e][5fb16cb5][3c6bf179][b223572b][666f392d]
      [d0c2daa4][b393602e][3e5f3a2e][78fecda9][3d7b4fd9][a9353677][ddf09631]
      [9cd7378c][caca0657][f51679fa][27d6e385][d45c450e][96e4c568][2d63d156]
      [9d4a15cf][2fda7e11][3c85b965][e5578ada][e27af066][676aa173][9ab08d3b]
      [b0f61734][61b01140][a02e4991][1ced0235][59943271][88d37023][06b7d398]
      [9e2d4082][066e4010][44d8bcae][a8faf17d][cb2c03d8][9d5f35a5][46d8c1ac]
      [f1f757c1][ee96a9f1][b047b0e6][9dd0764d][1ba87d3b][7fb3c8cc][5ea53b3a]
      [2247a98b][0b6e76f9][877a08ba][9b8a160e][b7173a29][86663cb0][9d5824cb]
      [e8bd1b3f][3aa8c877][a5dd70af][0f86d6f7][7d4c4ae0][347d4eb4][82aa030d]
      [69be8b3a][3dd43586][a072e1ea][d4598e47][fa046b96][eb37f8cc][cd2b8d4e]
      [e3b5f88d][ba5265ef][af9e6b92][af0b3f14][59bfc18a][0742c95b][f97269a1]
      [bc0cc7fc][173f601e][700cd0ce][bd67cc99][c9f60a1d][ce0b72f7][1c4a226c]
      [20f8d3ea][a4c97538][2b4470dd][7e93562c][ae9edaa9][6fb171f1][e39ef789]
      [8018d8c2][0a32de19][84d34691][9d650660][0d4da93e][4d74a83d][42f1f912]
      [dd49f98e][ddecbe68][6d7b357f][512ef78a][7102dc77][10894226][88b8060a]
      [4535adc0][de4a41c2][d40250ea][b5df6e28][5f7ff013][2814e016][dcfb306b]
      [b8f56ee6][2006fcff][30cf5c79][0562c894][19b3757e][5abd8960][4a6c5541]
      [123ad032][8b9fb402][2279a0ae][dc452c57][0354c478][9aea72f5][8ee5e99b]
      [d0916e9a][dcff39f6][5758c351][c5c93a92][e9030098][14958337][d8854eb6]
      [034ed9ac][d9c9837e][ac5a0090][2fb1427a][8a5e0f8c][93ea024a][58fbc27c]
      [db32b0d2][44232e76][baf03432][6ca9aada][3f195d2a][6ed3df4b][41284c03]
      [d992c064][a92a632e][9c69f842][30106844][b6a3abe0][9192900e][85b91b6e]
      [4e2e9906][656450e2][5890894f][dd906791][64a3bd22][5a7e07d6][5189750d]
      [edf67891][464a8c68][539557bf][36638d2f][e6cfc4c8][c4080f95][57dd1901]
      [b436566e][34efa236][50fd019f][b832f70d][677db9cc][f9b01f80][e8c23f84]
      [dfd27038][6d837b38][212e5e6e][683648cd][468bdb28][6a04f8f5][43298c90]
      [90df8d81][0b0d4ecb][08f3995e][83fb2518][1adc2ab1][16cc1702][a6ee8bce]
      [86c0f401][3439c9ad][54984602][436e0d87][54a85b77][69746968][1b5b5751]
      [35e498eb][91a1020d][5444c4c1][c9e4122a][916aa9a6][e339e027][1a31c3bf]
      [1e384b2a][9270133e][9686757a][e3b32da1][b23f3815][6f1d1da6][c72aa169]
      [1ae9b404][095615b8][73271c60][ccccfb72][00a1978d][a63f557a][64a80676]
      [4db8d3e1][cdb87287][0e218e37][67647f72][a9067598][9b8ffafa][c45c2580]
      [1f4eb03d][937d058b][47374fcd][7b2264ee][935d843e][5878ac39][c4b3ffbb]
      [05cfed1b][63d49ac9][1eee6367][872edc5c][0f21ff2c][abb4de67][c8a480fd]
      [78526bcc][7551c672][be13e518][3c817a16][127fb089][e614d978][a525e487]
      [80241850][16bc5008][b09f11c8][f7412d1c][b1e40e64][fa23dd4b][c3e81a77]
      [f0bcdcd2][ed8d70d4][ee21efd8][4b11fea7][56705f35][1c966e57][b1234bcc]
      [454507c0][672ac184][35b6b6d6][d5dfb523][ac5fef43][6cbd0617][598a9d9c]
      [da963241][8ee61927][9998d133][a8edae2c][79075ad2][c1c6ef26][a99da6c1]
      [75b4f5b2][a564ff37][ee983161][84fe0503][a67c8598][2e20149a][882d6a48]
      [ac282b4f][5234e0bb][1ec15a8d][70a50d51][8c64a479][49b4566e][2cffc13f]
      [8589e80b][0b0bce89][dfcb5f47][0049c301][14f56a2c][4ab4907a][4f207505]
      [e1a7ca62][54328e9b][34a9d51c][25d583bf][bbdaf832][68f4a96d][c0cee2e5]
      [bbe447db][49cb197a][d8184117][9fc9b061][91ebaa01][03b2cf35][69fa6bba]
      [04329e45][b2f61d86][d2c1de3c][d10c2750][bc7189cc][73839db2][28cb8cc2]
      [39acef1e][2cb6fe37][6846bc1b][c8eeb941][7702e6b7][fdb42827][896ffc14]
      [46c2324e][d366e67a][9cfaff1a][85240f0c][1072872e][bab7f837][445a2241]
      [4a53b6b9][3a73a67e][775bdb28][fc9cbd3e][0ccec24c][8f9a54e9][ea60d168]
      [ade6861e][a49f5a97][52b90921][c3c1f9c5][95f6c5b4][c3155c05][349b1a83]
      [97a68d10][6f1b0fe7][015aacf2][48e61f8a][b4fe21c2][f98f316c][886a00d1]
      [97ecc4d7][37f52599][d824e6d2][40a8d032][e45436ef][e1899640][df1fbfed]
      [dbbd515a][0e99334e][5dc5bb71][47408ed8][91965978][6405f379][46982a94]
      [32a733c5][403b680a][0d9f70a0][33c2b283][1d97dceb][5cc476e7][4a6ea806]
      [156fc2cf][e3b9c663][0d1444d2][14923ccb][fff19795][e67941e9][d8d34a12]
      [d20bea56][46fc663e][ad940dec][af90aed7][419d371d][95a5479f][035544f2]
      [88e862a8][e39a546b][c17d5b2f][1be78baa][4c325212][27d1d704][93caca51]
      [7b4e9823][d3d839cd][30b398b1][1f0fe647][b915dd3a][2b6b4019][cbe8d97b]
      [63d48fad][83a870cb][4663edbf][b010e70b][8db41819][d2c3e931][b77f6c44]
      [fb205b31][f89db51c][7ad82e9c][f2b2015a][bb75b628][1f31a41b][d1ce57ad]
      [fd75bb0f][dcbd66ce][a174de25][760b9198][b0f9d832][53da367b][d371cb51]
      [c9cb334e][6e337de7][afb700e2][430d6d29][64442a2e][674917ef][6b3c0a60]
      [2ebe50b1][9841db37][09bdc417][289c4826][b6203f07][ccf3b24b][5b20a8c7]
      [2d559ef4][01a8faa7][4f1bbdbf][656b58bc][424de2f0][b6df0034][f8e22b6f]
      [1acb74d8]

The following people contributed to this release:

Elizabeth Mattijsen, Stefan Seifert, Vadim Belman, Daniel Green,
Christian Bartolomäus, ab5tract, Justin DeVuyst, Márton Polgár,
Patrick Böker, thundergnat, Will Coleda, Florian Weimer, Jared Miller,
Joelle Maslak, Jonathan Worthington, Leon Timmermans, Will "Coke" Coleda,
cfa

This release implements 6.c and 6.d versions of the Raku specification.
6.c version of the language is available if you use the `use v6.c`
version pragma, otherwise 6.d is the default.

Upcoming releases in 2023 will include new functionality that is not
part of 6.c or 6.d specifications, available with a lexically scoped
pragma. Our goal is to ensure that anything that is tested as part of
6.c and 6.d specifications will continue to work unchanged. There may
be incremental spec releases this year as well.

If you would like to contribute or get more information, visit
<https://raku.org>, <https://rakudo.org/community>, ask on the
<perl6-compiler@perl.org> mailing list, or ask on IRC #raku on Libera.

Additionally, we invite you to make a donation to The Perl Foundation
to sponsor Raku development: <https://donate.perlfoundation.org/>
(put “Raku Core Development Fund” in the ‘Purpose’ text field)

The next release of Rakudo (#160), is tentatively scheduled for 2023-04-21.

A list of the other planned release dates is available in the
“docs/release_guide.pod” file.

The development team appreciates feedback! If you’re using Rakudo, do
get back to us. Questions, comments, suggestions for improvements, cool
discoveries, incredible hacks, or any other feedback – get in touch with
us through (the above-mentioned) mailing list or IRC channel. Enjoy!

Please note that recent releases have known issues running on the JVM.
We are working to get the JVM backend working again but do not yet have
an estimated delivery date.

[^1]: See <https://raku.org/>

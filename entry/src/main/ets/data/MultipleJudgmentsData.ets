import { MultipleJudgment, Hexagram, HexagramLine } from '../model/DivinationModel';

export interface LineMultipleJudgments {
  hexagramId: number;
  position: number;
  judgments: MultipleJudgment[];
}

export const MULTIPLE_JUDGMENTS_DATA: LineMultipleJudgments[] = [
  {
    hexagramId: 1,
    position: 1,
    judgments: [
      { category: '占问战征', content: '乾为武人，有战征之象。初爻阳气始动于黄泉，犹是潜伏，故曰"潜龙"。在军事，为威令初发，大军未集，宜按兵以待也。吉。', source: '高岛易断' },
      { category: '问营商', content: '龙而潜，曰"勿用"，虽是一种好贸易，只可株守，未可骤动也。', source: '高岛易断' },
      { category: '问功名', content: '龙本飞腾发达之物，初爻曰潜，是未得风云之会也。故曰位在下也。', source: '高岛易断' },
      { category: '问婚姻', content: '《乾》初变《姤》，《姤》曰"女壮，勿用娶女"，是宜戒之。', source: '高岛易断' },
      { category: '问家宅', content: '按震为龙，震在东方，是宅之东，必有渊水，闭塞不济，宜修凿之。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 1,
    position: 2,
    judgments: [
      { category: '占问战征', content: '龙本灵物，初爻曰"潜"，是谓伏兵；二爻曰"现"，则发现而出也。"在田"则必列阵于田野空旷之地。《传》曰"德施普也"，是必战胜而行赏也。', source: '高岛易断' },
      { category: '问营商', content: '爻曰"现龙在田"，知其货物大般是米麦丝棉之类。现者，谓物价发动开涨；"利见大人"者，谓当有官场出而购买也。', source: '高岛易断' },
      { category: '问功名', content: '谓伏处田间者，当乘时而进用也，且得贵人之助，故曰"利见大人"。', source: '高岛易断' },
      { category: '问婚姻', content: '二五相应，五居尊位，婿家必贵。曰"现龙"，必是新进少年也。大吉。', source: '高岛易断' },
      { category: '问六甲', content: '生男，且主贵。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 1,
    position: 3,
    judgments: [
      { category: '占问战征', content: '危事也。爻曰"终日乾乾，夕惕若"，是能临事而惧者也，故虽危无咎。', source: '高岛易断' },
      { category: '问功名', content: '九三处下卦之极，其位犹卑，功名未显也，故称君子；在忧危之地，故曰乾乾惕若，斯可免咎。', source: '高岛易断' },
      { category: '问营商', content: '居不中之位，履得刚之险，度其贸易必是危地，须日夜防备，可脱险而获利也。', source: '高岛易断' },
      { category: '问家宅', content: '观爻象，必须谨慎持身，勤俭保家，斯无灾害。', source: '高岛易断' },
      { category: '问婚嫁', content: '三以六为应，三位卑，六位尊，尊则不免亢而得悔，是不宜攀结高亲也。', source: '高岛易断' },
      { category: '问六甲', content: '生男。产时恐稍有危惧，恐终无咎。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 1,
    position: 4,
    judgments: [
      { category: '占问战征', content: '观爻象，行军前进，必有渊水阻隔，宜设船筏；或临渊有敌军埋伏，宜预设备，乃得无咎。', source: '高岛易断' },
      { category: '问营商', content: '爻曰"或跃在渊"，若在贩运海货，恐罹波涛之险，或者物价一时腾涨。爻曰"无咎"，可保无害。', source: '高岛易断' },
      { category: '问功名', content: '有一举成名之象，大吉。', source: '高岛易断' },
      { category: '问家宅', content: '渊者水也，跃者飞升也，必家道有一时振兴之象。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 1,
    position: 5,
    judgments: [
      { category: '占问战征', content: '九五尊位，必是天子亲征，王师伐罪，故曰"大人造也"。', source: '高岛易断' },
      { category: '问营商', content: '九五辰在申，上值毕，附星咸池。咸池者苍龙之舍，咸池亦名五车，主稻黍豆麦，度其贸易，定在五谷之属。曰"飞龙"者，知物价之飞生也；曰"利见大人"，知其贩运或出自政府之命也。', source: '高岛易断' },
      { category: '问功名', content: '有云霄直达之兆。', source: '高岛易断' },
      { category: '问疾病', content: '有上应天召之象，不吉。', source: '高岛易断' },
      { category: '问六甲', content: '生男，主贵。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 1,
    position: 6,
    judgments: [
      { category: '占问战征', content: '上九居《乾》之极，阳极于上，故"亢"；亢则因胜而骄，是以"有悔"也。故《传》曰"盈不可久"，知不能持久也。', source: '高岛易断' },
      { category: '问营商', content: '"亢"者，太过也，凡卖买之道，不可过于求盈也，过盈则必有亏，故曰"不可久"也。', source: '高岛易断' },
      { category: '问功名', content: '上九之位已极，宜反而自退，否则必致满而遭损。', source: '高岛易断' },
      { category: '问家宅', content: '是必宅基太高，太高则危，亦可惧也。', source: '高岛易断' },
      { category: '问疾病', content: '是龙阳上升之症。《传》曰"盈不可久"，知命在旦夕间矣。可危。', source: '高岛易断' },
      { category: '问婚嫁', content: '不利。', source: '高岛易断' },
      { category: '问六甲', content: '生男，恐不育。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 2,
    position: 1,
    judgments: [
      { category: '占问营商', content: '初六阴气犹微，曰"履霜，坚冰至"，是由微而推至于盛也，犹商业由小至大，积渐而至于富。', source: '高岛易断' },
      { category: '问功名', content: '初爻是少年新进之时，由卑而尊，犹履霜以到坚冰，随时而来，未可躁进也。', source: '高岛易断' },
      { category: '问战征', content: '初爻阴之始，"履霜"之象，至上爻"龙战"，阴之极也，"坚冰"之象。曰"其血玄黄"，是两败也。所当先慎其始。', source: '高岛易断' },
      { category: '问家宅', content: '《坤》纯阴之卦，初爻阴气尚微，故曰"履霜"，"至坚冰"，则阴气盛矣。阴盛则衰，不吉之兆。', source: '高岛易断' },
      { category: '问婚嫁', content: '《坤》卦纯阴，曰霜，曰冰，皆阴象。纯阴无阳，不利。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' },
      { category: '问疾病', content: '恐是阴邪之症，初起可治矣，久则难医。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 2,
    position: 2,
    judgments: [
      { category: '占问营商', content: '六二《坤》之本位，"直方"者地之性，"大"者地之用，知其营业必是地产，如谷米、木材、丝棉之类是也。"不习无不利"，习与袭通，谓不烦重盈而知其获利也。', source: '高岛易断' },
      { category: '问功名', content: '二爻居中得位，动而获利，言不待修营而功自成，其成名也必矣。', source: '高岛易断' },
      { category: '问战征', content: '战之一道，以得地势为要，动以其方，势大力强，可一战而定也。', source: '高岛易断' },
      { category: '问家宅', content: '六二中正，居宅得宜，故曰"地道光也"。', source: '高岛易断' },
      { category: '问嫁娶', content: '"直方大"，地道也，妻道通于地道，故婚娶亦利。', source: '高岛易断' },
      { category: '问疾病', content: '爻曰"直方大"，知其素体强壮，不药有喜。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 2,
    position: 3,
    judgments: [
      { category: '占问战征', content: '爻曰"含章可贞"，言平时含蓄才智，敛藏不露，一旦从事，自能制胜，即不成功，亦无大败。故曰"无成有终"。', source: '高岛易断' },
      { category: '问营商', content: '《坤》地也，百货皆生于地，商能蓄积百货，故曰"含章"。凡从事营商者，贸迁百货，以时发售，故曰"时发"。《坤》内卦至三而极，正盛满之地，故曰"光大"。是以一时虽或未成，知必有终也。吉。', source: '高岛易断' },
      { category: '问功名', content: '凡求名者，最宜待时，时未当发，"含章可贞"；时而当发，出从王事。知此道者，必能保功名以终也。吉。', source: '高岛易断' },
      { category: '问疾病', content: '玩"无成有终"句义，知不可药救矣。凶。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 2,
    position: 4,
    judgments: [
      { category: '占问营商', content: '四巽爻，巽为商，为利，巽"近利市三倍"之谓也。兹爻曰"括囊"，是明亦以闭囊之象，知必昔日得利，财已入囊，不使复出也。故曰"括囊，无咎，无誉"。', source: '高岛易断' },
      { category: '问战征', content: '六四重阴，当闭塞之时，虽有智，囊其才，无所施其计谋也，是宜闭关不战，如囊之括其口也，斯无咎矣。', source: '高岛易断' },
      { category: '问功名', content: '四重卦，动当否位，《文言》曰"天地闭"，"括囊"者，闭口也。天地且闭，何有于功名？若妄意干进求名，适足致祸，有誉反有咎矣。宜慎。', source: '高岛易断' },
      { category: '问家宅', content: '六四以阴居阴，履非中位，是宅必在山谷幽僻之处，宜隐遁者居之。', source: '高岛易断' },
      { category: '问六甲', content: '生女，或得孪生二女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 2,
    position: 5,
    judgments: [
      { category: '占问战征', content: '《坤》臣道，五居尊位，为人臣之极贵者，如舜之摄位诛四凶，周之摄政诛二叔。爻曰"黄裳，元吉"，是以文德而发为武功者也，故《传曰》"文在中也"。', source: '高岛易断' },
      { category: '问功名', content: '六五辰在卯，得《震》气，《震》有功名奋兴之象。五又《离》爻，《离》为黄位，近午，上值七星，七星主衣裳文绣，故曰"黄裳"。《离》又为明，有文明发达之象，故曰"文在中也"。', source: '高岛易断' },
      { category: '问营商', content: '《坤》五变《比》，比吉也，辅也，商业必得比辅而成。《比》卦下《坤》上《坎》，《坤》为裳，故曰"黄裳"；《比》为美，故曰"文在中"，知其经商必是锦绣章服之品。曰"元吉"，必获利也。', source: '高岛易断' },
      { category: '问疾病', content: '《坤》为大腹，又黄为中色，裳下饰，可知其病在中下两焦。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 2,
    position: 6,
    judgments: [
      { category: '占问战征', content: '象已明示是两败也。', source: '高岛易断' },
      { category: '问功名', content: '上处外卦之极，是穷老人闱，抑塞已久，一战复北，可哀也。', source: '高岛易断' },
      { category: '问营商', content: '上六《坤》卦之终，其道已穷，是资财既竭，血本又耗，商道穷矣。', source: '高岛易断' },
      { category: '问疾病', content: '必是阴亏之症，阴极抗阳，肝血暴动，命已穷矣。', source: '高岛易断' },
      { category: '问六甲', content: '阴尽变阳，可望男孩。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 3,
    position: 1,
    judgments: [
      { category: '占问战征', content: '磐桓，不进之貌，曰"利居贞，利建侯"。尽尝屯难之时，内则居正以守，外则求贤以辅，斯民心归向，众志成城，而终无不利矣。', source: '高岛易断' },
      { category: '问营商', content: '初九爻，辰在子，北方，上值虚宿，曰元枵，枵之为言耗，虚亦耗意，不利行商。能以守贞任人，尚有利也。', source: '高岛易断' },
      { category: '问功名', content: '初爻是必初次求名也，"磐桓者"，是欲进不进也。要当志行正直，谦退自下，终有得也。', source: '高岛易断' },
      { category: '问家宅', content: '磐字从石，所谓安如磐石，知其宅基巩固也；曰"利居贞"，知其居之安；曰"利建侯"，知必是贵宅也。', source: '高岛易断' },
      { category: '问婚嫁', content: '曰"以贵下贱"，知为富贵下嫁之象，吉。', source: '高岛易断' },
      { category: '问六甲', content: '初爻生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 3,
    position: 2,
    judgments: [
      { category: '占问婚嫁', content: '爻曰"匪寇婚媾"，是明言佳偶，非怨偶也。但曰"女子贞不字，十年乃字"，知于归尚有待也。', source: '高岛易断' },
      { category: '问战征', content: '六二以柔居柔，有濡滞之象，故曰"屯如"。《春秋传》："有班马之声，齐《师》乃《遁》。"古者还师称班师，故曰"班如"，知行师未可遽进也，必养精蓄锐，十年乃可获胜。', source: '高岛易断' },
      { category: '问营商', content: '媾与购音同，义亦相通。以货物求购，有迟回不决之意，故曰"屯如邅如"。又曰"十年乃字"，十者据成数而言，货物未可久积，或者十日十月乎？', source: '高岛易断' },
      { category: '问功名', content: '士之求名，犹女子之求嫁也，曰"屯如"、"邅如"、"班如"，皆言一时未成也。"十年乃字"，此其时也。', source: '高岛易断' },
      { category: '问六甲', content: '生子。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 3,
    position: 3,
    judgments: [
      { category: '占问战征', content: '爻曰"即鹿无虞，惟入于林中"，犹言行军而无向导，冒进险地也。当知几而退，否则必凶。', source: '高岛易断' },
      { category: '问营商', content: '玩爻辞，知其不谙商业，不熟地理，前往求货，不特无货，反有损失，舍而去之，尚无大害也。', source: '高岛易断' },
      { category: '问婚嫁', content: '是钻穴隙以求婚也，其道穷矣。', source: '高岛易断' },
      { category: '问功名', content: '梯荣乞宠，士道穷矣。', source: '高岛易断' },
      { category: '问六甲', content: '六三阴居阳位，生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 3,
    position: 4,
    judgments: [
      { category: '占问战征', content: '"乘马班如"者，不明其进攻之路故也，明而前往，则所向无敌，故曰"往吉，无不利"。', source: '高岛易断' },
      { category: '问功名', content: '士者藏器待时，不宜躁进，迨于旌下逮，出而加民，"无不利"也。', source: '高岛易断' },
      { category: '问婚嫁', content: '《诗·关雎》云，"窈窕淑女，君子好逑"，逑，求也，必待君子来求，始为往嫁，故吉。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 3,
    position: 5,
    judgments: [
      { category: '占问功名', content: '士之所赖以显扬者，全望上之施其恩膏也，若上"屯其膏"，而士复何望焉！', source: '高岛易断' },
      { category: '问战征', content: '上有厚赏，则下愿效死，若恩泽不下，势必离心离德，大事去矣。凶。', source: '高岛易断' },
      { category: '问营商', content: '膏者谓商业之资财也，"屯其膏"，谓蓄聚而不流通也，小买卖犹可固守，大经营未免困穷矣。凶。', source: '高岛易断' },
      { category: '问疾病', content: '膏者在人为脂血，屯而不通，是闭郁之症，初病治之尚易，久病危矣。', source: '高岛易断' },
      { category: '问六甲', content: '九五居尊，生男，且主贵。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 3,
    position: 6,
    judgments: [
      { category: '占问战征', content: '上居屯之极，进退维谷，穷戚已甚，而至泣血，是军败国亡之日也。凶。', source: '高岛易断' },
      { category: '问营商', content: '"乘马班如"一句，上已三复言之，是商业之疑惑不决，已至再至三矣。极之泣血，知耗失已多，故曰"何可长也"。', source: '高岛易断' },
      { category: '问功名', content: '上居《坎》终，更无前进，得保其身幸矣。', source: '高岛易断' },
      { category: '问疾病', content: '知必是呕血之症。凶。', source: '高岛易断' },
      { category: '问六甲', content: '生女，又恐不能长大。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 4,
    position: 1,
    judgments: [
      { category: '占问战征', content: '爻曰"发蒙"，是为伐暴讨罪之师；如大禹之征有苗，格则罢师而还，故曰"以正法也"。', source: '高岛易断' },
      { category: '问营商', content: '初居内卦之始，是必初次谋办也。《坎》为难，爻曰"发蒙"，曰"用刑"，知营商必有阻碍，殆将兴讼，得理直立即止，若欲穷究，恐有害也，故曰"往吝"。', source: '高岛易断' },
      { category: '问功名', content: '欲往求荣，恐反受辱，宜自休止。', source: '高岛易断' },
      { category: '问嫁娶', content: '初居始位，爻曰"发蒙"，必在少年订婚。既多事变，罢婚可也。', source: '高岛易断' },
      { category: '问六甲', content: '初爻阴居阴位，生女，又恐生产有难。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 4,
    position: 2,
    judgments: [
      { category: '占问战征', content: '二爻以阳居阴，爻曰"包蒙"，有包括群阴之象。《象》曰"刚柔接也"，刚柔者两军也，"接"，接战也，"克家"，犹言克敌也。占例妇为财，子为福，既克敌军，又纳其财，并受其福，大吉。', source: '高岛易断' },
      { category: '问营商', content: '二上以两阳包三阴，一阳在内，一阳在外，有包罗财物，出贩外地之象，故曰"包蒙吉"。"纳妇"者，是必旅居纳妇也，有妇复有子。"克家"者，必其子能继父业也。', source: '高岛易断' },
      { category: '问功名', content: '想不在其身，而在其子也，故曰"子克家"。', source: '高岛易断' },
      { category: '问家宅', content: '曰"包蒙"，以《艮》包《坎》，是必山环水抱之地。曰"纳妇"，曰"克家"，是宅必有佳妇佳儿，克振家业，吉。', source: '高岛易断' },
      { category: '问婚姻', content: '玩爻辞，有二吉，明言有妇有子，吉莫大焉。', source: '高岛易断' },
      { category: '问六甲', content: '生男，主富贵。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 4,
    position: 3,
    judgments: [
      { category: '占问战征', content: '爻曰"勿用娶女"，女阴象，凡占书以女爻为财，金亦财也，言行军宜散财以容众，不宜敛财以取怨。如掳掠财物，必致师败身亡，曰"勿用"，戒之深矣。', source: '高岛易断' },
      { category: '问营商', content: '六三以阴居阳，阴内阳外，是必行商出外也。行商最忌贪色，男恋其色，女图其财，一入骗局，小则破财，大则伤身。《象》曰"行不顺也"，顺与慎音同义通，可不慎哉！', source: '高岛易断' },
      { category: '问家宅', content: '玩爻辞，所谓"牝鸡司晨，惟家之索"，是宜深戒。', source: '高岛易断' },
      { category: '问功名', content: '妇道通于臣道，见财忘义，必致声名破败，为女不贞，即为臣不忠也。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 4,
    position: 4,
    judgments: [
      { category: '占问战征', content: '行军宜深入显出，曰"困蒙"，是入阴险之地，而不能出也，故困。初爻之阳，六四距初间隔二爻，阳为实，故"远实"。是知救兵在远，不能及也。凶。', source: '高岛易断' },
      { category: '问营商', content: '经商之道，宜亨不宜困，宜通不宜吝。"实"资本也，"远实"则伤其资矣。困蒙之吝，其道穷矣。', source: '高岛易断' },
      { category: '问时运', content: '"蒙"，暗昧也，"困"，厄穷也，蒙而困，其终困矣。', source: '高岛易断' },
      { category: '问家宅', content: '据爻辞观之，家业困苦，宅地亦幽僻，《象》曰"独远实也"，是必孤村而乏邻居也。', source: '高岛易断' },
      { category: '问六甲', content: '生女。是女必少兄弟，故曰独。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 4,
    position: 5,
    judgments: [
      { category: '占问战征', content: '五互《坤》，辰在未，值井，弧矢九星在井东南，主伐叛。又东为子孙星，曰"童蒙"，是帅子弟以从军也，故吉。', source: '高岛易断' },
      { category: '问营商', content: '五为卦主，爻曰"童蒙"，是必店主尚在童年。五应二，正义云"委物以能"，谓委付事物于有能力之人，是委二也。盖五爻店主，自知年少，顺从二爻，以为经纪，故曰"童蒙吉"。', source: '高岛易断' },
      { category: '问功名', content: '年在"童蒙"，功未成，名未就，惟能顺听二爻师教，则成就未可量也，故曰"吉"。', source: '高岛易断' },
      { category: '问婚姻', content: '《蒙》上体艮，艮为少男，是以幼年定姻也，故曰"童蒙吉"。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 4,
    position: 6,
    judgments: [
      { category: '占问战征', content: '上辰在戌，上值奎，奎主库兵，禁不违时，故曰"利御寇"。', source: '高岛易断' },
      { category: '问营商', content: '商业一道，全在利用，又贵顺取。逆取为寇，顺取则为御寇。"上下"者，卖买两家，卖买和洽，则上下顺矣。吉。', source: '高岛易断' },
      { category: '问婚姻', content: '"击蒙"，马郑作"系蒙"，恰合月下老人红丝系足之意。《屯》卦两言"匪寇婚媾"，是佳偶为婚，怨偶为仇之谓也。利用御寇，必为佳偶。妇道贵顺，《象》曰"上下顺也"，是必家室和平也。吉。', source: '高岛易断' },
      { category: '问六甲', content: '生男。此男童年，必宜严教。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 5,
    position: 1,
    judgments: [
      { category: '占问战征', content: '爻曰"需于郊"，是必屯营于郊也。《坎》为险，为难，是必前进有险，故《象》曰"不犯难行也"。初为卦之始，知初次出兵；曰"恒"，曰"需"，知宜久待。恒而后进，必无咎也。', source: '高岛易断' },
      { category: '问功名', content: '卦属初爻，知为初出求名也。郊为草莽之地，"需于郊"。谓宜退居于野也。恒久也，"利用恒"，谓宜久待而后可利见也。《象》曰"不犯难行也"，谓其不涉于难；"未失常也"，谓其能守其恒，故无咎。', source: '高岛易断' },
      { category: '问营商', content: '行商之道，以恒久为利。"需于郊"，知必前途有险，暂以货物堆积于郊，以待时而行也。《象》曰"未失常也"，知货物无损失也。', source: '高岛易断' },
      { category: '问疾病', content: '"郊"者田野空旷之处，谓宜就野外，幽居以养病也。"无咎"，即病无害之谓也。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 5,
    position: 2,
    judgments: [
      { category: '占问战征', content: '《坎》为隐伏，玩爻象，谓宜伏兵于沙漠之地。或因间谍致误，小有挫折，终必吉也。', source: '高岛易断' },
      { category: '问营商', content: '二爻辰在寅，上值天江四星，石氏云，"天江明动，大水不具，津梁不通"，因之货物不能通运，故"需于沙"，沙，水岸也。虽小有口舌，无害商业，故"终吉"。', source: '高岛易断' },
      { category: '问时运', content: '沙从水从少，是少有水之处，不能通舟楫也。"需于沙"，犹言时运之不能也。二爻辰在寅，又上值箕，《诗纬》云："箕为天口，主出气"，小有言，是谗言也。然需以待之，故"终吉"。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 5,
    position: 3,
    judgments: [
      { category: '占问战征', content: '九三居内卦之终，逼近外卦，《坎》为寇，亦为灾，故曰"灾在外也"。有敌来寇者，谓寇至，有我自去招敌者，谓"致寇至。"必谨慎自持，先立于不败之地也。', source: '高岛易断' },
      { category: '问营商', content: '"泥"拘泥也。行商之业，宜流动，不宜拘泥，若拘泥不化，内有疑忌，遂致外生变端。慢藏海盗，即以致寇也，可不谨慎哉！', source: '高岛易断' },
      { category: '问功名', content: '爻曰"需于泥"，泥水际污泥也，需于此，则必将下流而难期上达矣。其不败也亦仅免焉。', source: '高岛易断' },
      { category: '问婚姻', content: '《易》以寇与婚媾并言，谓寇则必非婚媾，是怨偶也。"需于泥"，不进之象，于婚事则必不成。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 5,
    position: 4,
    judgments: []
  },
  {
    hexagramId: 5,
    position: 5,
    judgments: []
  },
  {
    hexagramId: 5,
    position: 4,
    judgments: [
      { category: '占问战征', content: '六四《需》于血，《坎》为血，是必兵刃交接，杀伤相当。出穴者，谓脱离险地。虽受伤而得出，故无大害。', source: '高岛易断' },
      { category: '问营商', content: '血者，财也。需于血，谓财物受损。出穴者，谓脱离困境。虽有小损，终能脱险。', source: '高岛易断' },
      { category: '问疾病', content: '是血症之象，宜速就医，可无大碍。', source: '高岛易断' },
      { category: '问六甲', content: '生男，恐有产厄，终无大害。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 5,
    position: 5,
    judgments: [
      { category: '占问战征', content: '九五居尊位，为《需》之主。需于酒食，是休养生息之象。贞吉，守正则吉。', source: '高岛易断' },
      { category: '问营商', content: '酒食者，宴乐之具。需于酒食，谓商业顺遂，可以安享其利。贞吉，守正经营则吉。', source: '高岛易断' },
      { category: '问功名', content: '位至九五，功名显达之象。需于酒食，谓功成名就，可以安享。', source: '高岛易断' },
      { category: '问家宅', content: '家道殷实，饮食丰足，吉。', source: '高岛易断' },
      { category: '问六甲', content: '生男，主贵。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 5,
    position: 6,
    judgments: [
      { category: '占问战征', content: '上六《需》之极，有不速之客三人来，谓有敌军突然来袭。敬之终吉，以礼待之，可以化险为夷。', source: '高岛易断' },
      { category: '问营商', content: '不速之客，谓有意想不到的买主或合作者。敬之终吉，以诚待之，必获利益。', source: '高岛易断' },
      { category: '问功名', content: '有贵人不期而至，当以礼待之，可得提携。', source: '高岛易断' },
      { category: '问家宅', content: '有客来访，主吉庆之事。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 6,
    position: 1,
    judgments: [
      { category: '占问战征', content: '初六《讼》之初，不永所事，谓不可长久争讼。小有言，终吉，虽有口舌之争，终能和解。', source: '高岛易断' },
      { category: '问营商', content: '商业上小有纠纷，不宜久缠，宜速和解，终吉。', source: '高岛易断' },
      { category: '问功名', content: '初爻位卑，不可与人争竞，宜退让为上。', source: '高岛易断' },
      { category: '问讼事', content: '讼不可久，宜速了结，终吉。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 6,
    position: 2,
    judgments: [
      { category: '占问战征', content: '九二刚中，有克敌之才。不克讼，归而逋，谓不可逞强争讼，宜退避自守。邑人三百户无眚，谓退守本邑，可保无虞。', source: '高岛易断' },
      { category: '问营商', content: '不可与人争利，宜退守本业，可保无失。', source: '高岛易断' },
      { category: '问功名', content: '不可强求，宜退守本分，可保无咎。', source: '高岛易断' },
      { category: '问讼事', content: '讼不胜，宜速罢讼，可免灾祸。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 6,
    position: 3,
    judgments: [
      { category: '占问战征', content: '六三阴柔，食旧德，谓守先人遗业，不与人争。贞厉，终吉，虽危无咎。', source: '高岛易断' },
      { category: '问营商', content: '宜守旧业，不可贪新谋大，终吉。', source: '高岛易断' },
      { category: '问功名', content: '承先人余荫，可得小官，不可大用。', source: '高岛易断' },
      { category: '问讼事', content: '宜和解，不可争讼，终吉。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 6,
    position: 4,
    judgments: [
      { category: '占问战征', content: '九四刚而不中，不克讼，复即命，谓争讼不胜，宜归正道。渝安贞，吉，改变初衷，安守正道则吉。', source: '高岛易断' },
      { category: '问营商', content: '商业争竞不利，宜改弦更张，安分经营，吉。', source: '高岛易断' },
      { category: '问功名', content: '不可强求，宜安分守己，可得平安。', source: '高岛易断' },
      { category: '问讼事', content: '讼不胜，宜罢讼和解，吉。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 6,
    position: 5,
    judgments: [
      { category: '占问战征', content: '九五居尊位，为《讼》之主。讼元吉，谓以公正决断争讼，大吉。', source: '高岛易断' },
      { category: '问营商', content: '商业纠纷可得公正解决，大吉。', source: '高岛易断' },
      { category: '问功名', content: '位至九五，功名显达，大吉。', source: '高岛易断' },
      { category: '问讼事', content: '讼必胜，大吉。', source: '高岛易断' },
      { category: '问六甲', content: '生男，主贵。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 6,
    position: 6,
    judgments: [
      { category: '占问战征', content: '上九《讼》之极，或锡之鞶带，终朝三褫之，谓虽有功赏，终将被夺，不足贵也。', source: '高岛易断' },
      { category: '问营商', content: '虽一时获利，终将散失，不足恃也。', source: '高岛易断' },
      { category: '问功名', content: '虽得高位，终将被贬，不足贵也。', source: '高岛易断' },
      { category: '问讼事', content: '讼虽胜，终有后患。', source: '高岛易断' },
      { category: '问六甲', content: '生男，恐不育。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 7,
    position: 1,
    judgments: [
      { category: '占问战征', content: '初六《师》之初，师出以律，否臧凶，谓出师必须有纪律，否则凶。', source: '高岛易断' },
      { category: '问营商', content: '商业必须有规矩，否则失败。', source: '高岛易断' },
      { category: '问功名', content: '初爻位卑，宜守规矩，不可妄动。', source: '高岛易断' },
      { category: '问家宅', content: '家规宜严，否则生乱。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 7,
    position: 2,
    judgments: [
      { category: '占问战征', content: '九二为《师》之主，刚中得位，王三锡命，谓有功受赏，大吉。', source: '高岛易断' },
      { category: '问营商', content: '经营得法，获利丰厚，大吉。', source: '高岛易断' },
      { category: '问功名', content: '功名显达，受朝廷重用。', source: '高岛易断' },
      { category: '问家宅', content: '家道兴隆，吉。', source: '高岛易断' },
      { category: '问六甲', content: '生男，主贵。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 7,
    position: 3,
    judgments: [
      { category: '占问战征', content: '六三阴柔不正，师或舆尸，凶，谓将帅无能，兵败身亡，凶。', source: '高岛易断' },
      { category: '问营商', content: '用人不当，经营失败，凶。', source: '高岛易断' },
      { category: '问功名', content: '才德不称位，有败无成。', source: '高岛易断' },
      { category: '问家宅', content: '家运不佳，防有丧亡。', source: '高岛易断' },
      { category: '问六甲', content: '生女，恐不育。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 7,
    position: 4,
    judgments: [
      { category: '占问战征', content: '六四《师》之左次，无咎，谓退守无害，量力而行。', source: '高岛易断' },
      { category: '问营商', content: '宜退守本业，不可冒进，无咎。', source: '高岛易断' },
      { category: '问功名', content: '宜退让，不可争进，无咎。', source: '高岛易断' },
      { category: '问家宅', content: '宜安居，不宜迁动。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 7,
    position: 5,
    judgments: [
      { category: '占问战征', content: '六五居尊位，田有禽，利执言，无咎，谓师出有名，战必胜。长子帅师，弟子舆尸，贞凶，谓任将当得其人。', source: '高岛易断' },
      { category: '问营商', content: '有利可图，但用人当慎。', source: '高岛易断' },
      { category: '问功名', content: '功名可得，但须任用贤能。', source: '高岛易断' },
      { category: '问家宅', content: '家运平稳，但须防小人。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 7,
    position: 6,
    judgments: [
      { category: '占问战征', content: '上六《师》之终，大君有命，开国承家，小人勿用，谓功成行赏，但小人不可重用。', source: '高岛易断' },
      { category: '问营商', content: '大功告成，获利丰厚，但用人当慎。', source: '高岛易断' },
      { category: '问功名', content: '功成名就，受封受赏。', source: '高岛易断' },
      { category: '问家宅', content: '家道兴隆，但须防小人。', source: '高岛易断' },
      { category: '问六甲', content: '生男，主贵。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 8,
    position: 1,
    judgments: [
      { category: '占问战征', content: '初六《比》之初，有孚比之，无咎，谓以诚信与人亲比，无咎。有孚盈缶，终来有它吉，谓诚心待人，终有意外之吉。', source: '高岛易断' },
      { category: '问营商', content: '以诚待客，生意兴隆，吉。', source: '高岛易断' },
      { category: '问功名', content: '以诚待人，可得贵人相助。', source: '高岛易断' },
      { category: '问家宅', content: '邻里和睦，吉。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 8,
    position: 2,
    judgments: [
      { category: '占问战征', content: '六二《比》之自内，贞吉，谓从内部亲比，守正则吉。', source: '高岛易断' },
      { category: '问营商', content: '内部团结，经营顺利，吉。', source: '高岛易断' },
      { category: '问功名', content: '得内部推举，功名可成。', source: '高岛易断' },
      { category: '问家宅', content: '家庭和睦，吉。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 8,
    position: 3,
    judgments: [
      { category: '占问战征', content: '六三《比》之匪人，谓所比非人，凶。', source: '高岛易断' },
      { category: '问营商', content: '所与匪人，经营不利，凶。', source: '高岛易断' },
      { category: '问功名', content: '所交非人，功名难成。', source: '高岛易断' },
      { category: '问家宅', content: '邻里不善，防有小人。', source: '高岛易断' },
      { category: '问六甲', content: '生女，恐有灾。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 8,
    position: 4,
    judgments: [
      { category: '占问战征', content: '六四外比之，贞吉，谓向外亲比贤人，守正则吉。', source: '高岛易断' },
      { category: '问营商', content: '与外商合作，经营顺利，吉。', source: '高岛易断' },
      { category: '问功名', content: '得外力相助，功名可成。', source: '高岛易断' },
      { category: '问家宅', content: '外邻和睦，吉。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 8,
    position: 5,
    judgments: [
      { category: '占问战征', content: '九五居尊位，显比，王用三驱，失前禽，邑人不诫，吉，谓王者宽大，不究既往，吉。', source: '高岛易断' },
      { category: '问营商', content: '经营宽大，客来如云，吉。', source: '高岛易断' },
      { category: '问功名', content: '功名显达，大吉。', source: '高岛易断' },
      { category: '问家宅', content: '家道宽厚，吉。', source: '高岛易断' },
      { category: '问六甲', content: '生男，主贵。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 8,
    position: 6,
    judgments: [
      { category: '占问战征', content: '上六《比》之无首，凶，谓亲比无主，无所适从，凶。', source: '高岛易断' },
      { category: '问营商', content: '无主见，经营失败，凶。', source: '高岛易断' },
      { category: '问功名', content: '无所依归，功名难成。', source: '高岛易断' },
      { category: '问家宅', content: '无主事者，家道衰败。', source: '高岛易断' },
      { category: '问六甲', content: '生女，恐不育。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 9,
    position: 1,
    judgments: [
      { category: '占问战征', content: '初九复自道，何其咎，吉，谓回归正道，无咎而吉。', source: '高岛易断' },
      { category: '问营商', content: '回归本业，经营顺利，吉。', source: '高岛易断' },
      { category: '问功名', content: '守正不移，功名可成。', source: '高岛易断' },
      { category: '问家宅', content: '家道正派，吉。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 9,
    position: 2,
    judgments: [
      { category: '占问战征', content: '九二牵复，吉，谓与人携手回归正道，吉。', source: '高岛易断' },
      { category: '问营商', content: '与人合作，经营顺利，吉。', source: '高岛易断' },
      { category: '问功名', content: '得人相助，功名可成。', source: '高岛易断' },
      { category: '问家宅', content: '邻里相助，吉。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 9,
    position: 3,
    judgments: [
      { category: '占问战征', content: '九三舆说辐，夫妻反目，谓车脱辐、夫妻不和，凶。', source: '高岛易断' },
      { category: '问营商', content: '合作破裂，经营不利，凶。', source: '高岛易断' },
      { category: '问功名', content: '内部不和，功名难成。', source: '高岛易断' },
      { category: '问家宅', content: '家庭不和，凶。', source: '高岛易断' },
      { category: '问六甲', content: '生男，恐有灾。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 9,
    position: 4,
    judgments: [
      { category: '占问战征', content: '六四有孚，血去惕出，无咎，谓以诚待人，可免灾祸。', source: '高岛易断' },
      { category: '问营商', content: '以诚待客，可避风险，无咎。', source: '高岛易断' },
      { category: '问功名', content: '以诚待人，可得平安。', source: '高岛易断' },
      { category: '问家宅', content: '诚心待人，家宅平安。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 9,
    position: 5,
    judgments: [
      { category: '占问战征', content: '九五有孚挛如，富以其邻，谓以诚信团结众人，共享富贵。', source: '高岛易断' },
      { category: '问营商', content: '诚信经营，财源广进，吉。', source: '高岛易断' },
      { category: '问功名', content: '诚信待人，功名显达。', source: '高岛易断' },
      { category: '问家宅', content: '家道富裕，邻里和睦。', source: '高岛易断' },
      { category: '问六甲', content: '生男，主贵。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 9,
    position: 6,
    judgments: [
      { category: '占问战征', content: '上九既雨既处，尚德载，妇贞厉，月几望，君子征凶，谓功德圆满，但不可再进，否则凶。', source: '高岛易断' },
      { category: '问营商', content: '经营已达顶峰，不可再贪，否则有失。', source: '高岛易断' },
      { category: '问功名', content: '功名已极，不可再进，否则有祸。', source: '高岛易断' },
      { category: '问家宅', content: '家道已盛，宜守不宜进。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 10,
    position: 1,
    judgments: [
      { category: '占问功名', content: '宜安居乐道，待时运亨通，往无不利。', source: '高岛易断' },
      { category: '问营商', content: '直守旧业，久后必获利。', source: '高岛易断' },
      { category: '问谋事', content: '宜缓待，不宜急迫。', source: '高岛易断' },
      { category: '问战征', content: '宜独行潜往，刺探敌情，无咎。', source: '高岛易断' },
      { category: '问家宅', content: '"福履绥之"，门庭吉祥。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 10,
    position: 2,
    judgments: [
      { category: '占问功名', content: '有高尚其志之象。', source: '高岛易断' },
      { category: '问营商', content: '一时物价平平，可得微利。', source: '高岛易断' },
      { category: '问出行', content: '平稳，获吉。', source: '高岛易断' },
      { category: '问终身', content: '有恭敬修身之意。', source: '高岛易断' },
      { category: '问家宅', content: '有分析财产之意。', source: '高岛易断' },
      { category: '问失物', content: '有意外损耗之虑。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 10,
    position: 3,
    judgments: [
      { category: '占问家宅', content: '有暗昧不明，以小凌大之象。', source: '高岛易断' },
      { category: '问商业', content: '有被人欺弄，急切不能脱售之虑。', source: '高岛易断' },
      { category: '问战征', content: '宜退守，不宜进攻，妄动者凶。', source: '高岛易断' },
      { category: '问行人', content: '恐中途遇险。', source: '高岛易断' },
      { category: '问失物', content: '就近寻觅，自得。', source: '高岛易断' },
      { category: '问六甲', content: '生男，但婴儿防有残疾。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 10,
    position: 4,
    judgments: [
      { category: '占问时运', content: '以温和接人，以笃实当事，虽临危险，终得免祸，是气运平稳之时也。', source: '高岛易断' },
      { category: '问商业', content: '不宜急切脱货，宜谨慎耐守，终获利益。', source: '高岛易断' },
      { category: '问战征', content: '宜临危固守，遇救得捷，可转败为胜。', source: '高岛易断' },
      { category: '问六甲', content: '平稳得男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 10,
    position: 5,
    judgments: [
      { category: '占问时运', content: '前苦后甘，目下正当披云见日之时，犹宜毋忘曩时苦境，兢兢业业，斯能长保其富也。', source: '高岛易断' },
      { category: '问商业', content: '宜和衷共济，有货不宜急售，久后必得厚利。', source: '高岛易断' },
      { category: '问失物', content: '有不待寻而自得之象。', source: '高岛易断' },
      { category: '问官途', content: '目下已得升迁，惟宜谨慎，斯可永保。', source: '高岛易断' },
      { category: '问疾病', content: '危而后安。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 10,
    position: 6,
    judgments: [
      { category: '占问时运', content: '目下正得安乐之时，其人必素行无亏，晚运亨通，福寿双全，大吉也。', source: '高岛易断' },
      { category: '问商业', content: '往返经营，俱得大利。', source: '高岛易断' },
      { category: '问家宅', content: '祸福无门，惟人自招，若能积善，必有余庆。', source: '高岛易断' },
      { category: '问疾病', content: '恐天年有限。', source: '高岛易断' },
      { category: '问失物', content: '不寻自得。', source: '高岛易断' },
      { category: '问六甲', content: '必产贵子。', source: '高岛易断' },
      { category: '问战征', content: '大获胜捷，奏凯而旋。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 11,
    position: 1,
    judgments: [
      { category: '占问时运', content: '有因人成事之象。', source: '高岛易断' },
      { category: '问家宅', content: '有家室团圆，人口平安之吉。', source: '高岛易断' },
      { category: '问营商', content: '得主伙合志，货财汇萃之象。', source: '高岛易断' },
      { category: '问功名', content: '有逐渐升迁之喜。', source: '高岛易断' },
      { category: '问战征', content: '以进攻获胜。', source: '高岛易断' },
      { category: '问失物', content: '宜于丛草处寻觅。', source: '高岛易断' },
      { category: '问六甲', content: '初胎者生女，三四胎则男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 11,
    position: 2,
    judgments: [
      { category: '占问时运', content: '目下正当功名显达之时，可以远游海外，创兴事业。', source: '高岛易断' },
      { category: '问仕途', content: '有奉使远行，或从事军征之兆，均获吉也。', source: '高岛易断' },
      { category: '问商业', content: '利在行商，贩运外物。', source: '高岛易断' },
      { category: '问失物', content: '定坠落水中，恐难寻得。', source: '高岛易断' },
      { category: '问疾病', content: '不吉。', source: '高岛易断' },
      { category: '问家宅', content: '用人宜宽，处事宜决，不可专信仆从，致损家业。', source: '高岛易断' },
      { category: '问战征', content: '有怀柔远人，征伐不庭，疆宇日辟之势。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 11,
    position: 3,
    judgments: [
      { category: '占问时运', content: '谨慎者昌，逸欲者败，最宜留意。', source: '高岛易断' },
      { category: '问商业', content: '现虽失意，后必大利。', source: '高岛易断' },
      { category: '问战征', content: '须防敌兵埋伏，宜固守，不宜进攻。', source: '高岛易断' },
      { category: '问失物', content: '不久即得。', source: '高岛易断' },
      { category: '问生产', content: '虽危无咎，必生福泽之儿。', source: '高岛易断' },
      { category: '问家业', content: '宜谨守先业，可以永保富也。', source: '高岛易断' },
      { category: '问疾病', content: '少者无咎，老者大限有阻。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 11,
    position: 4,
    judgments: [
      { category: '占问时运', content: '喜得朋友同心相孚，诸事可谋。', source: '高岛易断' },
      { category: '问商业', content: '外则场面甚好，内实空虚，全赖同业相助，可以成事。', source: '高岛易断' },
      { category: '问战征', content: '粮饷缺乏，当劫掠敌粮，以供军需。众心坚固，有胜无败。', source: '高岛易断' },
      { category: '问家业', content: '本一富家，目下外强内弱，幸亲戚邻里，皆得有无相通，不忧匮乏。', source: '高岛易断' },
      { category: '问失物', content: '主遗落比邻之家，问之即得。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 11,
    position: 5,
    judgments: [
      { category: '占问时运', content: '目下亨通，宜谦虚柔顺，万事皆吉。', source: '高岛易断' },
      { category: '问商业', content: '宜贸达海外。吉。', source: '高岛易断' },
      { category: '问家宅', content: '得内助之贤。', source: '高岛易断' },
      { category: '问婚嫁', content: '宜远嫁远娶，吉。', source: '高岛易断' },
      { category: '问六甲', content: '主生贵女。', source: '高岛易断' },
      { category: '问疾病', content: '必得神佑，吉。', source: '高岛易断' },
      { category: '问失物', content: '拾者必自来归还。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 11,
    position: 6,
    judgments: [
      { category: '占问时运', content: '目下气运颠倒，宜谨慎自守，须防小人播弄。', source: '高岛易断' },
      { category: '问商业', content: '宜就小做，以待时运。', source: '高岛易断' },
      { category: '问战征', content: '攻夺城地，必胜。', source: '高岛易断' },
      { category: '问家宅', content: '防有颠覆破败，宜牢稳守业。', source: '高岛易断' },
      { category: '问生产', content: '生女。', source: '高岛易断' },
      { category: '问失物', content: '恐难复得。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 12,
    position: 1,
    judgments: [
      { category: '占问时运', content: '吉，宜以合伙谋事。', source: '高岛易断' },
      { category: '问营商', content: '于新立商业，用人宜慎。', source: '高岛易断' },
      { category: '问战征', content: '当牵左右营，合队并进。吉。', source: '高岛易断' },
      { category: '问家宅', content: '主有亲戚同居，吉。', source: '高岛易断' },
      { category: '问疾病', content: '恐患传染之症，然无害也。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' },
      { category: '问失物', content: '可得。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 12,
    position: 2,
    judgments: [
      { category: '占问时运', content: '目下顺适，能以宽容待人，万事皆吉。', source: '高岛易断' },
      { category: '问商业', content: '买卖皆利。', source: '高岛易断' },
      { category: '问讼事', content: '防有贿赂伪造等弊，始审或不利，上控则吉。', source: '高岛易断' },
      { category: '问家宅', content: '家口平安，年老家长，或恐有疾，亦无害也。', source: '高岛易断' },
      { category: '问战征', content: '必可获胜，主将或有小害。', source: '高岛易断' },
      { category: '问失物', content: '须就包裹内见之，必得。', source: '高岛易断' },
      { category: '问生产', content: '得女，产母有疾，无妨。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 12,
    position: 3,
    judgments: [
      { category: '占问时运', content: '目下正当好运将来之际，宜谨慎自守，以避羞辱。', source: '高岛易断' },
      { category: '问商业', content: '防内中暗有耗失，外面仍然瞒盖，以用人不当也。', source: '高岛易断' },
      { category: '问家宅', content: '恐内行不修，有墙茨之羞。又不宜以妾作妻。', source: '高岛易断' },
      { category: '问战征', content: '防为敌军所困。', source: '高岛易断' },
      { category: '问疾病', content: '防以寒包热之症，恐药不对症，宜急看良医。', source: '高岛易断' },
      { category: '问讼事', content: '恐辨护士，不得其当。', source: '高岛易断' },
      { category: '问失物', content: '防窃者含羞自尽，反致多事。', source: '高岛易断' },
      { category: '问行人', content: '防其人恋女色，一时未归。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 12,
    position: 4,
    judgments: [
      { category: '占问时运', content: '目下已得盛运，随意谋事，必获利益。', source: '高岛易断' },
      { category: '问商业', content: '大得转机，但须立定意志，审度市面，从前所失，今可复得，且获盈余。', source: '高岛易断' },
      { category: '问家宅', content: '宅运已转，吉。', source: '高岛易断' },
      { category: '问战征', content: '命将出征，大吉。', source: '高岛易断' },
      { category: '问疾病', content: '命根牢固，无害。', source: '高岛易断' },
      { category: '问失物', content: '必夹入在用品物中，寻之即得。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 12,
    position: 5,
    judgments: [
      { category: '占问时运', content: '目下渐入佳境，惟安而不忘危，百事皆吉。', source: '高岛易断' },
      { category: '问商业', content: '恰当绝好机会，但须改用伙友，谨慎做去，必获利益。', source: '高岛易断' },
      { category: '问家宅', content: '祖业深厚，吉。', source: '高岛易断' },
      { category: '问战征', content: '暂宜休战。', source: '高岛易断' },
      { category: '问疾病', content: '有碍。', source: '高岛易断' },
      { category: '问讼事', content: '和。', source: '高岛易断' },
      { category: '问失物', content: '防难复得。', source: '高岛易断' },
      { category: '问行人', content: '不利。', source: '高岛易断' },
      { category: '问生产', content: '大人无碍，小人难保。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 12,
    position: 6,
    judgments: [
      { category: '占问时运', content: '亨通。', source: '高岛易断' },
      { category: '问商业', content: '春夏不利，秋冬大吉。', source: '高岛易断' },
      { category: '问家宅', content: '迁居大吉，老宅不利。', source: '高岛易断' },
      { category: '问讼事', content: '即日可结。', source: '高岛易断' },
      { category: '问战征', content: '小败大胜。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' },
      { category: '问失物', content: '即得。', source: '高岛易断' },
      { category: '问疾病', content: '即愈，但复发可虑。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 13,
    position: 1,
    judgments: [
      { category: '占问时运', content: '目下平顺，宜经营出外，利。', source: '高岛易断' },
      { category: '问家宅', content: '一门之内，雍雍和睦，无咎。', source: '高岛易断' },
      { category: '问商业', content: '利行商，不利坐贾。', source: '高岛易断' },
      { category: '问疾病', content: '宜避地调养，无碍。', source: '高岛易断' },
      { category: '问讼事', content: '防有惩役之患，宜预出躲避，可以免咎。', source: '高岛易断' },
      { category: '问失物', content: '须于门外寻觅。', source: '高岛易断' },
      { category: '问六甲', content: '即时可产，得男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 13,
    position: 2,
    judgments: [
      { category: '占问时运', content: '目下未佳，虽有相助，而相忌者多，未能百事遂意。', source: '高岛易断' },
      { category: '问商业', content: '利于大宗买卖，惟须出纳宜留意。得利。', source: '高岛易断' },
      { category: '问讼事', content: '不利。', source: '高岛易断' },
      { category: '问家宅', content: '以勤俭起家，得长子之力。', source: '高岛易断' },
      { category: '问疾病', content: '有魂归宗庙之象，凶。', source: '高岛易断' },
      { category: '问行人', content: '即返。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' },
      { category: '问失物', content: '被拾者藏匿，不见还也。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 13,
    position: 3,
    judgments: [
      { category: '占问时运', content: '目下直潜伏，三岁后方可出而谋事。', source: '高岛易断' },
      { category: '问商业', content: '宜开山林，三年后大可获利。', source: '高岛易断' },
      { category: '问家宅', content: '防有盗贼窃伺。', source: '高岛易断' },
      { category: '问战征', content: '须防敌军埋伏。', source: '高岛易断' },
      { category: '问讼事', content: '虑有意外葛藤，一时不了。', source: '高岛易断' },
      { category: '问失物', content: '须于丛草中寻之，或山上草中。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 13,
    position: 4,
    judgments: [
      { category: '占问时运', content: '目下直退守弗动，吉。', source: '高岛易断' },
      { category: '问商业', content: '宜垄断货物，待价弗售，后必获利。', source: '高岛易断' },
      { category: '问家宅', content: '宜修葺墙垣，吉。', source: '高岛易断' },
      { category: '问战征', content: '直坚筑营垒，防敌袭击。', source: '高岛易断' },
      { category: '问讼事', content: '今虽不直，后反得胜。', source: '高岛易断' },
      { category: '问失物', content: '久后可得。', source: '高岛易断' },
      { category: '问疾病', content: '虽凶无害。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 13,
    position: 5,
    judgments: [
      { category: '占问时运', content: '目下正当欢乐之时，从前苦志，今得遂愿。', source: '高岛易断' },
      { category: '问商业', content: '虽小有挫折，终获大利。', source: '高岛易断' },
      { category: '问家宅', content: '防有惊惶之虑，然终得平和也。', source: '高岛易断' },
      { category: '问疾病', content: '先危后安。', source: '高岛易断' },
      { category: '问讼事', content: '须请大好辩护士，方能得直。', source: '高岛易断' },
      { category: '问行人', content: '防中途有阻，须缓得归。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 13,
    position: 6,
    judgments: [
      { category: '占问时运', content: '目下顺适，诸事无所障碍，但宜在闲散之地。', source: '高岛易断' },
      { category: '问商业', content: '宜立业于市尘之外，无忧耗损，一时亦未能获大利益。', source: '高岛易断' },
      { category: '问战征', content: '宜在荒地屯营。', source: '高岛易断' },
      { category: '问失物', content: '于郊外觅之。', source: '高岛易断' },
      { category: '问讼事', content: '恐难得直。', source: '高岛易断' },
      { category: '问家宅', content: '平顺无灾。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 14,
    position: 1,
    judgments: [
      { category: '占问时运', content: '目下尚未交盛运，须刻苦自勉，待好运到来，自然得利。', source: '高岛易断' },
      { category: '问商业', content: '想是基业初创，百货未曾交办，须要谨守其初，自得无害而有利也。', source: '高岛易断' },
      { category: '问战征', content: '必是初次动众，尚未交锋，须要慎始，自无后患。', source: '高岛易断' },
      { category: '问家宅', content: '必是新富之家，艰难创业，自得后福。', source: '高岛易断' },
      { category: '问讼事', content: '尚未投告，还宜和息为善。', source: '高岛易断' },
      { category: '问行人', content: '尚未有归志也。', source: '高岛易断' },
      { category: '问六甲', content: '生男，产期尚远。', source: '高岛易断' },
      { category: '问失物', content: '一时难以即得，待久可有。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 14,
    position: 2,
    judgments: [
      { category: '占问时运', content: '目下正交好运，一路顺风，无往不利。', source: '高岛易断' },
      { category: '问商业', content: '贩运货物，贸迁有无，极之域外通商，无不获利。', source: '高岛易断' },
      { category: '问战征', content: '利于陆战，率军直进，攻取皆捷。', source: '高岛易断' },
      { category: '问家宅', content: '平安无咎，若谋高迁，更吉。', source: '高岛易断' },
      { category: '问疾病', content: '宜出外就医，吉。', source: '高岛易断' },
      { category: '问行人', content: '因在外谋事，诸多利益，一时未归。', source: '高岛易断' },
      { category: '问讼事', content: '得胜。', source: '高岛易断' },
      { category: '问六甲', content: '生男，逾月则生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 14,
    position: 3,
    judgments: [
      { category: '占问时运', content: '目下正当显荣之时，利为公，不利营私。', source: '高岛易断' },
      { category: '问仕途', content: '恰得宠任荣赏之象，若取赂必败，宜慎。', source: '高岛易断' },
      { category: '问商业', content: '不特得利，且可得名。', source: '高岛易断' },
      { category: '问战征', content: '有犒赏三军之象，获得胜仗，恐于兵众有损。', source: '高岛易断' },
      { category: '问家宅', content: '有喜庆宴会之象，家食丰富，但使用婢仆中，须当留意。', source: '高岛易断' },
      { category: '问讼事', content: '若为饮食起衅，恐难得直。', source: '高岛易断' },
      { category: '问六甲', content: '生男。主贵，但幼小时，防多疾厄。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 14,
    position: 4,
    judgments: [
      { category: '占问时运', content: '六爻已值其四，是目下已到极盛之会，当持盈保泰，知止不辱。', source: '高岛易断' },
      { category: '问商业', content: '已得利益，毋过贪求，斯无害。', source: '高岛易断' },
      { category: '问家宅', content: '必苟完苟美，如卫公子荆之居室，则善矣，否则未免盈满有损。', source: '高岛易断' },
      { category: '问疾病', content: '防有膨胀之患。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' },
      { category: '问讼事', content: '得明决之才，判断得直。', source: '高岛易断' },
      { category: '问失物', content: '在竹筐内寻之。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 14,
    position: 5,
    judgments: [
      { category: '占问时运', content: '必其平生为人所信服，且有威望，晚运亨佳之会也。', source: '高岛易断' },
      { category: '问商业', content: '一时众商信服，货物通行，可永保其富有也。', source: '高岛易断' },
      { category: '问战征', content: '众军踊跃，威令远扬，尤宜警备，以防敌军。', source: '高岛易断' },
      { category: '问家宅', content: '主一家和睦，恐有盗窃，宜备防也。', source: '高岛易断' },
      { category: '问失物', content: '所窃者即信用之人，以威逼之，必交还也。但恐得而复失。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' },
      { category: '问讼事', content: '被告者必畏威而和。', source: '高岛易断' },
      { category: '问行人', content: '如期而归。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 14,
    position: 6,
    judgments: [
      { category: '占问时运', content: '目下一路好运，万事皆吉。', source: '高岛易断' },
      { category: '问商业', content: '百货皆获利。', source: '高岛易断' },
      { category: '问家宅', content: '一门福庆。', source: '高岛易断' },
      { category: '问战征', content: '即此一战，军功大捷，可罢师也。', source: '高岛易断' },
      { category: '问行人', content: '即归。', source: '高岛易断' },
      { category: '问疾病', content: '默得神佑，吉。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' },
      { category: '问失物', content: '就高处寻觅，可得。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 16,
    position: 1,
    judgments: [
      { category: '占问时运', content: '初运颇佳，但一经得意，便尔夸张，以致穷也。', source: '高岛易断' },
      { category: '问商业', content: '初次必得利，不可过贪。', source: '高岛易断' },
      { category: '问家宅', content: '恐鸟啼猿啸，致有怪异之惊，凶。', source: '高岛易断' },
      { category: '问疾病', content: '不利。', source: '高岛易断' },
      { category: '问讼事', content: '鸣冤不直，宜自罢讼。', source: '高岛易断' },
      { category: '问失物', content: '不得。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 16,
    position: 2,
    judgments: [
      { category: '占问时运', content: '其人品行高尚，不随世为隆污，吉。', source: '高岛易断' },
      { category: '问商业', content: '能决定己志，不为奸商摇惑，贩运快速，获利。', source: '高岛易断' },
      { category: '问家宅', content: '主家者宜严正持之，凡非人来往，速宜斥绝。吉。', source: '高岛易断' },
      { category: '问战征', content: '所谓守之如山，发之如火，能审机也。', source: '高岛易断' },
      { category: '问疾病', content: '新疾即愈，夙疾即亡，终日间也。', source: '高岛易断' },
      { category: '问六甲', content: '生女，即产。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 16,
    position: 3,
    judgments: [
      { category: '占问时运', content: '目下运非不佳，在自己作为不正，是以有悔。', source: '高岛易断' },
      { category: '问商业', content: '能窥探商情，为商家之能事，然一得消息，买卖宜决，若一迟疑，便落人后。', source: '高岛易断' },
      { category: '问家宅', content: '须防窃盗，宜速警备。', source: '高岛易断' },
      { category: '问失物', content: '速寻则得，迟则无矣。', source: '高岛易断' },
      { category: '问讼事', content: '宜速了结。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 16,
    position: 4,
    judgments: [
      { category: '占问时运', content: '目下正大运方通。', source: '高岛易断' },
      { category: '问商业', content: '会萃众货，大得利也。', source: '高岛易断' },
      { category: '问家宅', content: '门庭豫顺，得财得福，大有之家。', source: '高岛易断' },
      { category: '问功名', content: '即卜弹冠之庆。', source: '高岛易断' },
      { category: '问讼事', content: '由此罢讼，两造豫悦。', source: '高岛易断' },
      { category: '问行人', content: '必主满载归来。', source: '高岛易断' },
      { category: '问出行', content: '由此前行，一路顺风，大得喜悦，可"勿疑"也。', source: '高岛易断' },
      { category: '问六甲', content: '生男，易长易成，且主贵。', source: '高岛易断' },
      { category: '问失物', content: '即得。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 16,
    position: 5,
    judgments: [
      { category: '占问时运', content: '知其人本尊贵，因素性柔弱，不能自振。', source: '高岛易断' },
      { category: '问商业', content: '其基业甚好，因用人不当，钱财落他人之手，几致亏耗。', source: '高岛易断' },
      { category: '问家宅', content: '恐被借居者侵占，业主反不得自主。', source: '高岛易断' },
      { category: '问战征', content: '以偏将擅权，主帅失威，虽未丧师，亦幸免也。', source: '高岛易断' },
      { category: '问疾病', content: '是带病延年之症。', source: '高岛易断' },
      { category: '问六甲', content: '生男，必有病。', source: '高岛易断' },
      { category: '问失物', content: '可得。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 16,
    position: 6,
    judgments: [
      { category: '占问时运', content: '目下歹运已极，好运将来，翻然振作，大有可为。', source: '高岛易断' },
      { category: '问商业', content: '宜作变计，改旧从新，必得利益。', source: '高岛易断' },
      { category: '问家宅', content: '老宅不利，或迁居，或改造，吉。', source: '高岛易断' },
      { category: '问战征', content: '宜别遣主帅，改旗易辙，乃可得胜；或更就别路进兵。', source: '高岛易断' },
      { category: '问讼事', content: '宜罢讼和好，无咎。', source: '高岛易断' },
      { category: '问六甲', content: '逾月可产，得女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 17,
    position: 1,
    judgments: [
      { category: '占问时运', content: '目下正当换运之时，交入新运，一动便佳，尤利出门。', source: '高岛易断' },
      { category: '问商业', content: '货物当贩运出外，得利。', source: '高岛易断' },
      { category: '问家宅', content: '当以修造吉，或迁居出外，更利。', source: '高岛易断' },
      { category: '问战征', content: '击东者变而击西，击南者变而攻北，吉。', source: '高岛易断' },
      { category: '问疾病', content: '恐药不对症，宜改变药饵，乃吉。或于远方求医，更利。', source: '高岛易断' },
      { category: '问失物', content: '门外寻之，得。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 17,
    position: 2,
    judgments: [
      { category: '占问时运', content: '目下气运颠倒，宜自审慎。', source: '高岛易断' },
      { category: '问商业', content: '有贪小失大之惧。', source: '高岛易断' },
      { category: '问家宅', content: '阴阳倒置，有女子小人弄权，反致家主受制之象。', source: '高岛易断' },
      { category: '问战征', content: '只能捉捕敌兵，未获斩将拔旗之捷。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' },
      { category: '问失物', content: '小品可得，大件必失。', source: '高岛易断' },
      { category: '问婚嫁', content: '恐非良缘。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 17,
    position: 3,
    judgments: [
      { category: '占问时运', content: '目下交正运，求财求名，无不如意。', source: '高岛易断' },
      { category: '问商业', content: '小往大来，必得利益。', source: '高岛易断' },
      { category: '问战征', content: '主生擒敌将，必得大捷。', source: '高岛易断' },
      { category: '问家宅', content: '家道丰富，但防小儿辈有灾。', source: '高岛易断' },
      { category: '问疾病', content: '大人无妨，小人恐有不利。', source: '高岛易断' },
      { category: '问六甲', content: '恐生而不育。', source: '高岛易断' },
      { category: '问失物', content: '得。', source: '高岛易断' },
      { category: '问婚嫁', content: '主结高亲。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 17,
    position: 4,
    judgments: [
      { category: '占问时运', content: '目下有凶有吉，利在单月，不利双月，明年则吉。', source: '高岛易断' },
      { category: '问商业', content: '获利后，防有意外之祸，必俟辨明方可。', source: '高岛易断' },
      { category: '问家宅', content: '或新买，或新造，皆不吉。', source: '高岛易断' },
      { category: '问战征', content: '小胜后，防大败。', source: '高岛易断' },
      { category: '问疾病', content: '先凶后吉。', source: '高岛易断' },
      { category: '问讼事', content: '始审凶，上控则无咎。', source: '高岛易断' },
      { category: '问失物', content: '一时难觅，待后方见。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 17,
    position: 5,
    judgments: [
      { category: '占问时运', content: '目下处盛运，万事获吉。', source: '高岛易断' },
      { category: '问商业', content: '以其货物嘉美，获利百倍。', source: '高岛易断' },
      { category: '问家宅', content: '必是积善之家，众咸信从，为一乡之望也。', source: '高岛易断' },
      { category: '问战征', content: '军众同心，必获胜捷，吉。', source: '高岛易断' },
      { category: '问婚嫁', content: '百年好合，大吉。', source: '高岛易断' },
      { category: '问讼事', content: '和好。', source: '高岛易断' },
      { category: '问疾病', content: '吉。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 17,
    position: 6,
    judgments: [
      { category: '占问时运', content: '目下左支右绌，不甚如意。', source: '高岛易断' },
      { category: '问商业', content: '坚固结实，稳当可做，但未能事事舒展。', source: '高岛易断' },
      { category: '问家宅', content: '恐防范约束过严，家人怨苦。', source: '高岛易断' },
      { category: '问疾病', content: '祷之则吉。', source: '高岛易断' },
      { category: '问婚嫁', content: '有赤绳系臂之缘。', source: '高岛易断' },
      { category: '问讼事', content: '恐有桎梏困系之患。', source: '高岛易断' },
      { category: '问失物', content: '是自己包裹藏之，未尝失也。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 18,
    position: 1,
    judgments: [
      { category: '占问时运', content: '好运初交，克勤克俭，克光前业，吉。', source: '高岛易断' },
      { category: '问商业', content: '旧业重兴，必多获利。', source: '高岛易断' },
      { category: '问家宅', content: '想是祖先旧宅，当改造重从，大利。', source: '高岛易断' },
      { category: '问战征', content: '如勾践复吴，子胥伐楚，必获重兴。吉。', source: '高岛易断' },
      { category: '问讼事', content: '前不得直，复宜上控，无咎。', source: '高岛易断' },
      { category: '问疾病', content: '虽危无妨，若无子者，占此不利。', source: '高岛易断' },
      { category: '问婚嫁', content: '佳儿佳妇，吉。', source: '高岛易断' },
      { category: '问六甲', content: '生男，必能兴家，吉。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 18,
    position: 2,
    judgments: [
      { category: '占问时运', content: '目下贵将顺调剂，不可草率。', source: '高岛易断' },
      { category: '问商业', content: '防有旧债积弊等事，宜宽缓调处。', source: '高岛易断' },
      { category: '问家宅', content: '恐有母党擅权启衅，宜忍耐善处。', source: '高岛易断' },
      { category: '问战征', content: '防有阴险，不可直进。', source: '高岛易断' },
      { category: '问疾病', content: '壮年防是疟母痞块等疾，小儿或是胎气不足，宜服柔和之剂。', source: '高岛易断' },
      { category: '问行人', content: '在半途，后日可归。', source: '高岛易断' },
      { category: '问失物', content: '得。', source: '高岛易断' },
      { category: '问婚姻', content: '当得佳妇。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 18,
    position: 3,
    judgments: [
      { category: '占问时运', content: '目下直痛革前非，纵小有挫折，终得有济。', source: '高岛易断' },
      { category: '问商业', content: '宜重兴旧业，改立章程，或有小失，必得大利。', source: '高岛易断' },
      { category: '问家宅', content: '恐栋宇年久，多致蛀腐，毋惜小费，急宜改造。', source: '高岛易断' },
      { category: '问战征', content: '刚武直进，未免小败，然必无大害。', source: '高岛易断' },
      { category: '问失物', content: '得则必得，防有小小口舌之灾。', source: '高岛易断' },
      { category: '问六甲', content: '生男，但生下小孩，未免小有疾厄。', source: '高岛易断' },
      { category: '问疾病', content: '无妨。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 18,
    position: 4,
    judgments: [
      { category: '占问时运', content: '运亦平常，但一味因循，终致自误。', source: '高岛易断' },
      { category: '问商业', content: '徒知守常，不知革弊，长此以往，难以得利。', source: '高岛易断' },
      { category: '问战征', content: '威不肃，令不严，未可前往也，往必见败。', source: '高岛易断' },
      { category: '问家宅', content: '父业虽裕，敝败已深，难保其往也。', source: '高岛易断' },
      { category: '问疾病', content: '外形尚裕，内患已深，不急图治，后必莫救。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 18,
    position: 5,
    judgments: [
      { category: '占问时运', content: '虽门祚衰薄，能自振作，自足立身扬名。', source: '高岛易断' },
      { category: '问商业', content: '旧业虽不甚佳，此番从新改作，必能获名获利。', source: '高岛易断' },
      { category: '问家宅', content: '祖遗之产不厚，幸能扩充前业，必至光大门楣。', source: '高岛易断' },
      { category: '问战征', content: '能克复城池，军声远播，吉。', source: '高岛易断' },
      { category: '问疾病', content: '当延名医治之。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' },
      { category: '问嫁娶', content: '定是名门贵族。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 18,
    position: 6,
    judgments: [
      { category: '占问时运', content: '宜以退为进。', source: '高岛易断' },
      { category: '问商业', content: '目下货价，必将逐渐增高，不必急售。得利。', source: '高岛易断' },
      { category: '问家宅', content: '宜傍高阜之地，吉。', source: '高岛易断' },
      { category: '问疾病', content: '卦为归魂，恐天年有阻。', source: '高岛易断' },
      { category: '问婚嫁', content: '必是女贞男良，天缘巧合。', source: '高岛易断' },
      { category: '问战征', content: '想已值战胜凯旋之时。', source: '高岛易断' },
      { category: '问出行', content: '宜行商，不宜求名。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 19,
    position: 1,
    judgments: [
      { category: '占问时运', content: '目下新运初交，能守其正，行无不利。', source: '高岛易断' },
      { category: '问商业', content: '时当新货初出，市价平正，尽可贩行，无不如志。吉。', source: '高岛易断' },
      { category: '问家宅', content: '必是忠厚中正之家，现下适有吉事临门。大利。', source: '高岛易断' },
      { category: '问战征', content: '初次临阵，宜从大路进军。吉。', source: '高岛易断' },
      { category: '问疾病', content: '病是初起，正气充足，可保即愈。', source: '高岛易断' },
      { category: '问婚嫁', content: '门户相当，品行端正，佳偶也。', source: '高岛易断' },
      { category: '问讼事', content: '一经临审，即可了结。', source: '高岛易断' },
      { category: '问六甲', content: '生男，临盆有喜。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 19,
    position: 2,
    judgments: [
      { category: '占问时运', content: '目下正佳，又得贵人照应，大吉。', source: '高岛易断' },
      { category: '问商业', content: '初次既获吉，二次更利。', source: '高岛易断' },
      { category: '问家宅', content: '有福星照临之象，前后皆吉。', source: '高岛易断' },
      { category: '问战征', content: '再接再励，所向皆吉，但防偏裨中，有不从令者，以致败事。', source: '高岛易断' },
      { category: '问婚嫁', content: '咸利，惟属羊者最佳。', source: '高岛易断' },
      { category: '问讼事', content: '却不致败，但一时未得顺从。', source: '高岛易断' },
      { category: '问六甲', content: '生男，但未产也。', source: '高岛易断' },
      { category: '问行人', content: '在外者归期未定。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 19,
    position: 3,
    judgments: [
      { category: '占问时运', content: '运既不佳，行亦不正，幸能知悔，后运可望。', source: '高岛易断' },
      { category: '问商业', content: '店基不得其位，惟贩运糖业则佳。', source: '高岛易断' },
      { category: '问家宅', content: '屋运不佳，宜迁徙为吉。', source: '高岛易断' },
      { category: '问战征', content: '屯营地位不当，迁营则吉。', source: '高岛易断' },
      { category: '问疾病', content: '药不对症，宜进苦辛之剂，无咎。', source: '高岛易断' },
      { category: '问婚姻', content: '不合。', source: '高岛易断' },
      { category: '问行人', content: '外不得利，近时可归。', source: '高岛易断' },
      { category: '问失物', content: '可得。', source: '高岛易断' },
      { category: '问六甲', content: '生女，恐难长养。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 19,
    position: 4,
    judgments: [
      { category: '占问时运', content: '好运已至，无不得当，有吉无凶。', source: '高岛易断' },
      { category: '问商业', content: '目下贩运，正当其时，无往不利。', source: '高岛易断' },
      { category: '问家宅', content: '宅位得当，家业兴隆，无咎。', source: '高岛易断' },
      { category: '问战征', content: '其时已至，正可临敌获胜。', source: '高岛易断' },
      { category: '问疾病', content: '虽至危笃，尚可无咎。', source: '高岛易断' },
      { category: '问婚姻', content: '彼此欢洽，门户亦当。', source: '高岛易断' },
      { category: '问行人', content: '即至。', source: '高岛易断' },
      { category: '问失物', content: '即得。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 19,
    position: 5,
    judgments: [
      { category: '占问时运', content: '目下运得其时，又得好人相助，事事宜成，吉。', source: '高岛易断' },
      { category: '问商业', content: '知往知来，通晓商情，自然获利。吉。', source: '高岛易断' },
      { category: '问家宅', content: '有五福临门之兆。吉。', source: '高岛易断' },
      { category: '问战征', content: '能得军心，斯知己知彼，战无不胜也。', source: '高岛易断' },
      { category: '问疾病', content: '当得良医，详知病由，治之自然得愈。', source: '高岛易断' },
      { category: '问婚姻', content: '宜家宜室。大吉。', source: '高岛易断' },
      { category: '问失物', content: '有人拾得，久后自知。', source: '高岛易断' },
      { category: '问六甲', content: '生男，主贵。', source: '高岛易断' },
      { category: '问行人', content: '尚在半途，后日可归。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 19,
    position: 6,
    judgments: [
      { category: '占问时运', content: '目下好运已终，惟其存心忠厚，故得无咎。', source: '高岛易断' },
      { category: '问商业', content: '贩卖内地，吉。', source: '高岛易断' },
      { category: '问家宅', content: '世代忠厚，内外肃穆，吉。', source: '高岛易断' },
      { category: '问战征', content: '宜增兵益饷，以保护内地为要。', source: '高岛易断' },
      { category: '问疾病', content: '培养元气，勿药有喜。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' },
      { category: '问失物', content: '即在室内，未尝失也。', source: '高岛易断' },
      { category: '问行人', content: '即日可归。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 20,
    position: 1,
    judgments: [
      { category: '占问时运', content: '初运未佳，幸无大碍。', source: '高岛易断' },
      { category: '问商业', content: '初立场面，只宜就小，无咎。', source: '高岛易断' },
      { category: '问家宅', content: '防有童仆偷窃之患。', source: '高岛易断' },
      { category: '问战征', content: '防有小胜大败。', source: '高岛易断' },
      { category: '问疾病', content: '小人无碍，大人不利。', source: '高岛易断' },
      { category: '问行人', content: '宜就近，无咎。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' },
      { category: '问婚嫁', content: '自幼结亲，吉。', source: '高岛易断' },
      { category: '问失物', content: '防为小儿抛弃。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 20,
    position: 2,
    judgments: [
      { category: '占问时运', content: '目下运不佳，只宜株守，若妇女占之，大利。', source: '高岛易断' },
      { category: '问商业', content: '蚕丝业大利，余不佳。', source: '高岛易断' },
      { category: '问家宅', content: '必是妇女主家，利。', source: '高岛易断' },
      { category: '问疾病', content: '是阴寒之症，无害。', source: '高岛易断' },
      { category: '问出行', content: '须携眷同往，若行人，必携眷偕归。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' },
      { category: '问失物', content: '恐在门隙之间，窥探得之。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 20,
    position: 3,
    judgments: [
      { category: '占问时运', content: '目下运却平平，能度德量力，不自妄动，虽无所得，亦无失也。', source: '高岛易断' },
      { category: '问商业', content: '谨慎把握，随买随卖，听时计价，决无失也。', source: '高岛易断' },
      { category: '问家宅', content: '宜旧宅，不宜转移。', source: '高岛易断' },
      { category: '问战征', content: '宜审察军情，随机应变，决不致败。', source: '高岛易断' },
      { category: '问行人', content: '归心犹豫未决。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' },
      { category: '问疾病', content: '宜息心自养，可保无虞。', source: '高岛易断' },
      { category: '问失物', content: '即得。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 20,
    position: 4,
    judgments: [
      { category: '占问时运', content: '目下当盛运，求利可，求名尤佳。', source: '高岛易断' },
      { category: '问商业', content: '宜贩运出洋，不特获利，且可得名。', source: '高岛易断' },
      { category: '问家宅', content: '主有喜事临门，光增闾里。', source: '高岛易断' },
      { category: '问战征', content: '必得大捷，论功邀赏，垂名竹帛。', source: '高岛易断' },
      { category: '问疾病', content: '不利。', source: '高岛易断' },
      { category: '问行人', content: '不归。', source: '高岛易断' },
      { category: '问六甲', content: '生男，且主贵。', source: '高岛易断' },
      { category: '问讼事', content: '得直。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 20,
    position: 5,
    judgments: [
      { category: '占问时运', content: '目下运得其正，直道而行，无往不利。', source: '高岛易断' },
      { category: '问商业', content: '当由我把定主意，买卖贩运，无不利。', source: '高岛易断' },
      { category: '问家宅', content: '此宅必由我建造，君子居之，大利。', source: '高岛易断' },
      { category: '问战征', content: '当审察己营，所谓知己，乃能知彼也。可获大胜。', source: '高岛易断' },
      { category: '问疾病', content: '有命在天，无咎。', source: '高岛易断' },
      { category: '问行人', content: '即返。', source: '高岛易断' },
      { category: '问失物', content: '仍在身边，未失也。', source: '高岛易断' },
      { category: '问六甲', content: '生贵子。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 20,
    position: 6,
    judgments: [
      { category: '占问时运', content: '盛运已过，反躬自省，亦无失也。', source: '高岛易断' },
      { category: '问商业', content: '此种货物，已将告罄，由我得价，自然获利。', source: '高岛易断' },
      { category: '问家宅', content: '是老宅基，生息繁盛，有利无咎。', source: '高岛易断' },
      { category: '问战征', content: '军事将终，即可旋凯。', source: '高岛易断' },
      { category: '问疾病', content: '命运不久。', source: '高岛易断' },
      { category: '问讼事', content: '即结。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 23,
    position: 1,
    judgments: [
      { category: '占问时运', content: '目下运当剥削，防有足疾。', source: '高岛易断' },
      { category: '问商业', content: '堆积货件，防底部朽烂，或载运出洋，船底受水，被坏。', source: '高岛易断' },
      { category: '问家宅', content: '防柱础门限，有损将倾。', source: '高岛易断' },
      { category: '问战征', content: '防敌攻地道。', source: '高岛易断' },
      { category: '问行人', content: '有足疾，不能归也。', source: '高岛易断' },
      { category: '问疾病', content: '是足少阴之症，正不胜邪，凶。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 23,
    position: 2,
    judgments: [
      { category: '占问时运', content: '自去年来，逐渐低下，被人剥削，不能辨白。凶。', source: '高岛易断' },
      { category: '问商业', content: '置办货物，价渐剥落，不能获利也。凶。', source: '高岛易断' },
      { category: '问家宅', content: '"辨"，亦通变。言家宅速宜变迁，方得避凶。', source: '高岛易断' },
      { category: '问行人', content: '办装即归。', source: '高岛易断' },
      { category: '问战征', content: '未有应接之军，不可动也，动则凶。', source: '高岛易断' },
      { category: '问疾病', content: '病人已著床，未有良医，防不治也。凶。', source: '高岛易断' },
      { category: '问六甲', content: '生女难育。', source: '高岛易断' },
      { category: '问失物', content: '未能复有。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 23,
    position: 3,
    judgments: [
      { category: '占问时运', content: '运虽不正，能反其所为，可以免咎。', source: '高岛易断' },
      { category: '问商业', content: '同帮皆望高价，己独潜行脱售，虽失同帮之意，而独得利。', source: '高岛易断' },
      { category: '问家宅', content: '去其椽瓦，平其基地，剥落改造，无咎。', source: '高岛易断' },
      { category: '问战征', content: '是军中最有计谋者也。虽不与诸军约会，独自进攻，可得胜也。无咎。', source: '高岛易断' },
      { category: '问疾病', content: '宜消导攻伐之剂，服之得愈。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 23,
    position: 4,
    judgments: [
      { category: '占问时运', content: '运大不佳，有身体受伤之惧。', source: '高岛易断' },
      { category: '问商业', content: '恐剥耗过甚，又防意外之祸。', source: '高岛易断' },
      { category: '问家宅', content: '此宅必破败不堪，居人亦寥落，致防倾塌。', source: '高岛易断' },
      { category: '问战征', content: '恐主将有灾。', source: '高岛易断' },
      { category: '问疾病', content: '凶。', source: '高岛易断' },
      { category: '问六甲', content: '生女，产妇亦可危。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 23,
    position: 5,
    judgments: [
      { category: '占问时运', content: '目下气运堂皇，事事圆到，百无不利。', source: '高岛易断' },
      { category: '问商业', content: '可得满贯满万之利，北海海产生业尤佳。', source: '高岛易断' },
      { category: '问家宅', content: '有妇女主家之象。', source: '高岛易断' },
      { category: '问战征', content: '须行离间敌军之计，可获胜也。', source: '高岛易断' },
      { category: '问疾病', content: '是阴亏之症，须自珍爱，尚可无忧。', source: '高岛易断' },
      { category: '问行人', content: '有外宠，必将携伴而归。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 23,
    position: 6,
    judgments: [
      { category: '占问时运', content: '目下气运衰微，一年后即值好运。', source: '高岛易断' },
      { category: '问商业', content: '卖出者尚得微利，买入者必多剥耗。', source: '高岛易断' },
      { category: '问家宅', content: '忠厚之家，尚有余泽，刻薄起家者，恐有墙屋倾圮之患。', source: '高岛易断' },
      { category: '问战征', content: '守者无咎，攻者必败。', source: '高岛易断' },
      { category: '问疾病', content: '有饮食不进之虑。', source: '高岛易断' },
      { category: '问六甲', content: '生男，是独子也。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 24,
    position: 1,
    judgments: [
      { category: '占问时运', content: '好运即来，渐渐发动，一往顺利，大吉。', source: '高岛易断' },
      { category: '问商业', content: '前所耗失，即可复得，可免悔恨，大吉。', source: '高岛易断' },
      { category: '问家宅', content: '旧业复兴，即在目前，大吉。', source: '高岛易断' },
      { category: '问战征', content: '即日可转败为成，大吉。', source: '高岛易断' },
      { category: '问讼事', content: '始审不直，再控必胜，大吉。', source: '高岛易断' },
      { category: '问婚嫁', content: '主散而复成，大吉。', source: '高岛易断' },
      { category: '问行人', content: '不日即归，吉。', source: '高岛易断' },
      { category: '问疾病', content: '静养即可复，元吉。', source: '高岛易断' },
      { category: '问六甲', content: '即日生男。', source: '高岛易断' },
      { category: '问失物', content: '即日可得。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 24,
    position: 2,
    judgments: [
      { category: '占问时运', content: '目下气运亦好，事事能择善而从，故事事得吉。', source: '高岛易断' },
      { category: '问商业', content: '能与人共利，其业必兴，吉。', source: '高岛易断' },
      { category: '问家宅', content: '家庭多休祥之征，自能复兴旧业。吉。', source: '高岛易断' },
      { category: '问战征', content: '一时暂休攻克，姑示其弱，以养锐气。吉。', source: '高岛易断' },
      { category: '问疾病', content: '宜初治之医，复诊视之。吉。', source: '高岛易断' },
      { category: '问行人', content: '必从长辈而归。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' },
      { category: '问失物', content: '就低下处寻之。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 24,
    position: 3,
    judgments: [
      { category: '占问时运', content: '一好一歹，时有得失，能据其得而不失，是在人也。', source: '高岛易断' },
      { category: '问商业', content: '有亏有盈，能使盈多亏少，亏而复盈，亦可获利。', source: '高岛易断' },
      { category: '问家宅', content: '有迁移不定之象。', source: '高岛易断' },
      { category: '问疾病', content: '屡治屡发，虽危，可保无害。', source: '高岛易断' },
      { category: '问讼事', content: '有频翻口供，转致危厉之象。', source: '高岛易断' },
      { category: '问行人', content: '归志未决。', source: '高岛易断' },
      { category: '问六甲', content: '生男，颇涉难产，无害。', source: '高岛易断' },
      { category: '问失物', content: '失非一次，当可寻得。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 24,
    position: 4,
    judgments: [
      { category: '占问时运', content: '气运柔弱，意欲振兴，惜力不能逮。', source: '高岛易断' },
      { category: '问商业', content: '谋划精当，不失其正，资本未充，为可惜也。', source: '高岛易断' },
      { category: '问家宅', content: '女眷多，男丁少，未免有独寐寤歌之慨。', source: '高岛易断' },
      { category: '问战征', content: '防中道设伏。', source: '高岛易断' },
      { category: '问疾病', content: '虚弱之症，宜从初治之医调治。', source: '高岛易断' },
      { category: '问行人', content: '至中路复回，得伴再归。', source: '高岛易断' },
      { category: '问婚嫁', content: '宜从前媒。', source: '高岛易断' },
      { category: '问失物', content: '半途觅之。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 24,
    position: 5,
    judgments: [
      { category: '占问时运', content: '目下气运当正，事事从厚，有前功，无后悔。', source: '高岛易断' },
      { category: '问商业', content: '资财充足，往复获利。', source: '高岛易断' },
      { category: '问家宅', content: '祖基深厚，旧业复光，吉。', source: '高岛易断' },
      { category: '问战征', content: '军力厚实，可以攻复城池也。', source: '高岛易断' },
      { category: '问疾病', content: '病者精神充足，气体丰腴，无患也。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' },
      { category: '问失物', content: '宜自忖度。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 24,
    position: 6,
    judgments: [
      { category: '占问时运', content: '气运颠倒，作事乖张，谨慎免祸。', source: '高岛易断' },
      { category: '问商业', content: '货物不齐，期约不准，市价不的，必致大耗；时不能复业，凶。', source: '高岛易断' },
      { category: '问家宅', content: '防有怪祟，居者多不利。', source: '高岛易断' },
      { category: '问战征', content: '辙乱旗靡，大败之象。', source: '高岛易断' },
      { category: '问疾病', content: '症已危险，久病延年，犹为幸也。', source: '高岛易断' },
      { category: '问行人', content: '在外多凶，十年内恐不能归也。', source: '高岛易断' },
      { category: '问六甲', content: '生女。此女长成，亦大败之命。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 21,
    position: 1,
    judgments: [
      { category: '占问时运', content: '目下防有小灾，幸无大患，宜慎。', source: '高岛易断' },
      { category: '问商业', content: '木材交易，最为不利，余商亦宜谨慎。', source: '高岛易断' },
      { category: '问家宅', content: '有兴工改造之意，无咎。', source: '高岛易断' },
      { category: '问疾病', content: '或足患疮疡，或患脚气，症是初发，医治自易。', source: '高岛易断' },
      { category: '问战征', content: '防有埋伏，宜慎。', source: '高岛易断' },
      { category: '问婚嫁', content: '不利。', source: '高岛易断' },
      { category: '问行人', content: '未归。', source: '高岛易断' },
      { category: '问六甲', content: '生男，恐小儿有脚疾。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 21,
    position: 2,
    judgments: [
      { category: '占问时运', content: '目下平平，因才力浅肤，宜乘大力者行事。', source: '高岛易断' },
      { category: '问商业', content: '现时货物，有肤寸而合之象，不妨深藏待价，乘时出售。吉。', source: '高岛易断' },
      { category: '问战征', content: '肤大也，鼻始也，从今伊始，可奏肤功，吉。', source: '高岛易断' },
      { category: '问家宅', content: '鼻为祖，灭鼻即灭祖，老宅不利。', source: '高岛易断' },
      { category: '问疾病', content: '现下邪在肌肤，恐致深入为患。', source: '高岛易断' },
      { category: '问行人', content: '偕伴而归。', source: '高岛易断' },
      { category: '问婚嫁', content: '定是兴旺之家，可成。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 21,
    position: 3,
    judgments: [
      { category: '占问时运', content: '目下气运不正，于得意事中，每多失意，或待人而反受人怨，幸无大害。', source: '高岛易断' },
      { category: '问商业', content: '明明可获利之业，或反有小损，多以处置不得其当。', source: '高岛易断' },
      { category: '问战征', content: '屯营不得其地，防有小败，宜谨守。', source: '高岛易断' },
      { category: '问家宅', content: '宅神不安，恐有小灾，宜祷。', source: '高岛易断' },
      { category: '问疾病', content: '药不对病，幸小病无碍。', source: '高岛易断' },
      { category: '问行人', content: '因事不归。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 21,
    position: 4,
    judgments: [
      { category: '占问时运', content: '目下改旧从新，正当盛运，万事皆吉。', source: '高岛易断' },
      { category: '问商业', content: '譬如食肉得金，有利过于本之象，大吉。', source: '高岛易断' },
      { category: '问家宅', content: '家业素封，安不忘危，常不忘变，是保家之道，吉。', source: '高岛易断' },
      { category: '问战征', content: '能获敌粮饷，获敌弓矢，无坚不摧，所向皆利。但胜时，更宜谨慎为吉。', source: '高岛易断' },
      { category: '问婚嫁', content: '以勤俭之家，吉。', source: '高岛易断' },
      { category: '问疾病', content: '此症非易治，须谨慎调养，吉。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' },
      { category: '问行人', content: '在外得利，尚未归也。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 21,
    position: 5,
    judgments: [
      { category: '占问时运', content: '运正得时，所求所谋，无不如意，吉。', source: '高岛易断' },
      { category: '问商业', content: '所贩运货物，皆是上品，干净完美，大得利益。不特一时，此业可保长久。吉。', source: '高岛易断' },
      { category: '问家宅', content: '方位得当，大利。', source: '高岛易断' },
      { category: '问战征', content: '主敌城柔弱易攻，吉。', source: '高岛易断' },
      { category: '问疾病', content: '肉食宜忌，久亦可危，须谨慎调摄。', source: '高岛易断' },
      { category: '问行人', content: '正获利归来。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' },
      { category: '问失物', content: '即得。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 21,
    position: 6,
    judgments: [
      { category: '占问时运', content: '目下大运已终，能以柔和处世，可保无虑，若任用强，难免凶也。', source: '高岛易断' },
      { category: '问商业', content: '得利即止，不可过贪，斯无大损。', source: '高岛易断' },
      { category: '问家宅', content: '防有意外之灾凶。', source: '高岛易断' },
      { category: '问战征', content: '切勿前进，前进必凶。', source: '高岛易断' },
      { category: '问疾病', content: '或耳鸣耳聋，或项上生毒，凶。', source: '高岛易断' },
      { category: '问六甲', content: '生男，防有大项聋耳之疾。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 22,
    position: 1,
    judgments: [
      { category: '占问时运', content: '生性清高，不合时趋，以德亨，不以名亨。', source: '高岛易断' },
      { category: '问商业', content: '必是肩负买卖，非舟车贩运之业，虽小亦亨。', source: '高岛易断' },
      { category: '问家宅', content: '是勤俭起家，颇有知足不辱之风。', source: '高岛易断' },
      { category: '问战征', content: '陆军利。', source: '高岛易断' },
      { category: '问行人', content: '中途遇阻，步行而归。', source: '高岛易断' },
      { category: '问疾病', content: '症在初起，不食药而可愈也。', source: '高岛易断' },
      { category: '问讼事', content: '恐有惩役之灾。', source: '高岛易断' },
      { category: '问失物', content: '已舍弃去之，寻觅徒劳。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 22,
    position: 2,
    judgments: [
      { category: '占问时运', content: '目下平平，只可依人成事。', source: '高岛易断' },
      { category: '问商业', content: '与富商合业，必大兴旺，吉。', source: '高岛易断' },
      { category: '问战征', content: '必须与大军同进，方可得胜。', source: '高岛易断' },
      { category: '问家宅', content: '叨上人之福泽，藉以光大门楣。', source: '高岛易断' },
      { category: '问婚嫁', content: '归妹以须，尚宜待也。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 22,
    position: 3,
    judgments: [
      { category: '占问时运', content: '当此盛运，光华润泽，名利双收，大亨。', source: '高岛易断' },
      { category: '问商业', content: '财源如水，大得清润，基业亦可保长久，大吉。', source: '高岛易断' },
      { category: '问家宅', content: '屋宇华洁，又得流水掩映，可以久居，吉。', source: '高岛易断' },
      { category: '问战征', content: '一军皆感被德泽，欢洽同心，可称王师无敌。', source: '高岛易断' },
      { category: '问讼事', content: '得直，彼亦不敢复犯。', source: '高岛易断' },
      { category: '问婚嫁', content: '百年偕老，吉。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' },
      { category: '问行人', content: '衣锦荣耀而归。', source: '高岛易断' },
      { category: '问失物', content: '向水中寻之，得。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 22,
    position: 4,
    judgments: [
      { category: '占问时运', content: '目下运有阻碍，安分则吉，明年便可亨通。', source: '高岛易断' },
      { category: '问商业', content: '宜迅疾贩售，迟缓，防货物变色。', source: '高岛易断' },
      { category: '问家宅', content: '一宅之内，既有丧事，又逢婚事，前塞后通，无咎。', source: '高岛易断' },
      { category: '问战征', content: '有和亲通好之议。', source: '高岛易断' },
      { category: '问疾病', content: '中胸有阻，故上下不调，积阻消化，便无咎也。', source: '高岛易断' },
      { category: '问行人', content: '有爱女眷恋，一时未归。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 22,
    position: 5,
    judgments: [
      { category: '占问时运', content: '目下恰行正运，然作事一宜俭勤为吉。', source: '高岛易断' },
      { category: '问商业', content: '买卖最宜木材绸物二行，货物不必多，而获利颇佳。', source: '高岛易断' },
      { category: '问家宅', content: '农桑为业，勤俭家风，吉。', source: '高岛易断' },
      { category: '问战征', content: '宜招用野老，以作向导，可以得胜。', source: '高岛易断' },
      { category: '问婚嫁', content: '聘礼虽微，却好得一贤妇，大喜。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 22,
    position: 6,
    judgments: [
      { category: '占问时运', content: '好运已终，劳者宜归于逸，动者宜返于静，优游自适，聊以取乐耳。', source: '高岛易断' },
      { category: '问商业', content: '现在货价已高，时令将完，不必装饰，即可出售，定得利也。', source: '高岛易断' },
      { category: '问家宅', content: '清白家风，位置亦高，吉。', source: '高岛易断' },
      { category: '问战征', content: '身当上将，堂堂之阵，正正之旗，不用诡计奇谋，自然获胜。吉。', source: '高岛易断' },
      { category: '问疾病', content: '病在上焦，宜用清淡之剂，吉。', source: '高岛易断' },
      { category: '问行人', content: '得利归来。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' },
      { category: '问失物', content: '向高处寻觅，可得。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 25,
    position: 1,
    judgments: [
      { category: '占问时运', content: '目下运途蹇滞，不可妄动，动则多咎。', source: '高岛易断' },
      { category: '问商业', content: '宜守旧业，不宜新谋。', source: '高岛易断' },
      { category: '问家宅', content: '宅运未亨，宜安分守己。', source: '高岛易断' },
      { category: '问疾病', content: '宜静养，勿躁动。', source: '高岛易断' },
      { category: '问婚嫁', content: '不宜急进，待时而后可。', source: '高岛易断' },
      { category: '问行人', content: '归期未定。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 25,
    position: 2,
    judgments: [
      { category: '占问时运', content: '目下运途平平，宜守正待时。', source: '高岛易断' },
      { category: '问商业', content: '利在农耕，商旅未利。', source: '高岛易断' },
      { category: '问家宅', content: '田园之利，可保无虞。', source: '高岛易断' },
      { category: '问疾病', content: '宜调养脾胃。', source: '高岛易断' },
      { category: '问婚嫁', content: '良缘可成。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 25,
    position: 3,
    judgments: [
      { category: '占问时运', content: '运途多舛，防有意外之灾。', source: '高岛易断' },
      { category: '问商业', content: '防有失脱，宜谨慎。', source: '高岛易断' },
      { category: '问家宅', content: '防盗贼侵入。', source: '高岛易断' },
      { category: '问疾病', content: '防有外伤。', source: '高岛易断' },
      { category: '问行人', content: '中途有阻。', source: '高岛易断' },
      { category: '问六甲', content: '生男，防有惊。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 25,
    position: 4,
    judgments: [
      { category: '占问时运', content: '目下运途平稳，宜守正。', source: '高岛易断' },
      { category: '问商业', content: '可保无咎，不宜贪利。', source: '高岛易断' },
      { category: '问家宅', content: '家宅平安。', source: '高岛易断' },
      { category: '问疾病', content: '可愈。', source: '高岛易断' },
      { category: '问婚嫁', content: '可成。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 25,
    position: 5,
    judgments: [
      { category: '占问时运', content: '目下运途亨通，无往不利。', source: '高岛易断' },
      { category: '问商业', content: '大吉，可获利。', source: '高岛易断' },
      { category: '问家宅', content: '家道日隆。', source: '高岛易断' },
      { category: '问疾病', content: '勿药有喜。', source: '高岛易断' },
      { category: '问婚嫁', content: '良缘天定。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 25,
    position: 6,
    judgments: [
      { category: '占问时运', content: '运途已极，不可妄动，动必有灾。', source: '高岛易断' },
      { category: '问商业', content: '宜止不宜行，行则失利。', source: '高岛易断' },
      { category: '问家宅', content: '宜安居，不宜迁徙。', source: '高岛易断' },
      { category: '问疾病', content: '静养可愈，躁动则危。', source: '高岛易断' },
      { category: '问行人', content: '归期尚早。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 26,
    position: 1,
    judgments: [
      { category: '占问时运', content: '目下运途未通，宜止不宜进。', source: '高岛易断' },
      { category: '问商业', content: '暂勿经营，待时而动。', source: '高岛易断' },
      { category: '问家宅', content: '宅运未亨，宜守。', source: '高岛易断' },
      { category: '问疾病', content: '宜静养。', source: '高岛易断' },
      { category: '问婚嫁', content: '未遂。', source: '高岛易断' },
      { category: '问行人', content: '未归。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 26,
    position: 2,
    judgments: [
      { category: '占问时运', content: '运途有阻，宜守不宜进。', source: '高岛易断' },
      { category: '问商业', content: '车脱辐，行不利，宜止。', source: '高岛易断' },
      { category: '问家宅', content: '宅运平平。', source: '高岛易断' },
      { category: '问疾病', content: '症在手足，宜调治。', source: '高岛易断' },
      { category: '问婚嫁', content: '有阻。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 26,
    position: 3,
    judgments: [
      { category: '占问时运', content: '运途亨通，利有攸往。', source: '高岛易断' },
      { category: '问商业', content: '良马逐，利艰贞，大吉。', source: '高岛易断' },
      { category: '问家宅', content: '家道日兴。', source: '高岛易断' },
      { category: '问战征', content: '利涉大川，有功。', source: '高岛易断' },
      { category: '问疾病', content: '宜慎调养。', source: '高岛易断' },
      { category: '问婚嫁', content: '可成。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 26,
    position: 4,
    judgments: [
      { category: '占问时运', content: '运途初亨，大吉。', source: '高岛易断' },
      { category: '问商业', content: '童牛之牿，元吉，有利。', source: '高岛易断' },
      { category: '问家宅', content: '家宅平安，有喜。', source: '高岛易断' },
      { category: '问疾病', content: '可愈。', source: '高岛易断' },
      { category: '问婚嫁', content: '良缘。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 26,
    position: 5,
    judgments: [
      { category: '占问时运', content: '运途亨通，吉。', source: '高岛易断' },
      { category: '问商业', content: '豮豕之牙，吉，有利。', source: '高岛易断' },
      { category: '问家宅', content: '家道日隆。', source: '高岛易断' },
      { category: '问疾病', content: '可愈。', source: '高岛易断' },
      { category: '问婚嫁', content: '可成。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 26,
    position: 6,
    judgments: [
      { category: '占问时运', content: '运途大通，亨。', source: '高岛易断' },
      { category: '问商业', content: '何天之衢，亨，大吉。', source: '高岛易断' },
      { category: '问家宅', content: '家道大兴。', source: '高岛易断' },
      { category: '问疾病', content: '可愈。', source: '高岛易断' },
      { category: '问婚嫁', content: '良缘。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 27,
    position: 1,
    judgments: [
      { category: '占问时运', content: '舍尔灵龟，观我朵颐，凶。', source: '高岛易断' },
      { category: '问商业', content: '贪人所有，必致失利。', source: '高岛易断' },
      { category: '问家宅', content: '宅运不佳。', source: '高岛易断' },
      { category: '问疾病', content: '饮食不节致病。', source: '高岛易断' },
      { category: '问婚嫁', content: '不利。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 27,
    position: 2,
    judgments: [
      { category: '占问时运', content: '颠颐，征凶。', source: '高岛易断' },
      { category: '问商业', content: '求人失败，宜自谋。', source: '高岛易断' },
      { category: '问家宅', content: '宅运不佳。', source: '高岛易断' },
      { category: '问疾病', content: '症在肠胃。', source: '高岛易断' },
      { category: '问婚嫁', content: '不利。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 27,
    position: 3,
    judgments: [
      { category: '占问时运', content: '拂颐，贞凶，十年勿用。', source: '高岛易断' },
      { category: '问商业', content: '违背正道，久而无利。', source: '高岛易断' },
      { category: '问家宅', content: '宅运多舛。', source: '高岛易断' },
      { category: '问疾病', content: '久病难愈。', source: '高岛易断' },
      { category: '问婚嫁', content: '不成。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 27,
    position: 4,
    judgments: [
      { category: '占问时运', content: '颠颐吉，虎视眈眈，无咎。', source: '高岛易断' },
      { category: '问商业', content: '有利可图，宜守。', source: '高岛易断' },
      { category: '问家宅', content: '家宅平安。', source: '高岛易断' },
      { category: '问疾病', content: '可愈。', source: '高岛易断' },
      { category: '问婚嫁', content: '可成。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 27,
    position: 5,
    judgments: [
      { category: '占问时运', content: '拂经，居贞吉，不可涉大川。', source: '高岛易断' },
      { category: '问商业', content: '守正则吉，不宜冒险。', source: '高岛易断' },
      { category: '问家宅', content: '宅运平稳。', source: '高岛易断' },
      { category: '问疾病', content: '宜静养。', source: '高岛易断' },
      { category: '问婚嫁', content: '可成。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 27,
    position: 6,
    judgments: [
      { category: '占问时运', content: '由颐，厉吉，利涉大川。', source: '高岛易断' },
      { category: '问商业', content: '大吉，有利。', source: '高岛易断' },
      { category: '问家宅', content: '家道大兴。', source: '高岛易断' },
      { category: '问疾病', content: '可愈。', source: '高岛易断' },
      { category: '问婚嫁', content: '良缘。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 28,
    position: 1,
    judgments: [
      { category: '占问时运', content: '藉用白茅，无咎。', source: '高岛易断' },
      { category: '问商业', content: '谨慎经营，无咎。', source: '高岛易断' },
      { category: '问家宅', content: '宅运平稳。', source: '高岛易断' },
      { category: '问疾病', content: '宜慎调养。', source: '高岛易断' },
      { category: '问婚嫁', content: '可成。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 28,
    position: 2,
    judgments: [
      { category: '占问时运', content: '枯杨生稊，老夫得其女妻，无不利。', source: '高岛易断' },
      { category: '问商业', content: '有利，宜创新。', source: '高岛易断' },
      { category: '问家宅', content: '家运复兴。', source: '高岛易断' },
      { category: '问疾病', content: '可愈。', source: '高岛易断' },
      { category: '问婚嫁', content: '良缘，老少配。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 28,
    position: 3,
    judgments: [
      { category: '占问时运', content: '栋桡，凶。', source: '高岛易断' },
      { category: '问商业', content: '根基不稳，凶。', source: '高岛易断' },
      { category: '问家宅', content: '宅运不佳，防倾覆。', source: '高岛易断' },
      { category: '问疾病', content: '症重，宜慎。', source: '高岛易断' },
      { category: '问婚嫁', content: '不利。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 28,
    position: 4,
    judgments: [
      { category: '占问时运', content: '栋隆，吉，有它吝。', source: '高岛易断' },
      { category: '问商业', content: '有利，防小损。', source: '高岛易断' },
      { category: '问家宅', content: '家运亨通。', source: '高岛易断' },
      { category: '问疾病', content: '可愈。', source: '高岛易断' },
      { category: '问婚嫁', content: '可成。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 28,
    position: 5,
    judgments: [
      { category: '占问时运', content: '枯杨生华，老妇得其士夫，无咎无誉。', source: '高岛易断' },
      { category: '问商业', content: '平平，无大利。', source: '高岛易断' },
      { category: '问家宅', content: '宅运平平。', source: '高岛易断' },
      { category: '问疾病', content: '可愈。', source: '高岛易断' },
      { category: '问婚嫁', content: '可成，老少配。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 28,
    position: 6,
    judgments: [
      { category: '占问时运', content: '过涉灭顶，凶，无咎。', source: '高岛易断' },
      { category: '问商业', content: '冒险行事，防大损。', source: '高岛易断' },
      { category: '问家宅', content: '防有水灾。', source: '高岛易断' },
      { category: '问疾病', content: '症重，宜慎。', source: '高岛易断' },
      { category: '问婚嫁', content: '不利。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 29,
    position: 1,
    judgments: [
      { category: '占问时运', content: '习坎，入于坎窞，凶。', source: '高岛易断' },
      { category: '问商业', content: '陷入困境，凶。', source: '高岛易断' },
      { category: '问家宅', content: '宅运不佳，防陷阱。', source: '高岛易断' },
      { category: '问疾病', content: '症重，宜慎。', source: '高岛易断' },
      { category: '问婚嫁', content: '不利。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 29,
    position: 2,
    judgments: [
      { category: '占问时运', content: '坎有险，求小得。', source: '高岛易断' },
      { category: '问商业', content: '小利可图，不宜大谋。', source: '高岛易断' },
      { category: '问家宅', content: '宅运平平。', source: '高岛易断' },
      { category: '问疾病', content: '症有险，宜慎治。', source: '高岛易断' },
      { category: '问婚嫁', content: '有阻。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 29,
    position: 3,
    judgments: [
      { category: '占问时运', content: '来之坎坎，险且枕，勿用。', source: '高岛易断' },
      { category: '问商业', content: '进退两难，宜守。', source: '高岛易断' },
      { category: '问家宅', content: '宅运多舛。', source: '高岛易断' },
      { category: '问疾病', content: '症重，宜静养。', source: '高岛易断' },
      { category: '问婚嫁', content: '不成。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 29,
    position: 4,
    judgments: [
      { category: '占问时运', content: '樽酒簋贰，用缶，纳约自牖，终无咎。', source: '高岛易断' },
      { category: '问商业', content: '简约经营，终无咎。', source: '高岛易断' },
      { category: '问家宅', content: '宅运平稳。', source: '高岛易断' },
      { category: '问疾病', content: '可愈。', source: '高岛易断' },
      { category: '问婚嫁', content: '可成。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 29,
    position: 5,
    judgments: [
      { category: '占问时运', content: '坎不盈，祗既平，无咎。', source: '高岛易断' },
      { category: '问商业', content: '平稳，无咎。', source: '高岛易断' },
      { category: '问家宅', content: '宅运渐亨。', source: '高岛易断' },
      { category: '问疾病', content: '可愈。', source: '高岛易断' },
      { category: '问婚嫁', content: '可成。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 29,
    position: 6,
    judgments: [
      { category: '占问时运', content: '系用徽纆，置于丛棘，三岁不得，凶。', source: '高岛易断' },
      { category: '问商业', content: '困顿难出，凶。', source: '高岛易断' },
      { category: '问家宅', content: '宅运不佳，防官非。', source: '高岛易断' },
      { category: '问疾病', content: '症重，久病难愈。', source: '高岛易断' },
      { category: '问婚嫁', content: '不成。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 30,
    position: 1,
    judgments: [
      { category: '占问时运', content: '履错然，敬之，无咎。', source: '高岛易断' },
      { category: '问商业', content: '新业初立，宜敬慎。', source: '高岛易断' },
      { category: '问家宅', content: '宅运初亨。', source: '高岛易断' },
      { category: '问疾病', content: '宜慎调养。', source: '高岛易断' },
      { category: '问婚嫁', content: '可成。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 30,
    position: 2,
    judgments: [
      { category: '占问时运', content: '黄离，元吉。', source: '高岛易断' },
      { category: '问商业', content: '大吉，有利。', source: '高岛易断' },
      { category: '问家宅', content: '家道大兴。', source: '高岛易断' },
      { category: '问疾病', content: '可愈。', source: '高岛易断' },
      { category: '问婚嫁', content: '良缘。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 30,
    position: 3,
    judgments: [
      { category: '占问时运', content: '日昃之离，不鼓缶而歌，则大耋之嗟，凶。', source: '高岛易断' },
      { category: '问商业', content: '日落西山，不宜经营。', source: '高岛易断' },
      { category: '问家宅', content: '宅运衰退。', source: '高岛易断' },
      { category: '问疾病', content: '症重，宜慎。', source: '高岛易断' },
      { category: '问婚嫁', content: '不利，难偕老。', source: '高岛易断' },
      { category: '问六甲', content: '生女，难育。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 30,
    position: 4,
    judgments: [
      { category: '占问时运', content: '突如其来如，焚如，死如，弃如。', source: '高岛易断' },
      { category: '问商业', content: '有灾，宜避。', source: '高岛易断' },
      { category: '问家宅', content: '防火灾。', source: '高岛易断' },
      { category: '问疾病', content: '症重，危。', source: '高岛易断' },
      { category: '问婚嫁', content: '不利。', source: '高岛易断' },
      { category: '问六甲', content: '生女，不育。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 30,
    position: 5,
    judgments: [
      { category: '占问时运', content: '出涕沱若，戚嗟若，吉。', source: '高岛易断' },
      { category: '问商业', content: '先苦后甜，吉。', source: '高岛易断' },
      { category: '问家宅', content: '家运先忧后喜。', source: '高岛易断' },
      { category: '问疾病', content: '可愈，防难产。', source: '高岛易断' },
      { category: '问婚嫁', content: '先号咷而后笑。', source: '高岛易断' },
      { category: '问六甲', content: '生女，防难产。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 30,
    position: 6,
    judgments: [
      { category: '占问时运', content: '王用出征，有嘉折首，获匪其丑，无咎。', source: '高岛易断' },
      { category: '问商业', content: '有利，宜选取上品。', source: '高岛易断' },
      { category: '问家宅', content: '家运亨通。', source: '高岛易断' },
      { category: '问疾病', content: '不利，防夭折。', source: '高岛易断' },
      { category: '问婚嫁', content: '可成。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 31,
    position: 1,
    judgments: [
      { category: '占问时运', content: '咸其拇，志在外也。', source: '高岛易断' },
      { category: '问商业', content: '必是初次贸易，货物已办，尚未发行也。', source: '高岛易断' },
      { category: '问功名', content: '必能一举成名，有捷足先登之兆。', source: '高岛易断' },
      { category: '问家宅', content: '有迁居外地之意。', source: '高岛易断' },
      { category: '问疾病', content: '是足指初起一毒，宜外用敷药调治。', source: '高岛易断' },
      { category: '问婚嫁', content: '为结缡之始，吉。', source: '高岛易断' },
      { category: '问六甲', content: '生男，是初胎也。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 31,
    position: 2,
    judgments: [
      { category: '占问时运', content: '咸其腓，凶。居吉。', source: '高岛易断' },
      { category: '问商业', content: '不利行商，利坐贾。', source: '高岛易断' },
      { category: '问功名', content: '只可依人成事，未能远到。', source: '高岛易断' },
      { category: '问疾病', content: '必是四肢痿痹之症，只可坐卧，不能步行也。', source: '高岛易断' },
      { category: '问婚嫁', content: '婚事既成，恐有变动，能以顺自守，虽凶终吉。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 31,
    position: 3,
    judgments: [
      { category: '占问时运', content: '咸其股，执其随，往吝。', source: '高岛易断' },
      { category: '问商业', content: '必难获利。', source: '高岛易断' },
      { category: '问功名', content: '随声附名，其品下矣，必难制胜。', source: '高岛易断' },
      { category: '问家宅', content: '宅近艮山，本可安处，占者不愿处此，殆欲随人他迁也，恐所往吝矣。', source: '高岛易断' },
      { category: '问婚嫁', content: '咎在过听执柯者之言，恐所适非偶。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 31,
    position: 4,
    judgments: [
      { category: '占问时运', content: '贞吉，悔亡。憧憧往来，朋从尔思。', source: '高岛易断' },
      { category: '问商业', content: '商务虽在谋利，亦以得贞为吉，若见利忘义，则群焉争夺，不夺不厌，害有不可胜言者矣。', source: '高岛易断' },
      { category: '问功名', content: '功名显达，其象贞吉，然得不以正，害即随之，最宜谨慎。', source: '高岛易断' },
      { category: '问家宅', content: '其宅必临通衢往来之地，邪正杂处，交际最宜慎择。', source: '高岛易断' },
      { category: '问疾病', content: '必是心神恍惚之症，宜静养。', source: '高岛易断' },
      { category: '问婚嫁', content: '防女家闺范不谨。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 31,
    position: 5,
    judgments: [
      { category: '占问时运', content: '咸其脢，无悔。', source: '高岛易断' },
      { category: '问商业', content: '知其商业不大，利亦微薄。', source: '高岛易断' },
      { category: '问功名', content: '背者，败北也，知所求未必成名。', source: '高岛易断' },
      { category: '问疾病', content: '鲐背，寿征也，知病即愈，无悔，且获多寿。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 31,
    position: 6,
    judgments: [
      { category: '占问时运', content: '咸其辅、颊、舌，滕口说也。', source: '高岛易断' },
      { category: '问商业', content: '恐有口舌之祸。', source: '高岛易断' },
      { category: '问功名', content: '可献策陈言，当得召用。', source: '高岛易断' },
      { category: '问家宅', content: '主人口不睦，口角起争。', source: '高岛易断' },
      { category: '问疾病', content: '呓语谵言，心魂不安，宜祷。', source: '高岛易断' },
      { category: '问婚嫁', content: '冰人之言，未可全信。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 32,
    position: 1,
    judgments: [
      { category: '占问时运', content: '浚恒，贞凶，无攸利。', source: '高岛易断' },
      { category: '问商业', content: '宜守旧，不宜新谋。', source: '高岛易断' },
      { category: '问家宅', content: '宅运不佳，宜安居。', source: '高岛易断' },
      { category: '问疾病', content: '症在深部，宜慎治。', source: '高岛易断' },
      { category: '问婚嫁', content: '不宜急进。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 32,
    position: 2,
    judgments: [
      { category: '占问时运', content: '悔亡。', source: '高岛易断' },
      { category: '问商业', content: '久于其道，自然精明练达，能振兴其业也。', source: '高岛易断' },
      { category: '问家宅', content: '宅运平稳。', source: '高岛易断' },
      { category: '问疾病', content: '可愈。', source: '高岛易断' },
      { category: '问婚嫁', content: '可成。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 32,
    position: 3,
    judgments: [
      { category: '占问时运', content: '不恒其德，或承之羞，贞吝。', source: '高岛易断' },
      { category: '问商业', content: '德行无常，难以持久。', source: '高岛易断' },
      { category: '问家宅', content: '宅运多变。', source: '高岛易断' },
      { category: '问疾病', content: '症有反复。', source: '高岛易断' },
      { category: '问婚嫁', content: '不宜。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 32,
    position: 4,
    judgments: [
      { category: '占问时运', content: '田无禽。', source: '高岛易断' },
      { category: '问商业', content: '劳而无功。', source: '高岛易断' },
      { category: '问家宅', content: '宅运平平。', source: '高岛易断' },
      { category: '问疾病', content: '宜调养。', source: '高岛易断' },
      { category: '问婚嫁', content: '不成。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 32,
    position: 5,
    judgments: [
      { category: '占问时运', content: '恒其德，贞，妇人吉，夫子凶。', source: '高岛易断' },
      { category: '问商业', content: '妇人经营吉，男子不利。', source: '高岛易断' },
      { category: '问家宅', content: '妇人主家吉。', source: '高岛易断' },
      { category: '问疾病', content: '可愈。', source: '高岛易断' },
      { category: '问婚嫁', content: '妇人吉。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 32,
    position: 6,
    judgments: [
      { category: '占问时运', content: '振恒，凶。', source: '高岛易断' },
      { category: '问商业', content: '变动无常，凶。', source: '高岛易断' },
      { category: '问家宅', content: '宅运不安。', source: '高岛易断' },
      { category: '问疾病', content: '症重，宜慎。', source: '高岛易断' },
      { category: '问婚嫁', content: '不利。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 33,
    position: 1,
    judgments: [
      { category: '占问时运', content: '遁尾，厉，勿用有攸往。', source: '高岛易断' },
      { category: '问商业', content: '宜止不宜行。', source: '高岛易断' },
      { category: '问家宅', content: '宅运不佳，宜避。', source: '高岛易断' },
      { category: '问疾病', content: '症在尾闾，宜慎。', source: '高岛易断' },
      { category: '问婚嫁', content: '不宜。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 33,
    position: 2,
    judgments: [
      { category: '占问时运', content: '执之用黄牛之革，莫之胜说。', source: '高岛易断' },
      { category: '问商业', content: '固守不变，难以脱手。', source: '高岛易断' },
      { category: '问家宅', content: '宅运固守。', source: '高岛易断' },
      { category: '问疾病', content: '症重，宜固本。', source: '高岛易断' },
      { category: '问婚嫁', content: '有阻。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 33,
    position: 3,
    judgments: [
      { category: '占问时运', content: '系遁，有疾厉，畜臣妾吉。', source: '高岛易断' },
      { category: '问商业', content: '有所牵系，难以脱身。', source: '高岛易断' },
      { category: '问家宅', content: '宅运有阻。', source: '高岛易断' },
      { category: '问疾病', content: '症有牵连，宜慎。', source: '高岛易断' },
      { category: '问婚嫁', content: '畜臣妾吉。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 33,
    position: 4,
    judgments: [
      { category: '占问时运', content: '好遁，君子吉，小人否。', source: '高岛易断' },
      { category: '问商业', content: '君子经营吉，小人不利。', source: '高岛易断' },
      { category: '问家宅', content: '君子居之吉。', source: '高岛易断' },
      { category: '问疾病', content: '可愈。', source: '高岛易断' },
      { category: '问婚嫁', content: '君子吉。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 33,
    position: 5,
    judgments: [
      { category: '占问时运', content: '嘉遁，贞吉。', source: '高岛易断' },
      { category: '问商业', content: '适时退让，吉。', source: '高岛易断' },
      { category: '问家宅', content: '宅运亨通。', source: '高岛易断' },
      { category: '问疾病', content: '可愈。', source: '高岛易断' },
      { category: '问婚嫁', content: '良缘。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 33,
    position: 6,
    judgments: [
      { category: '占问时运', content: '肥遁，无不利。', source: '高岛易断' },
      { category: '问商业', content: '退让有利。', source: '高岛易断' },
      { category: '问家宅', content: '宅运大利。', source: '高岛易断' },
      { category: '问疾病', content: '可愈。', source: '高岛易断' },
      { category: '问婚嫁', content: '良缘。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 34,
    position: 1,
    judgments: [
      { category: '占问时运', content: '壮于趾，征凶，有孚。', source: '高岛易断' },
      { category: '问商业', content: '躁进有凶。', source: '高岛易断' },
      { category: '问家宅', content: '宅运不佳。', source: '高岛易断' },
      { category: '问疾病', content: '足疾，宜慎。', source: '高岛易断' },
      { category: '问婚嫁', content: '不宜。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 34,
    position: 2,
    judgments: [
      { category: '占问时运', content: '贞吉。', source: '高岛易断' },
      { category: '问商业', content: '守正则吉。', source: '高岛易断' },
      { category: '问家宅', content: '宅运平稳。', source: '高岛易断' },
      { category: '问疾病', content: '可愈。', source: '高岛易断' },
      { category: '问婚嫁', content: '可成。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 34,
    position: 3,
    judgments: [
      { category: '占问时运', content: '小人用壮，君子用罔，贞厉。羝羊触藩，羸其角。', source: '高岛易断' },
      { category: '问商业', content: '刚愎自用，必有损失。', source: '高岛易断' },
      { category: '问家宅', content: '宅运有阻。', source: '高岛易断' },
      { category: '问疾病', content: '症重，宜慎。', source: '高岛易断' },
      { category: '问婚嫁', content: '有阻。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 34,
    position: 4,
    judgments: [
      { category: '占问时运', content: '贞吉，悔亡。藩决不羸，壮于大舆之輹。', source: '高岛易断' },
      { category: '问商业', content: '大吉，有利。', source: '高岛易断' },
      { category: '问家宅', content: '宅运亨通。', source: '高岛易断' },
      { category: '问疾病', content: '可愈。', source: '高岛易断' },
      { category: '问婚嫁', content: '良缘。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 34,
    position: 5,
    judgments: [
      { category: '占问时运', content: '丧羊于易，无悔。', source: '高岛易断' },
      { category: '问商业', content: '小失无碍，终吉。', source: '高岛易断' },
      { category: '问家宅', content: '宅运平稳。', source: '高岛易断' },
      { category: '问疾病', content: '可愈。', source: '高岛易断' },
      { category: '问婚嫁', content: '可成。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 34,
    position: 6,
    judgments: [
      { category: '占问时运', content: '羝羊触藩，不能退，不能遂，无攸利，艰则吉。', source: '高岛易断' },
      { category: '问商业', content: '进退两难，宜守。', source: '高岛易断' },
      { category: '问家宅', content: '宅运有阻。', source: '高岛易断' },
      { category: '问疾病', content: '症重，宜慎。', source: '高岛易断' },
      { category: '问婚嫁', content: '有阻。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 35,
    position: 1,
    judgments: [
      { category: '占问时运', content: '晋如摧如，贞吉。罔孚，裕无咎。', source: '高岛易断' },
      { category: '问商业', content: '初有阻碍，终吉。', source: '高岛易断' },
      { category: '问家宅', content: '宅运初阻后通。', source: '高岛易断' },
      { category: '问疾病', content: '可愈。', source: '高岛易断' },
      { category: '问婚嫁', content: '可成。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 35,
    position: 2,
    judgments: [
      { category: '占问时运', content: '晋如愁如，贞吉。受兹介福，于其王母。', source: '高岛易断' },
      { category: '问商业', content: '有忧有福，终吉。', source: '高岛易断' },
      { category: '问家宅', content: '宅运有福。', source: '高岛易断' },
      { category: '问疾病', content: '可愈。', source: '高岛易断' },
      { category: '问婚嫁', content: '良缘，有贵人助。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 35,
    position: 3,
    judgments: [
      { category: '占问时运', content: '众允，悔亡。', source: '高岛易断' },
      { category: '问商业', content: '众信可成。', source: '高岛易断' },
      { category: '问家宅', content: '宅运亨通。', source: '高岛易断' },
      { category: '问疾病', content: '可愈。', source: '高岛易断' },
      { category: '问婚嫁', content: '可成。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 35,
    position: 4,
    judgments: [
      { category: '占问时运', content: '晋如鼫鼠，贞厉。', source: '高岛易断' },
      { category: '问商业', content: '贪多必失。', source: '高岛易断' },
      { category: '问家宅', content: '宅运不佳。', source: '高岛易断' },
      { category: '问疾病', content: '症重，宜慎。', source: '高岛易断' },
      { category: '问婚嫁', content: '不宜。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 35,
    position: 5,
    judgments: [
      { category: '占问时运', content: '悔亡，失得勿恤，往吉无不利。', source: '高岛易断' },
      { category: '问商业', content: '大吉，有利。', source: '高岛易断' },
      { category: '问家宅', content: '家运大兴。', source: '高岛易断' },
      { category: '问疾病', content: '可愈。', source: '高岛易断' },
      { category: '问婚嫁', content: '良缘。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 35,
    position: 6,
    judgments: [
      { category: '占问时运', content: '晋其角，维用伐邑，厉吉无咎，贞吝。', source: '高岛易断' },
      { category: '问商业', content: '有争竞，宜慎。', source: '高岛易断' },
      { category: '问家宅', content: '宅运有变。', source: '高岛易断' },
      { category: '问疾病', content: '症重，宜慎。', source: '高岛易断' },
      { category: '问婚嫁', content: '有阻。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 36,
    position: 1,
    judgments: [
      { category: '占问时运', content: '明夷于飞，垂其翼。君子于行，三日不食。有攸往，主人有言。', source: '高岛易断' },
      { category: '问商业', content: '宜隐不宜显。', source: '高岛易断' },
      { category: '问家宅', content: '宅运不佳，宜避。', source: '高岛易断' },
      { category: '问疾病', content: '症重，宜慎。', source: '高岛易断' },
      { category: '问婚嫁', content: '不宜。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 36,
    position: 2,
    judgments: [
      { category: '占问时运', content: '明夷，夷于左股，用拯马壮，吉。', source: '高岛易断' },
      { category: '问商业', content: '有救，吉。', source: '高岛易断' },
      { category: '问家宅', content: '宅运有救。', source: '高岛易断' },
      { category: '问疾病', content: '可愈。', source: '高岛易断' },
      { category: '问婚嫁', content: '可成。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 36,
    position: 3,
    judgments: [
      { category: '占问时运', content: '明夷于南狩，得其大首，不可疾贞。', source: '高岛易断' },
      { category: '问商业', content: '南方有利。', source: '高岛易断' },
      { category: '问家宅', content: '宅运南方吉。', source: '高岛易断' },
      { category: '问疾病', content: '可愈，宜缓。', source: '高岛易断' },
      { category: '问婚嫁', content: '可成。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 36,
    position: 4,
    judgments: [
      { category: '占问时运', content: '入于左腹，获明夷之心，于出门庭。', source: '高岛易断' },
      { category: '问商业', content: '宜出门经营。', source: '高岛易断' },
      { category: '问家宅', content: '宜迁居。', source: '高岛易断' },
      { category: '问疾病', content: '症在腹部，宜慎。', source: '高岛易断' },
      { category: '问婚嫁', content: '宜出门求亲。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 36,
    position: 5,
    judgments: [
      { category: '占问时运', content: '箕子之明夷，利贞。', source: '高岛易断' },
      { category: '问商业', content: '守正则利。', source: '高岛易断' },
      { category: '问家宅', content: '宅运守正则吉。', source: '高岛易断' },
      { category: '问疾病', content: '可愈。', source: '高岛易断' },
      { category: '问婚嫁', content: '守正则吉。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 36,
    position: 6,
    judgments: [
      { category: '占问时运', content: '不明晦，初登于天，后入于地。', source: '高岛易断' },
      { category: '问商业', content: '先盛后衰。', source: '高岛易断' },
      { category: '问家宅', content: '宅运先亨后困。', source: '高岛易断' },
      { category: '问疾病', content: '症重，危。', source: '高岛易断' },
      { category: '问婚嫁', content: '不利。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 37,
    position: 1,
    judgments: [
      { category: '占问时运', content: '闲有家，悔亡。', source: '高岛易断' },
      { category: '问商业', content: '宜守不宜散。', source: '高岛易断' },
      { category: '问家宅', content: '家宅平安。', source: '高岛易断' },
      { category: '问疾病', content: '可愈。', source: '高岛易断' },
      { category: '问婚嫁', content: '可成。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 37,
    position: 2,
    judgments: [
      { category: '占问时运', content: '无攸遂，在中馈，贞吉。', source: '高岛易断' },
      { category: '问商业', content: '妇人经营吉。', source: '高岛易断' },
      { category: '问家宅', content: '妇人主家吉。', source: '高岛易断' },
      { category: '问疾病', content: '可愈。', source: '高岛易断' },
      { category: '问婚嫁', content: '妇人吉。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 37,
    position: 3,
    judgments: [
      { category: '占问时运', content: '家人嗃嗃，悔厉吉。妇子嘻嘻，终吝。', source: '高岛易断' },
      { category: '问商业', content: '严则有成，宽则有失。', source: '高岛易断' },
      { category: '问家宅', content: '家规严则吉。', source: '高岛易断' },
      { category: '问疾病', content: '可愈。', source: '高岛易断' },
      { category: '问婚嫁', content: '严则有成。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 37,
    position: 4,
    judgments: [
      { category: '占问时运', content: '富家，大吉。', source: '高岛易断' },
      { category: '问商业', content: '大吉，有利。', source: '高岛易断' },
      { category: '问家宅', content: '家道大兴。', source: '高岛易断' },
      { category: '问疾病', content: '可愈。', source: '高岛易断' },
      { category: '问婚嫁', content: '良缘。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 37,
    position: 5,
    judgments: [
      { category: '占问时运', content: '王假有家，勿恤，吉。', source: '高岛易断' },
      { category: '问商业', content: '大吉，有利。', source: '高岛易断' },
      { category: '问家宅', content: '家道大兴。', source: '高岛易断' },
      { category: '问疾病', content: '可愈。', source: '高岛易断' },
      { category: '问婚嫁', content: '良缘。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 37,
    position: 6,
    judgments: [
      { category: '占问时运', content: '有孚威如，终吉。', source: '高岛易断' },
      { category: '问商业', content: '诚信有威，吉。', source: '高岛易断' },
      { category: '问家宅', content: '家道有威。', source: '高岛易断' },
      { category: '问疾病', content: '可愈。', source: '高岛易断' },
      { category: '问婚嫁', content: '良缘。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 38,
    position: 1,
    judgments: [
      { category: '占问时运', content: '悔亡，丧马勿逐，自复。见恶人，无咎。', source: '高岛易断' },
      { category: '问商业', content: '失物自回，无咎。', source: '高岛易断' },
      { category: '问家宅', content: '宅运平稳。', source: '高岛易断' },
      { category: '问疾病', content: '可愈。', source: '高岛易断' },
      { category: '问婚嫁', content: '可成。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 38,
    position: 2,
    judgments: [
      { category: '占问时运', content: '遇主于巷，无咎。', source: '高岛易断' },
      { category: '问商业', content: '有贵人助。', source: '高岛易断' },
      { category: '问家宅', content: '宅运有贵人。', source: '高岛易断' },
      { category: '问疾病', content: '可愈。', source: '高岛易断' },
      { category: '问婚嫁', content: '有贵人助。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 38,
    position: 3,
    judgments: [
      { category: '占问时运', content: '见舆曳，其牛掣，其人天且劓。无初有终。', source: '高岛易断' },
      { category: '问商业', content: '初阻后通。', source: '高岛易断' },
      { category: '问家宅', content: '宅运初阻后通。', source: '高岛易断' },
      { category: '问疾病', content: '可愈。', source: '高岛易断' },
      { category: '问婚嫁', content: '初阻后成。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 38,
    position: 4,
    judgments: [
      { category: '占问时运', content: '睽孤，遇元夫，交孚，厉无咎。', source: '高岛易断' },
      { category: '问商业', content: '有伙伴相助。', source: '高岛易断' },
      { category: '问家宅', content: '宅运有助。', source: '高岛易断' },
      { category: '问疾病', content: '可愈。', source: '高岛易断' },
      { category: '问婚嫁', content: '有伙伴相助。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 38,
    position: 5,
    judgments: [
      { category: '占问时运', content: '悔亡，厥宗噬肤，往何咎。', source: '高岛易断' },
      { category: '问商业', content: '有宗族相助。', source: '高岛易断' },
      { category: '问家宅', content: '宅运有宗族助。', source: '高岛易断' },
      { category: '问疾病', content: '可愈。', source: '高岛易断' },
      { category: '问婚嫁', content: '有宗族助。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 38,
    position: 6,
    judgments: [
      { category: '占问时运', content: '睽孤，见豕负涂，载鬼一车，先张之弧，后说之弧，匪寇婚媾，往遇雨则吉。', source: '高岛易断' },
      { category: '问商业', content: '先疑后信，吉。', source: '高岛易断' },
      { category: '问家宅', content: '宅运先疑后信。', source: '高岛易断' },
      { category: '问疾病', content: '可愈。', source: '高岛易断' },
      { category: '问婚嫁', content: '先疑后成。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 39,
    position: 1,
    judgments: [
      { category: '占问时运', content: '往蹇，来誉。', source: '高岛易断' },
      { category: '问商业', content: '不宜往，宜来。', source: '高岛易断' },
      { category: '问家宅', content: '宅运不宜迁。', source: '高岛易断' },
      { category: '问疾病', content: '宜静养。', source: '高岛易断' },
      { category: '问婚嫁', content: '不宜往求。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 39,
    position: 2,
    judgments: [
      { category: '占问时运', content: '王臣蹇蹇，匪躬之故。', source: '高岛易断' },
      { category: '问商业', content: '为人经营，劳苦。', source: '高岛易断' },
      { category: '问家宅', content: '宅运劳苦。', source: '高岛易断' },
      { category: '问疾病', content: '劳苦致病。', source: '高岛易断' },
      { category: '问婚嫁', content: '劳苦。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 39,
    position: 3,
    judgments: [
      { category: '占问时运', content: '往蹇，来反。', source: '高岛易断' },
      { category: '问商业', content: '不宜往，宜返。', source: '高岛易断' },
      { category: '问家宅', content: '宅运不宜迁。', source: '高岛易断' },
      { category: '问疾病', content: '宜返归调养。', source: '高岛易断' },
      { category: '问婚嫁', content: '不宜往求。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 39,
    position: 4,
    judgments: [
      { category: '占问时运', content: '往蹇，来连。', source: '高岛易断' },
      { category: '问商业', content: '不宜独往，宜连合。', source: '高岛易断' },
      { category: '问家宅', content: '宅运宜连合。', source: '高岛易断' },
      { category: '问疾病', content: '宜连医。', source: '高岛易断' },
      { category: '问婚嫁', content: '宜连媒。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 39,
    position: 5,
    judgments: [
      { category: '占问时运', content: '大蹇，朋来。', source: '高岛易断' },
      { category: '问商业', content: '有朋友相助。', source: '高岛易断' },
      { category: '问家宅', content: '宅运有朋友助。', source: '高岛易断' },
      { category: '问疾病', content: '有良医。', source: '高岛易断' },
      { category: '问婚嫁', content: '有朋友助。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 39,
    position: 6,
    judgments: [
      { category: '占问时运', content: '往蹇，来硕，吉。利见大人。', source: '高岛易断' },
      { category: '问商业', content: '不宜往，宜来，吉。', source: '高岛易断' },
      { category: '问家宅', content: '宅运有贵人助。', source: '高岛易断' },
      { category: '问疾病', content: '有良医。', source: '高岛易断' },
      { category: '问婚嫁', content: '有贵人助。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 40,
    position: 1,
    judgments: [
      { category: '占问时运', content: '无咎。', source: '高岛易断' },
      { category: '问商业', content: '无咎。', source: '高岛易断' },
      { category: '问家宅', content: '宅运平安。', source: '高岛易断' },
      { category: '问疾病', content: '可愈。', source: '高岛易断' },
      { category: '问婚嫁', content: '可成。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 40,
    position: 2,
    judgments: [
      { category: '占问时运', content: '田获三狐，得黄矢，贞吉。', source: '高岛易断' },
      { category: '问商业', content: '有获，吉。', source: '高岛易断' },
      { category: '问家宅', content: '宅运有获。', source: '高岛易断' },
      { category: '问疾病', content: '可愈。', source: '高岛易断' },
      { category: '问婚嫁', content: '有获。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 40,
    position: 3,
    judgments: [
      { category: '占问时运', content: '负且乘，致寇至，贞吝。', source: '高岛易断' },
      { category: '问商业', content: '招盗，宜慎。', source: '高岛易断' },
      { category: '问家宅', content: '宅运防盗。', source: '高岛易断' },
      { category: '问疾病', content: '症重，宜慎。', source: '高岛易断' },
      { category: '问婚嫁', content: '不宜。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 40,
    position: 4,
    judgments: [
      { category: '占问时运', content: '解而拇，朋至斯孚。', source: '高岛易断' },
      { category: '问商业', content: '有朋友相助。', source: '高岛易断' },
      { category: '问家宅', content: '宅运有朋友助。', source: '高岛易断' },
      { category: '问疾病', content: '可愈。', source: '高岛易断' },
      { category: '问婚嫁', content: '有朋友助。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 40,
    position: 5,
    judgments: [
      { category: '占问时运', content: '君子维有解，吉。有孚于小人。', source: '高岛易断' },
      { category: '问商业', content: '君子经营吉。', source: '高岛易断' },
      { category: '问家宅', content: '宅运君子吉。', source: '高岛易断' },
      { category: '问疾病', content: '可愈。', source: '高岛易断' },
      { category: '问婚嫁', content: '君子吉。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 40,
    position: 6,
    judgments: [
      { category: '占问时运', content: '公用射隼于高墉之上，获之，无不利。', source: '高岛易断' },
      { category: '问商业', content: '有获，大吉。', source: '高岛易断' },
      { category: '问家宅', content: '宅运有获。', source: '高岛易断' },
      { category: '问疾病', content: '可愈。', source: '高岛易断' },
      { category: '问婚嫁', content: '有获。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 41,
    position: 1,
    judgments: [
      { category: '占问时运', content: '已往莫追，目下宜急加勉，自可免咎。', source: '高岛易断' },
      { category: '问战征', content: '宜速进兵，不可迟缓，辎重粮食，亦须"酌损"。', source: '高岛易断' },
      { category: '问营商', content: '贩运宜速，审时度势，宜酌量前行，定可获利，必无咎也。', source: '高岛易断' },
      { category: '问功名', content: '速往则得，迟缓无成。', source: '高岛易断' },
      { category: '问婚姻', content: '即日迎娶，两姓好合。', source: '高岛易断' },
      { category: '问家宅', content: '须速他迁，吉。', source: '高岛易断' },
      { category: '问讼事', content: '即速了结罢讼。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 41,
    position: 2,
    judgments: [
      { category: '占问时运', content: '好运方来，不减不加，万事得中，自然获利。', source: '高岛易断' },
      { category: '问战征', content: '不必减粮，不必添兵，坚守中营，有胜无败；若鲁莽前往，恐有凶也。', source: '高岛易断' },
      { category: '问营商', content: '货物合宜，不必减价，无不获利。', source: '高岛易断' },
      { category: '问功名', content: '无荣无辱，青毡守旧。', source: '高岛易断' },
      { category: '问婚姻', content: '两姓门户相当，吉。', source: '高岛易断' },
      { category: '问家宅', content: '地位得中，不必添改，大利。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 41,
    position: 3,
    judgments: [
      { category: '占问时运', content: '财运平平，少则获利，多则有损。利双月，不利单月。', source: '高岛易断' },
      { category: '问战征', content: '宜从兑方，一路进军，自有援兵相助，有胜无败。', source: '高岛易断' },
      { category: '问营商', content: '商业宜于一人独做，否则二人同办，再多则必有损。', source: '高岛易断' },
      { category: '问功名', content: '须一人独往，必得成名。', source: '高岛易断' },
      { category: '问婚姻', content: '得友，即得偶也，吉。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 41,
    position: 4,
    judgments: [
      { category: '占问时运', content: '目下虽有小灾，得救即疗，可以转忧为喜。', source: '高岛易断' },
      { category: '问营商', content: '货宜减办，使之即往贩售，获利可喜。', source: '高岛易断' },
      { category: '问战征', content: '未免遭伤，医治可疗，无咎。', source: '高岛易断' },
      { category: '问家宅', content: '此宅阴气过盛，宅眷致多疾病，祈祷可疗，无咎。', source: '高岛易断' },
      { category: '问婚姻', content: '四与初相应，初阳四阴，阴阳相合，必成可喜。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 41,
    position: 5,
    judgments: [
      { category: '占问时运', content: '运途全盛，可得意外宠遇。', source: '高岛易断' },
      { category: '问战征', content: '军事先卜，其兆大吉。', source: '高岛易断' },
      { category: '问营商', content: '财运之来，虽辞不去。', source: '高岛易断' },
      { category: '问功名', content: '自天祐之，吉无不利。', source: '高岛易断' },
      { category: '问婚姻', content: '天作之合，吉。', source: '高岛易断' },
      { category: '问疾病', content: '病愈之后，且可得财，吉。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 41,
    position: 6,
    judgments: [
      { category: '占问时运', content: '目下绝无窒碍，所往皆利，大吉。', source: '高岛易断' },
      { category: '问战征', content: '军队不须添减，率此以往，攻克战胜，无往不利，可"大得志也"。', source: '高岛易断' },
      { category: '问营商', content: '货价无甚上落，往售皆可获利，大吉。', source: '高岛易断' },
      { category: '问功名', content: '目下即可得志。', source: '高岛易断' },
      { category: '问家宅', content: '此宅不必改造，自得吉利。', source: '高岛易断' },
      { category: '问疾病', content: '当出外求医，无咎。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 43,
    position: 1,
    judgments: [
      { category: '占问时运', content: '负气太盛，任意妄动，动必得咎。', source: '高岛易断' },
      { category: '问战征', content: '将微位卑，恃勇直前，必致败北，咎由自取也。', source: '高岛易断' },
      { category: '问营商', content: '不度地位，不审机宜，率意贩货前往，不特伤财，更防损命，宜慎宜戒！', source: '高岛易断' },
      { category: '问功名', content: '躁进取败。', source: '高岛易断' },
      { category: '问婚姻', content: '门户不当，不合，合则有咎。', source: '高岛易断' },
      { category: '问家宅', content: '此宅地势低下，迁居不利。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 43,
    position: 2,
    judgments: [
      { category: '占问时运', content: '目下运途中正，事事谨慎，即有意外之事，皆可坦然无患。', source: '高岛易断' },
      { category: '问战征', content: '军事最患夜袭，宜时作警备，可以无忧。', source: '高岛易断' },
      { category: '问营商', content: '贩运货物，盗警水火，总宜保险，使可无虑。', source: '高岛易断' },
      { category: '问家宅', content: '此宅阳刚过盛，二爻动而变离，火灾宜防。暮夜更当小心。', source: '高岛易断' },
      { category: '问婚姻', content: '婚字从女，从昏，故称"昏礼"，有暮夜之象。诗云"弋凫与雁"，弋有戎象。"勿恤"，即有喜也。婚姻吉。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 43,
    position: 3,
    judgments: [
      { category: '占问时运', content: '目下运得其正，但阳气过盛，率意独行，未免被人疑忌，然幸可无咎。', source: '高岛易断' },
      { category: '问战征', content: '孤军独入，防中途遇水有阻，然亦无咎。', source: '高岛易断' },
      { category: '问营商', content: '孤客独行，虽得无咎，恐遇雨有阻，濡滞时日。', source: '高岛易断' },
      { category: '问功名', content: '孤芳独赏，恐遭小人所忌。', source: '高岛易断' },
      { category: '问家宅', content: '此屋门面壮丽，栋上恐有渗漏，致被濡湿，急宜修葺，无咎。', source: '高岛易断' },
      { category: '问疾病', content: '面上浮肿，必是湿热之气，上冲所致，医治无咎。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 43,
    position: 4,
    judgments: [
      { category: '占问时运', content: '目下运途不当，作事颠倒，精神不安，所谋难成。', source: '高岛易断' },
      { category: '问战征', content: '臀无肤，是见伤也；行次且，是欲退也；闻言不信，是号令不行也。以此行军，何能决胜乎！', source: '高岛易断' },
      { category: '问营商', content: '心无主见，故贩售货物，每失机宜，获利殊难。', source: '高岛易断' },
      { category: '问功名', content: '次且者，不进之状，焉得成名？', source: '高岛易断' },
      { category: '问疾病', content: '剥肤之灾，其疥癞之患乎？防溃烂及耳，致两耳失聪。', source: '高岛易断' },
      { category: '问婚姻', content: '始则踌躇不决，久之得以牵羊成礼。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 43,
    position: 5,
    judgments: [
      { category: '占问时运', content: '运得中正，万事无咎。', source: '高岛易断' },
      { category: '问战征', content: '五为卦主，是主将也，率诸军以齐进；"中行"者，就大道而行，故得无咎。', source: '高岛易断' },
      { category: '问营商', content: '夬，决去也。爻当五位，时令将过，货物宜决计速售，斯可无咎，否则有悔。', source: '高岛易断' },
      { category: '问功名', content: '五为尊位，其名必显，惟宜远小人，近君子，斯可无咎。', source: '高岛易断' },
      { category: '问家宅', content: '此宅蔓草丛生，几成荒废，当速剪除尽净，居住无咎。', source: '高岛易断' },
      { category: '问婚姻', content: '五与二应，五居兑中，二居乾中，阴阳相合。"羊"取义于祥，有吉祥之兆，故无咎。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 43,
    position: 6,
    judgments: [
      { category: '占问时运', content: '正运已退，更宜警惕，斯可免凶。', source: '高岛易断' },
      { category: '问战征', content: '军事将毕，余孽犹在，所当重申号令，警严戒备，始得廓清。若偷安忘备，终必有凶。', source: '高岛易断' },
      { category: '问营商', content: '上为卦之终，是货物脱售将尽，当重申后约，斯商业得以继续。"无号"，为无商业名目，其业必凶。', source: '高岛易断' },
      { category: '问功名', content: '"无号"，为声名灭绝之象，凶。', source: '高岛易断' },
      { category: '问家宅', content: '凡一宅之中，或书声，或歌声，或笑语声，以至鸡鸣狗吠，皆有声也，"无号"，则寂灭无闻，其家必凶。', source: '高岛易断' },
      { category: '问疾病', content: '是阳尽阴息之症，痛痒不觉，叫号无声，其病危矣。凶。', source: '高岛易断' },
      { category: '问婚姻', content: '媒妁无言，不成。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 44,
    position: 1,
    judgments: [
      { category: '占问时运', content: '目下运途，有所牵制，不可妄动，妄动必凶。', source: '高岛易断' },
      { category: '问战征', content: '初爻为出军之始，巽象阴柔，兵力必弱，显见固守则吉，躁进则凶。', source: '高岛易断' },
      { category: '问营商', content: '利坐贾，不利行商。', source: '高岛易断' },
      { category: '问功名', content: '宜守旧而已。', source: '高岛易断' },
      { category: '问婚姻', content: '九家易曰："丝系于柅，犹女系于男"，正位夫内，故吉。', source: '高岛易断' },
      { category: '问家宅', content: '此宅防有闺范不修之羞。', source: '高岛易断' },
      { category: '问疾病', content: '此病是阴弱之症，宜安居静养。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 44,
    position: 2,
    judgments: [
      { category: '占问时运', content: '人生处世，安得相遇尽为君子？惟当曲意调护，不为小人所害，自得无咎。', source: '高岛易断' },
      { category: '问功名', content: '鱼有化龙之象，"包有鱼"者，鱼已为其所包矣，则升腾可必也。"不利宾"，利必在己也。', source: '高岛易断' },
      { category: '问营商', content: '"包"为包罗富有之象，众惟鱼矣。鱼亦有众多之象，主货物充盈，财利富厚。"不利宾"，为其利非外人所得窃取也。', source: '高岛易断' },
      { category: '问战征', content: '马融曰，"鱼介鳞之物，兵象也"，鱼而能包，是必善用其兵者也。曰"不利宾"，宾即敌也，敌必可破矣。', source: '高岛易断' },
      { category: '问婚姻', content: '鱼阴物，以阳包阴，姻事成矣。', source: '高岛易断' },
      { category: '问家宅', content: '鱼为阴物，象取女子，此宅定是女子主政。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 44,
    position: 3,
    judgments: [
      { category: '占问时运', content: '气运柔弱，诸事迟疑，是以动辄有危。', source: '高岛易断' },
      { category: '问战征', content: '欲进不进，因疑生危，不能得胜也。无大败亦幸矣。', source: '高岛易断' },
      { category: '问营商', content: '贩运不快，安能获利？', source: '高岛易断' },
      { category: '问功名', content: '尚须迟缓以待。', source: '高岛易断' },
      { category: '问婚姻', content: '迟缓可成。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 44,
    position: 4,
    judgments: [
      { category: '占问时运', content: '刚变而柔，运途不正，气量浅狭，是以多凶。', source: '高岛易断' },
      { category: '问战征', content: '主将才力微薄，不能包容众军，防有兵变之祸。', source: '高岛易断' },
      { category: '问营商', content: '"包无鱼"，有囊里空虚之象，何以获利？', source: '高岛易断' },
      { category: '问功名', content: '鱼喜得水，人喜得名，无鱼则水涸，无名则人穷，故凶。', source: '高岛易断' },
      { category: '问婚姻', content: '婚姻之道，重在生育，"包无鱼"，言无胎孕也。凶。', source: '高岛易断' },
      { category: '问家宅', content: '象曰"远民"，此宅必在民居相远之地，是孤村也。恐有不测之灾。', source: '高岛易断' },
      { category: '问疾病', content: '鱼阴象，无鱼是阴已亏极，阳不能包，必凶。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 44,
    position: 5,
    judgments: [
      { category: '占问时运', content: '运行中正，才力所及，自能包罗诸有，虽不言吉，吉可知矣。', source: '高岛易断' },
      { category: '问营商', content: '生意虽不外木植瓜果等品，而包容甚广，自有大财可得。', source: '高岛易断' },
      { category: '问功名', content: '五居尊位，功名自显，但进退荣辱，俱当安命。', source: '高岛易断' },
      { category: '问战征', content: '堂堂之阵，正正之旗，王者之师也。逆者诛，顺者从，有包扫一切之势焉。', source: '高岛易断' },
      { category: '问婚姻', content: '有瓜蓏绵绵之象。', source: '高岛易断' },
      { category: '问疾病', content: '为热包寒之象。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 44,
    position: 6,
    judgments: [
      { category: '占问时运', content: '运至于上，运亦穷矣。', source: '高岛易断' },
      { category: '问营商', content: '角逐者争利也，"姤其角"，为能得其首利也。盖吝在商人，"吝，无咎"焉。', source: '高岛易断' },
      { category: '问功名', content: '有头角峥嵘之兆。世传魁星有角，"姤其角"是遇魁星也，功名大利。', source: '高岛易断' },
      { category: '问战征', content: '角力角胜，皆有战象。角之字为刀下用，此战大有杀戮，是穷兵之祸也。', source: '高岛易断' },
      { category: '问疾病', content: '想头角之上患疮，医治无咎。', source: '高岛易断' },
      { category: '问婚姻', content: '上居乾之极，上穷返下，必是老夫而求女妻也。', source: '高岛易断' },
      { category: '问六甲', content: '上穷而返，生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 53,
    position: 1,
    judgments: [
      { category: '占问时运', content: '人微年少，运途初行，虽危无咎。', source: '高岛易断' },
      { category: '问战征', content: '屯军江干，防有危厉，幸有谋言来告，得以免咎。', source: '高岛易断' },
      { category: '问营商', content: '货物交易，防有小人从中作难，因约言早成，得以无害。', source: '高岛易断' },
      { category: '问功名', content: '鸿运亨通，初虽在下，自有渐进之象。', source: '高岛易断' },
      { category: '问婚姻', content: '女长男少，幼言既定，当以待年而嫁，无咎也。', source: '高岛易断' },
      { category: '问家宅', content: '此宅临水，防小人有疾厄，然无大咎。', source: '高岛易断' },
      { category: '问疾病', content: '不利小人，大人无咎。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 53,
    position: 2,
    judgments: [
      { category: '占问时运', content: '既得安乐，又得醉饱无忧，吉。', source: '高岛易断' },
      { category: '问战征', content: '兵食充足，军心欢悦，自有安似磐石之象。', source: '高岛易断' },
      { category: '问营商', content: '二爻居《巽》之中，《巽》为商，为利。就爻辞言"干"进"磐"，有渐进渐高之势，吉。', source: '高岛易断' },
      { category: '问功名', content: '有嘉宾宴乐之象，成名必矣，吉。', source: '高岛易断' },
      { category: '问婚姻', content: '二与五相应，即以二五为婚；二五皆吉，可咏百年偕老矣。', source: '高岛易断' },
      { category: '问家宅', content: '此宅地基巩固，一门和乐，吉。', source: '高岛易断' },
      { category: '问疾病', content: '饮食过度所致，宜消食安胃，病即日可愈。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 53,
    position: 3,
    judgments: [
      { category: '占问时运', content: '运途不正，防有外祸。', source: '高岛易断' },
      { category: '问战征', content: '利于守御，不利往征。', source: '高岛易断' },
      { category: '问营商', content: '难望获利，防有盗劫之虞。', source: '高岛易断' },
      { category: '问功名', content: '惟从事军政，可以得名。', source: '高岛易断' },
      { category: '问婚姻', content: '防有始乱终离之憾。', source: '高岛易断' },
      { category: '问家宅', content: '此宅于生产不利。', source: '高岛易断' },
      { category: '问疾病', content: '妇人生产，恐母子不能两全。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 53,
    position: 4,
    judgments: [
      { category: '占问时运', content: '运失其正，但以顺自处，随遇得安，亦可无咎。', source: '高岛易断' },
      { category: '问营商', content: '聊有所得，差足免咎。', source: '高岛易断' },
      { category: '问战征', content: '得其倚角，敌势已衰。', source: '高岛易断' },
      { category: '问功名', content: '从事角逐，所得亦微。', source: '高岛易断' },
      { category: '问疾病', content: '病在肝木太盛，宜顺气调养。', source: '高岛易断' },
      { category: '问家宅', content: '此宅多寡居之妇，有遇人不淑之感。', source: '高岛易断' },
      { category: '问行人', content: '在外失年，聊以将顺容身，一时不归。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 53,
    position: 5,
    judgments: [
      { category: '占问时运', content: '运途中正，三年后，无往不利，吉。', source: '高岛易断' },
      { category: '问战征', content: '屯军大阜，三年后，所向无敌，吉。', source: '高岛易断' },
      { category: '问功名', content: '三年后必成。', source: '高岛易断' },
      { category: '问营商', content: '目下难望获利，至上爻自可独占厚利，盖在三岁后也。', source: '高岛易断' },
      { category: '问婚姻', content: '得子稍迟，吉。', source: '高岛易断' },
      { category: '问家宅', content: '宅在大阜之间，吉。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 53,
    position: 6,
    judgments: [
      { category: '占问时运', content: '气运正盛，可出而用也，吉。', source: '高岛易断' },
      { category: '问战征', content: '从平陆进军，威仪显赫，攻无不克。', source: '高岛易断' },
      { category: '问营商', content: '货美价高，定可获利。', source: '高岛易断' },
      { category: '问功名', content: '出而用世，可以仪表天下。', source: '高岛易断' },
      { category: '问婚姻', content: '吉。', source: '高岛易断' },
      { category: '问家宅', content: '此宅地位崇高，瞻观有耀，吉。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 56,
    position: 1,
    judgments: [
      { category: '占问时运', content: '出身既微，行运亦陋，孤身作客，恐难获利。', source: '高岛易断' },
      { category: '问营商', content: '资财微细，生业亦卑，难免灾祸。', source: '高岛易断' },
      { category: '问功名', content: '虽得亦卑。', source: '高岛易断' },
      { category: '问战征', content: '按五百人为旅，军力单薄，有败无胜。', source: '高岛易断' },
      { category: '问家宅', content: '地位委琐龌龊，必小户之家也。慎可免灾。', source: '高岛易断' },
      { category: '问婚姻', content: '《诗》"琐琐姻娅，则无臞仕"，知非名门大族也。', source: '高岛易断' },
      { category: '问疾病', content: '有小灾悔，初起可治。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 56,
    position: 2,
    judgments: [
      { category: '占问时运', content: '有财有人，运途中正，自无忧也。', source: '高岛易断' },
      { category: '问营商', content: '得财则可以谋利，得人则可以共事，千里作客，可以无忧矣。', source: '高岛易断' },
      { category: '问功名', content: '是以财捐纳者。', source: '高岛易断' },
      { category: '问战征', content: '资财，即军饷也，"童仆"，即军卒也，饷足兵强，攻无不克。', source: '高岛易断' },
      { category: '问家宅', content: '必是寄居之宅，喜得财用充裕，童从顺正，家室和平，自无咎祸也。', source: '高岛易断' },
      { category: '问婚姻', content: '有富室赘婿之象。', source: '高岛易断' },
      { category: '问疾病', content: '旅处得病，喜有童仆，尽心服侍，可以调养痊愈。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 56,
    position: 3,
    judgments: [
      { category: '占问时运', content: '运途颠倒，破败重重，大为可危。', source: '高岛易断' },
      { category: '问战征', content: '谨防火攻，尤虑军心涣散，不战自遁。', source: '高岛易断' },
      { category: '问营商', content: '防有不测之祸，可危。', source: '高岛易断' },
      { category: '问功名', content: '目下难望，必二年后，至五爻曰"终以誉命"，可以成名矣。', source: '高岛易断' },
      { category: '问婚姻', content: '一时不成，难偕其老。', source: '高岛易断' },
      { category: '问家宅', content: '防有祝融之灾。', source: '高岛易断' },
      { category: '问疾病', content: '本人可愈，儿女或童仆，难以保全。', source: '高岛易断' },
      { category: '问失物', content: '必是童仆所窃。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 56,
    position: 4,
    judgments: [
      { category: '占问时运', content: '盛运未至，所得亦仅耳。', source: '高岛易断' },
      { category: '问营商', content: '出外贩运少有获利，未能满望。', source: '高岛易断' },
      { category: '问功名', content: '一时未得，容待来年，定可成就也。', source: '高岛易断' },
      { category: '问战征', content: '可以掳得敌粮，未能遽获大胜。', source: '高岛易断' },
      { category: '问婚姻', content: '嫁资颇厚，但是偏房，非正嫡也。', source: '高岛易断' },
      { category: '问家宅', content: '地位不当。', source: '高岛易断' },
      { category: '问疾病', content: '是心疾也，因谋望不遂，忧郁所致。', source: '高岛易断' },
      { category: '问失物', content: '可得。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 56,
    position: 5,
    judgments: [
      { category: '占问时运', content: '运途柔顺，小往大来，终有庆也。', source: '高岛易断' },
      { category: '问营商', content: '虽小失，有大得也，名利兼全。', source: '高岛易断' },
      { category: '问功名', content: '晚运亨通，声名上达。', source: '高岛易断' },
      { category: '问战征', content: '有一翦成功之象。', source: '高岛易断' },
      { category: '问家宅', content: '翚飞鸟革，善美堪称。', source: '高岛易断' },
      { category: '问婚姻', content: '二五得应，世称佳偶。', source: '高岛易断' },
      { category: '问疾病', content: '想是身临矢石，以忠殉难，得有赐命之荣。', source: '高岛易断' },
      { category: '问六甲', content: '有桑弧蓬矢之兆，男喜也。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 56,
    position: 6,
    judgments: [
      { category: '占问时运', content: '行运已极，高而无与，乐极悲来，凶之道也。', source: '高岛易断' },
      { category: '问战征', content: '防有焚营劫寨之危。', source: '高岛易断' },
      { category: '问营商', content: '先小利，后大损，凶灾叠至，可危可危。', source: '高岛易断' },
      { category: '问功名', content: '有丧无得。', source: '高岛易断' },
      { category: '问家宅', content: '有覆巢累卵之危。', source: '高岛易断' },
      { category: '问婚姻', content: '先成后散，先喜后悲，凶。', source: '高岛易断' },
      { category: '问疾病', content: '属牛者必凶。', source: '高岛易断' },
      { category: '问六甲', content: '生女，不育。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 60,
    position: 1,
    judgments: [
      { category: '占问时运', content: '运途未盛，宜谨守户庭，得以免咎。', source: '高岛易断' },
      { category: '问营商', content: '宜坐贾，不宜行商，无咎。', source: '高岛易断' },
      { category: '问功名', content: '目下宜杜门静守，至四爻可以成名。', source: '高岛易断' },
      { category: '问战征', content: '初当离散之余，军民乍聚，宜养其锐气，不宜出战。', source: '高岛易断' },
      { category: '问婚姻', content: '初与四相应，四得承顺之道，即妇道之正也，故无咎。', source: '高岛易断' },
      { category: '问家宅', content: '宜安居静养，无害。', source: '高岛易断' },
      { category: '问失物', content: '尚在户庭之内，可寻得之。', source: '高岛易断' },
      { category: '问行人', content: '尚未起行。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 60,
    position: 2,
    judgments: [
      { category: '占问时运', content: '运途方盛，时会亦好，咎在因循自误，为可惜也。', source: '高岛易断' },
      { category: '问战征', content: '时可进取，乃畏首畏尾，固守不出，反致凶也。', source: '高岛易断' },
      { category: '问营商', content: '货物充积，时价得宜，本可获利，乃因拘墟失时，反致耗损。《兑》为毁折，是失象也。', source: '高岛易断' },
      { category: '问功名', content: '时会未逢，难望成名。', source: '高岛易断' },
      { category: '问婚姻', content: '桃夭失时，难免旷怨，凶。', source: '高岛易断' },
      { category: '问家宅', content: '门户闭锁，无人之象，凶。', source: '高岛易断' },
      { category: '问疾病', content: '病由步履艰难，几成痿痹。', source: '高岛易断' },
      { category: '问失物', content: '是内窃也。', source: '高岛易断' },
      { category: '问讼事', content: '恐有囚禁之祸。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 60,
    position: 3,
    judgments: [
      { category: '占问时运', content: '壮不自检，老大徒悲，其将谁怨乎？', source: '高岛易断' },
      { category: '问战征', content: '临时不谋，后悔难追。', source: '高岛易断' },
      { category: '问营商', content: '当其获利，骄奢无度，一旦耗失，便致哀嗟，咎由自取耳。', source: '高岛易断' },
      { category: '问婚姻', content: '有先喜后悲之象。', source: '高岛易断' },
      { category: '问功名', content: '随得随失。', source: '高岛易断' },
      { category: '问家宅', content: '三以阴居阳，地位不当，必致先富后贫。', source: '高岛易断' },
      { category: '问疾病', content: '病由不节饮食所致，幸无大咎。', source: '高岛易断' },
      { category: '问失物', content: '付之一叹，不须怨人。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 60,
    position: 4,
    judgments: [
      { category: '占问时运', content: '一路平安。', source: '高岛易断' },
      { category: '问战征', content: '善战者在先安军心，军心安，则临危不惧，而所向有功。', source: '高岛易断' },
      { category: '问营商', content: '四在外卦之始，必是初次贩货出外，能事事节俭，斯得安居外地，而所谋亦得亨通矣。', source: '高岛易断' },
      { category: '问功名', content: '能承上意，必得成名。', source: '高岛易断' },
      { category: '问婚姻', content: '四以阴居阴，得位承阳，自得家室安全。', source: '高岛易断' },
      { category: '问家宅', content: '平安获吉。', source: '高岛易断' },
      { category: '问疾病', content: '病由口入，能节饮食，自得安泰。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 60,
    position: 5,
    judgments: [
      { category: '占问时运', content: '运如嚼蔗，到老愈甘。', source: '高岛易断' },
      { category: '问营商', content: '稼穑作甘，当以贩运谷米为吉。"往有尚"，往者往外也，尤当贩米，往外洋销售，定必获利。', source: '高岛易断' },
      { category: '问功名', content: '苦尽甘来，功名必显。', source: '高岛易断' },
      { category: '问家宅', content: '五爻得位，中央为甘，知此宅必地位中正，家风正直，节俭足以嘉尚。', source: '高岛易断' },
      { category: '问婚姻', content: '女之嫁曰往"往有尚"，谓往而成礼。"甘"者，甘心相从，有百年好合之象，吉。', source: '高岛易断' },
      { category: '问疾病', content: '病在中宫，甘则中满，须宜节食为要。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 60,
    position: 6,
    judgments: [
      { category: '占问时运', content: '运途亦正，为固执不通，以致终身穷苦。', source: '高岛易断' },
      { category: '问营商', content: '机会已极，不知变通，以致穷迫，徒自苦耳。', source: '高岛易断' },
      { category: '问功名', content: '其人则守正不阿，困苦自守，难望成名。', source: '高岛易断' },
      { category: '问战征', content: '爻象重阴，柔弱无力，又当地穷势极，只知苦守不出，终必凶矣。', source: '高岛易断' },
      { category: '问疾病', content: '阴盛阳衰，病势已极，凶。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 57,
    position: 1,
    judgments: [
      { category: '占问时运', content: '运途不正，心神犹豫，是以谋事皆颠倒无成。', source: '高岛易断' },
      { category: '问营商', content: '《巽》本为利，因疑而败，以断而成，知犹豫者必难获利也。', source: '高岛易断' },
      { category: '问功名', content: '就武可成。', source: '高岛易断' },
      { category: '问婚姻', content: '不在彬彬文士，而宜桓桓虎臣。', source: '高岛易断' },
      { category: '问家宅', content: '此宅朝东南，地位不当，进退不便，宜改朝西为利。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 57,
    position: 2,
    judgments: [
      { category: '占问时运', content: '得神明保佑，运途多吉。', source: '高岛易断' },
      { category: '问营商', content: '凡贩运货物，有不决者，宜问诸卜筮，自能迪吉。', source: '高岛易断' },
      { category: '问功名', content: '得有神助，吉。', source: '高岛易断' },
      { category: '问战征', content: '地位既低，进退两难，当此之时，惟告求神明，自可获吉。无咎。', source: '高岛易断' },
      { category: '问婚姻', content: '卜之则吉。', source: '高岛易断' },
      { category: '问家宅', content: '宜祷。', source: '高岛易断' },
      { category: '问疾病', content: '宜祭祷床公床婆，自得无咎。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 57,
    position: 3,
    judgments: [
      { category: '占问时运', content: '目前运途卑屈，未免为人所贱。', source: '高岛易断' },
      { category: '问战征', content: '一味委靡，力折志衰，难以克捷。', source: '高岛易断' },
      { category: '问功名', content: '卑琐又卑，所得亦微矣。', source: '高岛易断' },
      { category: '问营商', content: '巽顺过甚，未能与人争强，何能获利？', source: '高岛易断' },
      { category: '问婚姻', content: '门户低微，或亦可重。', source: '高岛易断' },
      { category: '问家宅', content: '屋宇狭小，必是贫穷之户。', source: '高岛易断' },
      { category: '问讼事', content: '柔弱被欺，份当自取。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 57,
    position: 4,
    judgments: [
      { category: '占问时运', content: '运途正当获利，无悔有获。', source: '高岛易断' },
      { category: '问战征', content: '从东南进兵，自得斩获有功。', source: '高岛易断' },
      { category: '问功名', content: '当以献功获赏，出身成名。', source: '高岛易断' },
      { category: '问营商', content: '当以采办皮革羽毛等品致富。', source: '高岛易断' },
      { category: '问婚姻', content: '婚礼，古时弋凫射雀，亦田象。', source: '高岛易断' },
      { category: '问疾病', content: '曰"悔亡"，病必可愈。', source: '高岛易断' },
      { category: '问失物', content: '可得。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 57,
    position: 5,
    judgments: [
      { category: '占问时运', content: '逢丁癸日作事，无往不利，大吉。', source: '高岛易断' },
      { category: '问营商', content: '生业宜取木爻，日辰宜用金日，初有小悔，后必大利，吉。', source: '高岛易断' },
      { category: '问功名', content: '位得中正，爻曰"贞吉"，逢丁癸之年，必得成名。', source: '高岛易断' },
      { category: '问战征', content: '其于师旅，必叮咛以告诫，其于地势，必周详以揆度。临事好谋，先后不怠，故战无不胜，大吉。', source: '高岛易断' },
      { category: '问婚姻', content: '丁火癸水，水火相配，吉。', source: '高岛易断' },
      { category: '问家宅', content: '其宅坐北向南，地位中正，大吉。', source: '高岛易断' },
      { category: '问疾病', content: '三日可愈。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 57,
    position: 6,
    judgments: [
      { category: '占问时运', content: '运途不正，作事委靡，愈高愈危，有丧无得，凶。', source: '高岛易断' },
      { category: '问战征', content: '身为主帅，畏首畏尾，必致丧师辱国，身亦危矣。', source: '高岛易断' },
      { category: '问营商', content: '可断不断，因循失时，耗损必大。', source: '高岛易断' },
      { category: '问功名', content: '必不能保其终也。', source: '高岛易断' },
      { category: '问婚姻', content: '有惧内之象，难期偕老，凶。', source: '高岛易断' },
      { category: '问家宅', content: '主有丧，凶。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 58,
    position: 1,
    judgments: [
      { category: '占问时运', content: '运当初爻，以和为贵，万事获吉。', source: '高岛易断' },
      { category: '问战征', content: '师克在和，民兵咸悦，有不战来归之象。', source: '高岛易断' },
      { category: '问营商', content: '《兑》为正秋，万实告成，天地自然之美利也。营商得此，吉无不利。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 58,
    position: 2,
    judgments: [
      { category: '占问时运', content: '运得中正，众心交孚，是以有吉，无悔。', source: '高岛易断' },
      { category: '问战征', content: '上下一心，令出惟行，有匹夫不可夺之志，战无不克，吉。', source: '高岛易断' },
      { category: '问营商', content: '贸易虽在逐利，要必以信为本，有信则彼此无欺，而商业乃可通行矣。', source: '高岛易断' },
      { category: '问婚姻', content: '二五相孚，是阴阳相偶也，吉。', source: '高岛易断' },
      { category: '问家宅', content: '"有孚挛如，富以其邻"，谓能与邻家，并力致富也。', source: '高岛易断' },
      { category: '问功名', content: '《中孚》二爻曰，"我有好爵，吾与尔靡之"，有父子同升之吉。', source: '高岛易断' },
      { category: '问疾病', content: '是因疑致疾，今既得相孚，灾悔自亡。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 58,
    position: 3,
    judgments: [
      { category: '占问时运', content: '人品卑鄙，专以谄笑求悦，未免为人所贱矣。', source: '高岛易断' },
      { category: '问营商', content: '通商之来，固宜和悦相招，然悦不以道，尔许我虞，是失商道之正也。', source: '高岛易断' },
      { category: '问功名', content: '奔竞而来，虽荣必败。', source: '高岛易断' },
      { category: '问战征', content: '要皆招徕乌合之众也，不能久持。', source: '高岛易断' },
      { category: '问婚姻', content: '有始合终离之象。', source: '高岛易断' },
      { category: '问疾病', content: '病有外祟，其象本凶，三至四隔一爻，早则一日，迟则一月，可望愈快。', source: '高岛易断' },
      { category: '问讼事', content: '是外来之祸，凶。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 58,
    position: 4,
    judgments: [
      { category: '占问时运', content: '运途未稳，逆则有忧，顺则有喜，万事宜斟酌行之。', source: '高岛易断' },
      { category: '问营商', content: '"四多惧"，营商在外，必有忧惧不安之事，商量出之，方得有喜。', source: '高岛易断' },
      { category: '问功名', content: '功名必从艰苦患难而来者，方得大就。', source: '高岛易断' },
      { category: '问婚姻', content: '一时疑惧未成，必待媒妁再三说合，终得成合有喜。', source: '高岛易断' },
      { category: '问家宅', content: '现下宅中不安，致多疾厄。《兑》为秋，必待秋时，得以平安有喜。', source: '高岛易断' },
      { category: '问疾病', content: '病由心神不安所致，得逢喜事，胸怀宽悦自愈。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 58,
    position: 5,
    judgments: [
      { category: '占问时运', content: '位得其正，运当其盛，盛极则剥，尤当预防，能时时防剥，斯时时得盛矣。', source: '高岛易断' },
      { category: '问战征', content: '"孚于剥"者，谓当生死存亡之地，军兵一心，感激奋勇，而不以为剥，诚可谓众志成城，无往不克矣。', source: '高岛易断' },
      { category: '问营商', content: '剥者，剥削也，虽有剥削，而深信无疑，必有大利。', source: '高岛易断' },
      { category: '问功名', content: '能安命，虽剥必亨。', source: '高岛易断' },
      { category: '问疾病', content: '有剥肤之疾，速治则愈。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 58,
    position: 6,
    judgments: [
      { category: '占问时运', content: '上为卦之终，行运已极，必藉人引掖而能行，无吉无凶，平平而已。', source: '高岛易断' },
      { category: '问功名', content: '虽得他人荐引，亦已晚矣。', source: '高岛易断' },
      { category: '问营商', content: '得人引导，方可交易，上在卦外，是出洋经营也。"未光"者，未能大得利也。', source: '高岛易断' },
      { category: '问战征', content: '《兑》属正西，"引兑"者，相引而入西也。是引兵向西，与三合队，但当上爻，时会已迟，恐未必能奏功也。', source: '高岛易断' },
      { category: '问疾病', content: '内邪能引而外达，乃得望愈。', source: '高岛易断' },
      { category: '问家宅', content: '宅地纯阴，与三合体，防有内外牵引之患。', source: '高岛易断' },
      { category: '问婚姻', content: '爻象皆柔，恐是勾引而成，非夫妇之正礼也。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 59,
    position: 1,
    judgments: [
      { category: '占问时运', content: '运多险难，幸而遇救，危而反吉。', source: '高岛易断' },
      { category: '问战征', content: '初次临阵，赖战马精良，得以解围出险，故吉。', source: '高岛易断' },
      { category: '问营商', content: '资本微薄，深幸同事相助，得以获利。', source: '高岛易断' },
      { category: '问功名', content: '行午马运，必可成名。', source: '高岛易断' },
      { category: '问家宅', content: '新建大厦，好有禄马临向，吉。', source: '高岛易断' },
      { category: '问婚姻', content: '《乾》造以肖马者吉。', source: '高岛易断' },
      { category: '问疾病', content: '病宜急治，得遇马姓医士为吉。', source: '高岛易断' },
      { category: '问行人', content: '驿马已动，即日可归。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 59,
    position: 2,
    judgments: [
      { category: '占问时运', content: '运途顺适，得如所愿，灾悔俱亡。', source: '高岛易断' },
      { category: '问营商', content: '运货贸易，得所凭依，可以如愿而偿也，吉。', source: '高岛易断' },
      { category: '问功名', content: '所愿必遂。', source: '高岛易断' },
      { category: '问战征', content: '虽当涣散败奔，得所依藉，可图恢复，何悔之有？', source: '高岛易断' },
      { category: '问婚姻', content: '内卦《坤》体，二变为《乾》成《坎》，《坎》为中男；外卦《乾》体，四变为《坤》成《巽》，《巽》为长女，此配必女长于男。木水相生，佳偶也。', source: '高岛易断' },
      { category: '问家宅', content: '此宅眷属有奔败之难，幸在外得所凭依，所谓适我愿也。', source: '高岛易断' },
      { category: '问疾病', content: '郁郁不乐，隐几而卧，得遇良医，可以无忧。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 59,
    position: 3,
    judgments: [
      { category: '占问时运', content: '三处《坎》之极，是运当坎险之时，忘身赴难，得以出险，可免悔也。', source: '高岛易断' },
      { category: '问战征', content: '能国而忘身，忠勇可嘉，去复何悔？', source: '高岛易断' },
      { category: '问营商', content: '远货在外，跋涉风波，备尝艰苦，有重财轻命之象。', source: '高岛易断' },
      { category: '问功名', content: '有杀身成仁，名垂竹帛之荣。', source: '高岛易断' },
      { category: '问婚姻', content: '有捐躯尽节之志，可悲，可嘉。', source: '高岛易断' },
      { category: '问家宅', content: '此宅临坎水之上，宅主宜出行在办，得可免灾。', source: '高岛易断' },
      { category: '问行人', content: '未归。', source: '高岛易断' },
      { category: '问六甲', content: '分娩在即，生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 59,
    position: 4,
    judgments: [
      { category: '占问时运', content: '能解脱困难，复成基业，正大运亨通之时。', source: '高岛易断' },
      { category: '问营商', content: '绝大手段，能散财济危，又能独成巨壑。', source: '高岛易断' },
      { category: '问功名', content: '有独出冠时之概。', source: '高岛易断' },
      { category: '问战征', content: '军容之盛，忽散忽聚，忽高忽低，忽而万马无声，忽而一丘高峙，变化之妙，有出意表者，此神化之兵也。', source: '高岛易断' },
      { category: '问疾病', content: '散其外邪，又当聚其元气，病自疗矣。', source: '高岛易断' },
      { category: '问家宅', content: '邻居旷远，独成一家，自得幽趣，吉。', source: '高岛易断' },
      { category: '问讼事', content: '"涣其群"，其讼必解矣，吉。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 59,
    position: 5,
    judgments: [
      { category: '占问时运', content: '运位得正，语默动静，百事皆吉。', source: '高岛易断' },
      { category: '问营商', content: '地位正当，货物流通，所到无不获利。', source: '高岛易断' },
      { category: '问功名', content: '位近至尊，名闻天下，大吉。', source: '高岛易断' },
      { category: '问战征', content: '号令严明，军威整肃，得奏汗马之勋。', source: '高岛易断' },
      { category: '问婚姻', content: '必得贵婿。', source: '高岛易断' },
      { category: '问家宅', content: '此宅非寻常百姓之家。', source: '高岛易断' },
      { category: '问疾病', content: '一汗即愈。', source: '高岛易断' },
      { category: '问六甲', content: '生女，主贵。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 59,
    position: 6,
    judgments: [
      { category: '占问时运', content: '运途通达，灾去福来。', source: '高岛易断' },
      { category: '问战征', content: '卦体从《乾》《坤》来，《坤》上曰"龙战于野，其血玄黄"，有战则两伤之象。', source: '高岛易断' },
      { category: '问营商', content: '血者，资财也。商舶远出，贸易亨通，可以获利，自无忧也。', source: '高岛易断' },
      { category: '问功名', content: '有投笔从军之象。', source: '高岛易断' },
      { category: '问婚姻', content: '有远嫁之象。', source: '高岛易断' },
      { category: '问家宅', content: '宅主防有血光之灾，远避可以无咎。', source: '高岛易断' },
      { category: '问疾病', content: '是气血淤结之患，宜疏通脉络，可以免灾。', source: '高岛易断' },
      { category: '问失物', content: '此物已去远，不可复得。', source: '高岛易断' },
      { category: '问讼事', content: '宜远出避之，无咎。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 61,
    position: 1,
    judgments: [
      { category: '占问时运', content: '阳刚当令，用心专一，不惑于他途，故吉。', source: '高岛易断' },
      { category: '问营商', content: '安于本业，见异不迁，以交冬令为利。', source: '高岛易断' },
      { category: '问功名', content: '有志竟成。', source: '高岛易断' },
      { category: '问战征', content: '《巽》初爻曰"利武人之贞"，从禽从戎，其义相同，所当专心一志，踊跃前进，自可获胜。吉。', source: '高岛易断' },
      { category: '问婚姻', content: '有从一而终之象。', source: '高岛易断' },
      { category: '问疾病', content: '病可无虞，但恐有他变，变则危矣。', source: '高岛易断' },
      { category: '问讼事', content: '恐有别生枝节。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 61,
    position: 2,
    judgments: [
      { category: '占问时运', content: '此唱彼和，适得我愿，正当运途亨通之会。', source: '高岛易断' },
      { category: '问营商', content: '主客同心，气谊相投，有交相获利之象。', source: '高岛易断' },
      { category: '问功名', content: '有父子同升之庚。', source: '高岛易断' },
      { category: '问战征', content: '上下一体，如以臂使手，以手使指，一气相连，有进则共进，退则共退之象，未易攻击者。', source: '高岛易断' },
      { category: '问婚姻', content: '得夫妇唱随之乐。', source: '高岛易断' },
      { category: '问疾病', content: '是传染之症。', source: '高岛易断' },
      { category: '问家宅', content: '必是贵显之家，且得孝贤之子。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 61,
    position: 3,
    judgments: [
      { category: '占问时运', content: '目下运途颠倒。', source: '高岛易断' },
      { category: '问营商', content: '忽盈忽亏，忽成忽败，皆由主谋不定。', source: '高岛易断' },
      { category: '问功名', content: '升降无常，荣辱随之。', source: '高岛易断' },
      { category: '问战征', content: '强敌在前，难以制胜。', source: '高岛易断' },
      { category: '问婚姻', content: '反复未成。', source: '高岛易断' },
      { category: '问家宅', content: '宅神不安，事多颠倒。', source: '高岛易断' },
      { category: '问疾病', content: '时重时轻，防有鬼祟。', source: '高岛易断' },
      { category: '问行人', content: '欲归复止，一时未定。', source: '高岛易断' },
      { category: '问失物', content: '防得而复失。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 61,
    position: 4,
    judgments: [
      { category: '占问时运', content: '运当全盛，宜保泰持盈，去私从公，得以无咎。', source: '高岛易断' },
      { category: '问营商', content: '"月几望"，喻财利之丰盈；"马匹亡"，喻谋事之快利。吉。', source: '高岛易断' },
      { category: '问功名', content: '有春风得意之象。', source: '高岛易断' },
      { category: '问战征', content: '宜于月夜进攻，马脱蹄，兵衔枚，奋勇而上，定可获胜。', source: '高岛易断' },
      { category: '问婚姻', content: '愿望颇丰，"匹亡"者，恐不久有丧偶之灾。', source: '高岛易断' },
      { category: '问疾病', content: '三五之期不利。', source: '高岛易断' },
      { category: '问家宅', content: '此宅阴气太盛，恐同居中，难免死亡之祸。', source: '高岛易断' },
      { category: '问行人', content: '十四五可归。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 61,
    position: 5,
    judgments: [
      { category: '占问时运', content: '所谋所求，无不称心。', source: '高岛易断' },
      { category: '问营商', content: '同心协力，合伙经营，无不获利。', source: '高岛易断' },
      { category: '问功名', content: '有求必成。', source: '高岛易断' },
      { category: '问战征', content: '军心团结，戮力同心，自能制胜。', source: '高岛易断' },
      { category: '问婚姻', content: '有二人同心，百年好合之庆。', source: '高岛易断' },
      { category: '问家宅', content: '一家和乐，百室盈止。', source: '高岛易断' },
      { category: '问疾病', content: '病由肝风，致手足牵挛，带病延年，尚无咎也。', source: '高岛易断' },
      { category: '问讼事', content: '防有桎梏之灾。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 61,
    position: 6,
    judgments: [
      { category: '占问时运', content: '运途亦盛，但虚而无实，转觉可危。', source: '高岛易断' },
      { category: '问营商', content: '场面颇广，声势亦宏，有外观而无内蕴，恐其不能久也。', source: '高岛易断' },
      { category: '问功名', content: '绳盗灵声，君子所耻。', source: '高岛易断' },
      { category: '问婚姻', content: '恐难偕老。', source: '高岛易断' },
      { category: '问家宅', content: '此宅有牝鸡司晨之象，家业难保，凶。', source: '高岛易断' },
      { category: '问疾病', content: '肝风作痛，喊叫声声，病状颇苦，凶。', source: '高岛易断' },
      { category: '问讼事', content: '势将上控，凶。', source: '高岛易断' },
      { category: '问六甲', content: '生女，小儿善啼，恐难育。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 62,
    position: 1,
    judgments: [
      { category: '占问时运', content: '不安本分，妄思风腾上进，凶。', source: '高岛易断' },
      { category: '问营商', content: '力小而图大，位卑而谋高，不自量力，必致败也。', source: '高岛易断' },
      { category: '问功名', content: '宜卑小自安。', source: '高岛易断' },
      { category: '问战征', content: '初在《艮》下，宜按兵不动。', source: '高岛易断' },
      { category: '问婚姻', content: '宜门户相当，不宜攀结高亲。', source: '高岛易断' },
      { category: '问家宅', content: '屋宇以低小为宜。', source: '高岛易断' },
      { category: '问疾病', content: '神魂飞越，凶。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 62,
    position: 2,
    judgments: [
      { category: '占问时运', content: '运途平顺，不得其全，犹得其半，亦可无咎矣。', source: '高岛易断' },
      { category: '问营商', content: '贸资以往，虽未得满载而归，亦足称十得其五矣。', source: '高岛易断' },
      { category: '问功名', content: '不得其上，已获其中。', source: '高岛易断' },
      { category: '问战征', content: '已得斩其将，拔其旗，夫复何咎？', source: '高岛易断' },
      { category: '问疾病', content: '药力未到。', source: '高岛易断' },
      { category: '问婚姻', content: '恐非正配。', source: '高岛易断' },
      { category: '问家宅', content: '宅神不安。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 62,
    position: 3,
    judgments: [
      { category: '占问时运', content: '运途不正，谨慎自防，尚可免祸。', source: '高岛易断' },
      { category: '问营商', content: '贩运出外，防遇盗劫之凶，宜勿前进。', source: '高岛易断' },
      { category: '问功名', content: '切弗往求，求则有祸。', source: '高岛易断' },
      { category: '问婚姻', content: '非婚媾，则寇雠也，宜防。', source: '高岛易断' },
      { category: '问家宅', content: '有凶祸临门，宜谨防之。', source: '高岛易断' },
      { category: '问疾病', content: '防是刀伤，凶。', source: '高岛易断' },
      { category: '问失物', content: '不必追寻，方可免灾。', source: '高岛易断' },
      { category: '问讼事', content: '防干大辟。', source: '高岛易断' },
      { category: '问六甲', content: '生男，难育。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 62,
    position: 4,
    judgments: [
      { category: '占问时运', content: '运以当可之谓时，勿宜妄动轻进。', source: '高岛易断' },
      { category: '问营商', content: '得可而止，切勿过贪。', source: '高岛易断' },
      { category: '问功名', content: '不求躁进，自得巷遇之庆，若妄动希荣，恐反遭祸。', source: '高岛易断' },
      { category: '问战征', content: '四刚而失位，宜勿进攻，乃可无咎。', source: '高岛易断' },
      { category: '问婚姻', content: '自有良缘，得时则遇，宜勿急急媒聘。', source: '高岛易断' },
      { category: '问家宅', content: '安居为宜，无用迁移。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 62,
    position: 5,
    judgments: [
      { category: '占问时运', content: '运途平平，难成大事，只可小受。', source: '高岛易断' },
      { category: '问营商', content: '小利可占。', source: '高岛易断' },
      { category: '问功名', content: '伏处山林，当有弓旌下逮。', source: '高岛易断' },
      { category: '问战征', content: '敌于山穴中，设有埋伏，宜先攻取之。', source: '高岛易断' },
      { category: '问婚姻', content: '是钻穴隙以相从者，非正娶也。', source: '高岛易断' },
      { category: '问天时', content: '大旱。', source: '高岛易断' },
      { category: '问失物', content: '当就穴地中觅之。', source: '高岛易断' },
      { category: '问疾病', content: '宜用针刺之法治之。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 62,
    position: 6,
    judgments: [
      { category: '占问时运', content: '高而愈危，进而愈厉，不知退守，凶由自取也。', source: '高岛易断' },
      { category: '问功名', content: '躁进取祸。', source: '高岛易断' },
      { category: '问营商', content: '既不遇时，又复妄进，必致取败。', source: '高岛易断' },
      { category: '问战征', content: '凡行军前进，不遇敌兵，知敌军必于暗地设伏，宜即退军，否则必陷险难。', source: '高岛易断' },
      { category: '问婚姻', content: '防坠奸媒之计。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 63,
    position: 1,
    judgments: [
      { category: '占问时运', content: '运未脱险，当自奋勉，可以无咎。', source: '高岛易断' },
      { category: '问营商', content: '初次经营，跋涉多艰，前而不止，虽危得济，无咎。', source: '高岛易断' },
      { category: '问功名', content: '先难后获。', source: '高岛易断' },
      { category: '问战征', content: '虽有车脱马蹶之危，一鼓而进，当必可获胜也。', source: '高岛易断' },
      { category: '问家宅', content: '初次迁居，虽此宅或轮奂不美，或首尾不完，居之无咎。', source: '高岛易断' },
      { category: '问婚姻', content: '火为水妃，初聘则吉。', source: '高岛易断' },
      { category: '问疾病', content: '初病，虽危无咎。', source: '高岛易断' },
      { category: '问六甲', content: '初胎生女。', source: '高岛易断' },
      { category: '问失物', content: '物已沾水，当就车中觅之，可得。', source: '高岛易断' },
      { category: '问行人', content: '在途，稍有水灾，无咎。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 63,
    position: 2,
    judgments: [
      { category: '占问时运', content: '小小得失，切勿介意，方得脱大难，成大功也。', source: '高岛易断' },
      { category: '问营商', content: '有失而复得之象。', source: '高岛易断' },
      { category: '问功名', content: '七年内，定可复职。', source: '高岛易断' },
      { category: '问战征', content: '中途被劫，丧其辎重，七日内，必获胜仗。', source: '高岛易断' },
      { category: '问婚姻', content: '早则七月，迟则七年，可复团聚。', source: '高岛易断' },
      { category: '问家宅', content: '其宅被人居，七年后，即可归还原主。', source: '高岛易断' },
      { category: '问疾病', content: '七日必愈。', source: '高岛易断' },
      { category: '问失物', content: '不久可得。', source: '高岛易断' },
      { category: '问六甲', content: '七日内可产，生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 63,
    position: 3,
    judgments: [
      { category: '占问时运', content: '忍苦耐劳，所谋必成。', source: '高岛易断' },
      { category: '问营商', content: '数载经营，方可获利。', source: '高岛易断' },
      { category: '问功名', content: '辛苦而成。', source: '高岛易断' },
      { category: '问战征', content: '劳师久征，所攻虽得，然亦惫矣。', source: '高岛易断' },
      { category: '问婚姻', content: '三年内可完配。', source: '高岛易断' },
      { category: '问家宅', content: '此宅阴象太重，三年后，方可居住。', source: '高岛易断' },
      { category: '问疾病', content: '此病一时无恙，三年内，必难保全。', source: '高岛易断' },
      { category: '问讼事', content: '三年可了，防小人又复生事，宜戒。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 63,
    position: 4,
    judgments: [
      { category: '占问时运', content: '运当全盛，然不预防，衰即立至，所宜谨戒。', source: '高岛易断' },
      { category: '问营商', content: '如舟行，中流舟漏，急宜补修。', source: '高岛易断' },
      { category: '问功名', content: '有忽赐忽褫之惧。', source: '高岛易断' },
      { category: '问战征', content: '夺帜易帜，胜当虑败，所贵临事而惧。', source: '高岛易断' },
      { category: '问婚姻', content: '古人多以衣服比夫妇，为不可喜新而弃旧也。', source: '高岛易断' },
      { category: '问疾病', content: '是老弱之症也。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 63,
    position: 5,
    judgments: [
      { category: '占问时运', content: '已盛则退，方盛则进，宜保俭约，毋侈奢华，吉凶皆由自取也。', source: '高岛易断' },
      { category: '问战征', content: '盛气在西，宜顺天修德，不宜暴兵耀武。', source: '高岛易断' },
      { category: '问营商', content: '合伙同业，殷富者亦奢，不如俭约者，实获其利也。', source: '高岛易断' },
      { category: '问功名', content: '已成者宜慎，未成者大可望也。', source: '高岛易断' },
      { category: '问婚姻', content: '宜就西邻订姻，吉。', source: '高岛易断' },
      { category: '问家宅', content: '宅以西首为吉。', source: '高岛易断' },
      { category: '问疾病', content: '宜祷。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 63,
    position: 6,
    judgments: [
      { category: '占问时运', content: '好运已过，深为可危，宜慎。', source: '高岛易断' },
      { category: '问战征', content: '上处坎险之极，上为首，恐首将有不利。', source: '高岛易断' },
      { category: '问营商', content: '头番买卖，必难获利。', source: '高岛易断' },
      { category: '问功名', content: '可许夺元。', source: '高岛易断' },
      { category: '问婚姻', content: '元配有灾，续弦无咎。', source: '高岛易断' },
      { category: '问家宅', content: '此宅长房不利。', source: '高岛易断' },
      { category: '问讼事', content: '防首领难保。', source: '高岛易断' },
      { category: '问疾病', content: '患在首面，可危。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 64,
    position: 1,
    judgments: [
      { category: '占问时运', content: '不审前后，不顾进退，鲁莽从事，是昏而无知者也。', source: '高岛易断' },
      { category: '问营商', content: '前既失败，后又不戒，覆辙相仍，其将何以了事乎？', source: '高岛易断' },
      { category: '问功名', content: '龙头既失，骥尾亦必难附。', source: '高岛易断' },
      { category: '问婚姻', content: '流离首尾，团聚难矣。', source: '高岛易断' },
      { category: '问家宅', content: '此宅前门后户，方位不正。', source: '高岛易断' },
      { category: '问疾病', content: '病在下身。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 64,
    position: 2,
    judgments: [
      { category: '占问时运', content: '运如轻车渡水，中道以济，无往不利。', source: '高岛易断' },
      { category: '问营商', content: '有满载而归之象。', source: '高岛易断' },
      { category: '问功名', content: '二与五应，五为君，二为臣，二五皆吉，是君臣相济也。有后车以载之象。', source: '高岛易断' },
      { category: '问战征', content: '有曳柴伪遁之谋。', source: '高岛易断' },
      { category: '问婚姻', content: '有桓少君鹿车共挽之风，必得贤妇，吉。', source: '高岛易断' },
      { category: '问家宅', content: '有轮奂并美之象。', source: '高岛易断' },
      { category: '问疾病', content: '必是胸腹作鸣，辘辘如车声，宜开通三焦，使气机舒展，自愈。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 64,
    position: 3,
    judgments: [
      { category: '占问时运', content: '宜镇静待时，躁动则凶。', source: '高岛易断' },
      { category: '问战征', content: '宜会集海军，水陆并进，则凶者吉矣。', source: '高岛易断' },
      { category: '问营商', content: '以舟运为利。', source: '高岛易断' },
      { category: '问功名', content: '有涉川作楫之材。', source: '高岛易断' },
      { category: '问婚姻', content: '《诗》云"造舟为梁，亲迎于渭"，迎娶则吉，往赘则凶。', source: '高岛易断' },
      { category: '问疾病', content: '《艮》为狐，病由狐祟所致，宜涉川以避。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 64,
    position: 4,
    judgments: [
      { category: '占问时运', content: '有此大运，"贞吉，悔亡"，名利俱全。', source: '高岛易断' },
      { category: '问战征', content: '率军远征，奏凯而还，得以荣邀赐命。', source: '高岛易断' },
      { category: '问营商', content: '行商远出，财利丰盈。', source: '高岛易断' },
      { category: '问功名', content: '声名远震，得承天宠。', source: '高岛易断' },
      { category: '问婚姻', content: '三年可成。', source: '高岛易断' },
      { category: '问家宅', content: '贞吉。', source: '高岛易断' },
      { category: '问疾病', content: '"鬼方"二字不祥，三年后恐难保。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 64,
    position: 5,
    judgments: [
      { category: '占问时运', content: '运当全盛，百事皆吉。', source: '高岛易断' },
      { category: '问战征', content: '《师》卦曰"师贞，丈人吉"，可并占之。', source: '高岛易断' },
      { category: '问营商', content: '其营业必关系政府公干，或为军饷，或为军器，得沾朝廷之余泽，故吉。', source: '高岛易断' },
      { category: '问功名', content: '有入觐天颜之象。', source: '高岛易断' },
      { category: '问家宅', content: '此宅大吉，当邀旌赐之劳。', source: '高岛易断' },
      { category: '问婚姻', content: '"君子好逑"，必得。', source: '高岛易断' },
      { category: '问六甲', content: '生女，主贵。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 64,
    position: 6,
    judgments: [
      { category: '占问时运', content: '《坎》难已平，众心欢乐，能知撙节，可以永保无咎。', source: '高岛易断' },
      { category: '问战征', content: '此为得胜班师，饮酒策勋之时也。', source: '高岛易断' },
      { category: '问营商', content: '已得厚利而归，从此量入为出，富可永保矣。', source: '高岛易断' },
      { category: '问功名', content: '有得而复失之患。', source: '高岛易断' },
      { category: '问疾病', content: '必是饮食不节所致。', source: '高岛易断' },
      { category: '问讼事', content: '《序卦》曰"饮食必有讼"，知其讼必由于酗酒来也。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 15,
    position: 1,
    judgments: [
      { category: '占问时运', content: '目下万事亨通，利涉大川。', source: '高岛易断' },
      { category: '问商业', content: '经营之始，宜谦逊谨慎，可获宏利。', source: '高岛易断' },
      { category: '问家宅', content: '辛苦起家，积资成富，家业可长保也。', source: '高岛易断' },
      { category: '问疾病', content: '明夷之伤。', source: '高岛易断' },
      { category: '问失物', content: '失而不可得。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' },
      { category: '问讼事', content: '彼此耗费，必有一伤。', source: '高岛易断' },
      { category: '问功名', content: '可成事。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 15,
    position: 2,
    judgments: [
      { category: '占问时运', content: '目下名称藉藉，定多得意。', source: '高岛易断' },
      { category: '问商业', content: '得利。', source: '高岛易断' },
      { category: '问家宅', content: '家中积产富足，外面名声亦好。', source: '高岛易断' },
      { category: '问战征', content: '可鸣鼓直前，攻取中营，大捷。', source: '高岛易断' },
      { category: '问疾病', content: '是用心过劳之症。', source: '高岛易断' },
      { category: '问功名', content: '有必得之喜。', source: '高岛易断' },
      { category: '问讼事', content: '鸣冤得伸。', source: '高岛易断' },
      { category: '问失物', content: '即得。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 15,
    position: 3,
    judgments: [
      { category: '占问时运', content: '一生劳苦，目下万事亨通，老运更佳。', source: '高岛易断' },
      { category: '问商业', content: '经营之始，百般勤劳，今基业已成，可以永远获利。', source: '高岛易断' },
      { category: '问家宅', content: '必是辛苦起家，积资成富，能复持盈保泰，家业可长保也。', source: '高岛易断' },
      { category: '问疾病', content: '恐病成劳弱，天命有终。', source: '高岛易断' },
      { category: '问失物', content: '后可复得。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' },
      { category: '问讼事', content: '枉者自服，即可了结。', source: '高岛易断' },
      { category: '问功名', content: '得此劳绩，自必升用。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 15,
    position: 4,
    judgments: [
      { category: '占问时运', content: '目下正当好运，万事吉利。', source: '高岛易断' },
      { category: '问商业', content: '任从指挥，无不获利；凡买卖但宜留些余步为好。', source: '高岛易断' },
      { category: '问家宅', content: '盍家以谦和作事，事事吉利。', source: '高岛易断' },
      { category: '问战征', content: '指挥如意，必得大捷。', source: '高岛易断' },
      { category: '问疾病', content: '宜表散之，吉。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 15,
    position: 5,
    judgments: [
      { category: '占问时运', content: '目下虽处正运，然或有龃龉，宜自振作，不可一味姑息也。', source: '高岛易断' },
      { category: '问商业', content: '所获利益，防为他人分取，致生事端。', source: '高岛易断' },
      { category: '问家宅', content: '能以择邻而处，自得守望相助之义。', source: '高岛易断' },
      { category: '问婚姻', content: '得邻近之女议婚，大利。', source: '高岛易断' },
      { category: '问疾病', content: '利用消伐之剂，吉。', source: '高岛易断' },
      { category: '问讼事', content: '宜取邻人作证，得直。', source: '高岛易断' },
      { category: '问失物', content: '于邻家觅之，得。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 15,
    position: 6,
    judgments: [
      { category: '占问时运', content: '盛运已过，目下未见得意。', source: '高岛易断' },
      { category: '问商业', content: '有名无实，宜整顿旧业。', source: '高岛易断' },
      { category: '问家宅', content: '防有怪祟，时作响动，用法镇压治之。', source: '高岛易断' },
      { category: '问疾病', content: '宜自调养心志。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 42,
    position: 1,
    judgments: [
      { category: '占问时运', content: '好运初交，可以与作大事，无不如意。吉。', source: '高岛易断' },
      { category: '问战征', content: '兵队初交，即可一战以成大功，有吉无咎。', source: '高岛易断' },
      { category: '问营商', content: '初次营业，资本既厚，经营亦大，可获大利，且能悠久无咎。', source: '高岛易断' },
      { category: '问功名', content: '可望大魁天下，大吉。', source: '高岛易断' },
      { category: '问家宅', content: '此宅新造，屋宇宽大，大吉无咎。', source: '高岛易断' },
      { category: '问婚姻', content: '大吉。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 42,
    position: 2,
    judgments: [
      { category: '占问时运', content: '主得意之外财，且能世守，永吉。', source: '高岛易断' },
      { category: '问战征', content: '古者行军先卜，出师必祷，此爻均吉，其战必克。"自外来也"，可由外而攻之也。', source: '高岛易断' },
      { category: '问营商', content: '贝货即货币也，"十"，数之盈也；"或益之"者，疑有神助也。营商得此爻，必获厚利，永吉。', source: '高岛易断' },
      { category: '问功名', content: '古者命相举贤，皆从枚卜，既得吉兆，其显可知，故曰永吉。', source: '高岛易断' },
      { category: '问疾病', content: '祷之即愈。', source: '高岛易断' },
      { category: '问婚姻', content: '《震》《巽》为长男长女，卜凤之兆，自昔称祥，百年好合，故得永吉。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 42,
    position: 3,
    judgments: [
      { category: '占问时运', content: '运途多歉，以其素行诚实，人皆信之，可以无咎。', source: '高岛易断' },
      { category: '问战征', content: '兵本凶事，又陷危地，幸众军同心戮力，得奔告大营，获救出险，无咎。', source: '高岛易断' },
      { category: '问功名', content: '先苦后甘，先难后获。', source: '高岛易断' },
      { category: '问营商', content: '谚云"欲求富，走险路"。', source: '高岛易断' },
      { category: '问婚姻', content: '恐从丧服中成亲，然无咎也。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 42,
    position: 4,
    judgments: [
      { category: '占问时运', content: '目下有难，宜择善地暂避。', source: '高岛易断' },
      { category: '问战征', content: '宜退兵移营，急请救援。', source: '高岛易断' },
      { category: '问营商', content: '宜禀告店主，改迁别地，另开市面。', source: '高岛易断' },
      { category: '问功名', content: '不成，须改就别业。', source: '高岛易断' },
      { category: '问婚姻', content: '须别寻媒妁。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 42,
    position: 5,
    judgments: [
      { category: '占问时运', content: '运得正中，吉。', source: '高岛易断' },
      { category: '问战征', content: '罚必信，赏必公，战无不克，大吉。', source: '高岛易断' },
      { category: '问营商', content: '以义为利，诚实相交，利益与共，以此为商，利益广矣。', source: '高岛易断' },
      { category: '问功名', content: '实至名归，大吉。', source: '高岛易断' },
      { category: '问婚姻', content: '非亲即友，必是旧交，"勿问元吉"。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 42,
    position: 6,
    judgments: [
      { category: '占问时运', content: '好运已退，贪心过甚，防有意外之祸。', source: '高岛易断' },
      { category: '问战征', content: '不待添兵加饷，即可进击。', source: '高岛易断' },
      { category: '问营商', content: '专求利己，所谓不夺不厌，必启争端，凶。', source: '高岛易断' },
      { category: '问功名', content: '夺人之功以为名，其名必不久也，凶。', source: '高岛易断' },
      { category: '问婚姻', content: '恐不能偕老。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 45,
    position: 1,
    judgments: [
      { category: '占问时运', content: '运当初交，一顺一逆，反复无常，得所救援，可以无咎。', source: '高岛易断' },
      { category: '问功名', content: '忽荣忽辱，由于中心无主也。', source: '高岛易断' },
      { category: '问营商', content: '有初无终，聚散不定，不能获利，仅可免咎而已。', source: '高岛易断' },
      { category: '问战征', content: '统军出征，防有兵变之忧。', source: '高岛易断' },
      { category: '问婚姻', content: '有始乱之，而终娶之之象。', source: '高岛易断' },
      { category: '问疾病', content: '此病忽号忽笑，由于心神昏乱，往而求医，必无咎也。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 45,
    position: 2,
    judgments: [
      { category: '占问时运', content: '运得正中，吉。', source: '高岛易断' },
      { category: '问功名', content: '可望汲引而进。', source: '高岛易断' },
      { category: '问营商', content: '"引"，牵引也，想是合众生意，必可获吉，但须答愿酬神。', source: '高岛易断' },
      { category: '问战征', content: '古者出师必祭，于内曰类，于野曰冯是也，盖祭神以誓师也。吉。', source: '高岛易断' },
      { category: '问婚姻', content: '二应于五，是二五订婚也，故曰"引吉"。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 45,
    position: 3,
    judgments: [
      { category: '占问时运', content: '运途平平，无可获利也。', source: '高岛易断' },
      { category: '问功名', content: '功名不利，反被人鄙。', source: '高岛易断' },
      { category: '问营商', content: '货物虽多，不售可嗟，何所获利？惟转运他处，可得无咎。', source: '高岛易断' },
      { category: '问战征', content: '有兵而不得其用，反致怨嗟，在主将无御众之才也。', source: '高岛易断' },
      { category: '问婚姻', content: '未免兴怨偶之嗟。', source: '高岛易断' },
      { category: '问疾病', content: '胸膈积滞作痛，致声声叫苦，以两便不利所致，利则可以无咎。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 45,
    position: 4,
    judgments: [
      { category: '占问时运', content: '气运大好，无往不吉，但于地位不当，宜慎。', source: '高岛易断' },
      { category: '问功名', content: '大吉，但恐德不称位。', source: '高岛易断' },
      { category: '问营商', content: '得财得利大吉；宜作退一步想，方能有始有终。', source: '高岛易断' },
      { category: '问战征', content: '战胜攻克，大吉大利；防功高震主，谤毁随之。', source: '高岛易断' },
      { category: '问婚姻', content: '四与初为正应，即为正配，吉；但门第恐不甚相当也。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 45,
    position: 5,
    judgments: [
      { category: '占问时运', content: '得位得权，运当全盛，自可无咎。', source: '高岛易断' },
      { category: '问营商', content: '财则聚矣，信尚未也，能守其正，业自可久。', source: '高岛易断' },
      { category: '问功名', content: '位则高矣，望则隆矣，更宜修德履正。', source: '高岛易断' },
      { category: '问战征', content: '三军既集，大业可成，更宜推诚相与，可保永终。', source: '高岛易断' },
      { category: '问婚姻', content: '位尊金多，可称贵婿。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 45,
    position: 6,
    judgments: [
      { category: '占问时运', content: '人必年老运退，极至穷极悲苦，为可悯也。然必有怜而救援者，得以无咎。', source: '高岛易断' },
      { category: '问营商', content: '孤客无伴，途穷日暮，大可悲虑，幸而得救，无咎。', source: '高岛易断' },
      { category: '问功名', content: '时衰运极，难望成名。', source: '高岛易断' },
      { category: '问战征', content: '有军众叛离，主将孤立之象。', source: '高岛易断' },
      { category: '问婚姻', content: '有生离死别之悲。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 46,
    position: 1,
    judgments: [
      { category: '占问时运', content: '运途大顺，求名求利，无不如下志，大吉。', source: '高岛易断' },
      { category: '问功名', content: '一举成名，大吉。', source: '高岛易断' },
      { category: '问营商', content: '货价高升，大可获利。', source: '高岛易断' },
      { category: '问战征', content: '升高窥望，得识敌情，一战可得胜也，大吉。', source: '高岛易断' },
      { category: '问婚姻', content: '两姓允合，大吉。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 46,
    position: 2,
    judgments: [
      { category: '占问时运', content: '运途得中，必有喜事临门。', source: '高岛易断' },
      { category: '问营商', content: '商业全凭信实，有信卖买进出，无诈无虞，自能永远，且可获利。', source: '高岛易断' },
      { category: '问功名', content: '定有泥金报喜。', source: '高岛易断' },
      { category: '问战征', content: '出师必祭，信为兵家之要，得信则三军一心，无战不克矣。', source: '高岛易断' },
      { category: '问婚姻', content: '二五交孚，阴阳合德，大喜。', source: '高岛易断' },
      { category: '问六甲', content: '单月生男，双月生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 46,
    position: 3,
    judgments: [
      { category: '占问时运', content: '目下运途恰好，渐进渐盛。', source: '高岛易断' },
      { category: '问营商', content: '市廛谓之趋虚，言就虚地，会集货物而成市邑，可见商业日盛也。', source: '高岛易断' },
      { category: '问功名', content: '《升》本发达之象，初方"允"，二则"孚"，至三则已升而在上，可无疑也。', source: '高岛易断' },
      { category: '问战征', content: '经此兵燹，城邑空虚，"升虚邑"，夺取空城矣。', source: '高岛易断' },
      { category: '问疾病', content: '必是虚弱之症无疑。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 46,
    position: 4,
    judgments: [
      { category: '占问时运', content: '事顺适，吉而无咎。', source: '高岛易断' },
      { category: '问战征', content: '古者祷战，祈克于上帝，然后接敌，此即用享之义也。享而后战，其必克矣，吉。', source: '高岛易断' },
      { category: '问营商', content: '货物之生也，多取于山林川谷之间。祭法，民之取财用者，必祭之。谓祭之可获利也。吉。', source: '高岛易断' },
      { category: '问功名', content: '"亨于岐山"，易侯而王，大吉之兆。', source: '高岛易断' },
      { category: '问疾病', content: '宜祷。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 46,
    position: 5,
    judgments: [
      { category: '占问时运', content: '平生志愿，无不得遂，大吉之兆。', source: '高岛易断' },
      { category: '问功名', content: '拾级而登，荣宠已极。', source: '高岛易断' },
      { category: '问营商', content: '五为中数，凡营财之道，不宜过盈，以得中为吉，故曰"贞吉"。', source: '高岛易断' },
      { category: '问战征', content: '凡攻城，必用梯阶，所以升高也。城必可克，故吉。', source: '高岛易断' },
      { category: '问婚姻', content: '五与二相应，爻曰"升阶"，有攀结高亲之象，故二曰"有喜"。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 46,
    position: 6,
    judgments: [
      { category: '占问时运', content: '好运已过，且待后运重来，可以得利。', source: '高岛易断' },
      { category: '问战征', content: '有率军夜进，误入幽谷之象，利于息，待天明可出险也。', source: '高岛易断' },
      { category: '问营商', content: '防有人财两失之患。', source: '高岛易断' },
      { category: '问功名', content: '《升》至于上，功名已显，防身后萧条。', source: '高岛易断' },
      { category: '问婚姻', content: '恐不得偕老。', source: '高岛易断' },
      { category: '问六甲', content: '生女，恐不育。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 47,
    position: 1,
    judgments: [
      { category: '占问时运', content: '厄运初来，渐入苦境，三年后可望顺适。', source: '高岛易断' },
      { category: '问战征', content: '兵陷险地，如司马氏军入葫芦谷。', source: '高岛易断' },
      { category: '问营商', content: '是贩运材木生意，木在深谷，困于发运。', source: '高岛易断' },
      { category: '问功名', content: '卑下之象，名必不显。', source: '高岛易断' },
      { category: '问疾病', content: '"株木""幽谷"，有棺椁山丘之象，凶。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 47,
    position: 2,
    judgments: [
      { category: '占问时运', content: '爻象富贵，运非不佳，惜其不知撙节，反为富贵所困也。', source: '高岛易断' },
      { category: '问战征', content: '防有因酒食误事，遂致败北，主将困而招褫绯之辱。', source: '高岛易断' },
      { category: '问营商', content: '因商起家，膏粱文绣，足以荣亨，但再往则有凶也。', source: '高岛易断' },
      { category: '问功名', content: '功名已显，但恐为功名所困耳。', source: '高岛易断' },
      { category: '问疾病', content: '是逸乐过甚，醉饱无度。宜祷。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 47,
    position: 3,
    judgments: [
      { category: '占问时运', content: '命运尴尬，进退两难，凶。', source: '高岛易断' },
      { category: '问战征', content: '上布矢石，下设陷阱，前进则身多危，后退则膏已陷，大凶之象。', source: '高岛易断' },
      { category: '问功名', content: '身将不保，奚以名为？', source: '高岛易断' },
      { category: '问营商', content: '卜例，妻为财爻，官即命官，既丧其命，又失其财，大凶。', source: '高岛易断' },
      { category: '问婚姻', content: '防有悼亡之戚。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 47,
    position: 4,
    judgments: [
      { category: '占问时运', content: '运非不好，但地位不当，致多疑惧，未免为人所鄙。', source: '高岛易断' },
      { category: '问战征', content: '迟缓不进，以致车辙靡乱，幸得救援，不至终败。', source: '高岛易断' },
      { category: '问营商', content: '办事不力，致运载货物，中途失陷，急救得全。', source: '高岛易断' },
      { category: '问功名', content: '始困终亨。', source: '高岛易断' },
      { category: '问疾病', content: '病势迟缓，已非一日，想是驰驱劳顿致损。爻曰"有终"，其命永终矣。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 47,
    position: 5,
    judgments: [
      { category: '占问时运', content: '命运刚强，刚则必折，防有损伤。作事宜筹度舒迟，乃可变祸为福。', source: '高岛易断' },
      { category: '问战征', content: '主败，须徐缓收兵，可图后胜。', source: '高岛易断' },
      { category: '问营商', content: '货物底面，防有溃烂损伤，须拆看收拾，徐徐出售，无咎。', source: '高岛易断' },
      { category: '问功名', content: '防富贵后，致有刑伤，宜祷。', source: '高岛易断' },
      { category: '问疾病', content: '病在头足，徐徐调养，求神医治，可愈。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 47,
    position: 6,
    judgments: [
      { category: '占问时运', content: '目下苦运已终，本可脱难，缘其心神不安，未能立作变计，一旦改悔，即可获吉。', source: '高岛易断' },
      { category: '问功名', content: '困穷既久，行将风云变动，一举成名。吉。', source: '高岛易断' },
      { category: '问营商', content: '"困于葛藟"，必是包扎货物，久不得售，今当时价发动，即可获利。吉。', source: '高岛易断' },
      { category: '问战征', content: '爻曰"征吉"，《象》曰"吉行"，其中虽有灾悔，定可因悔得吉也。', source: '高岛易断' },
      { category: '问疾病', content: '此病必缠绵已久，神志不安，当迁地静养，自然痊愈。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 48,
    position: 1,
    judgments: [
      { category: '占问时运', content: '为时过运衰，不为世用。', source: '高岛易断' },
      { category: '问战征', content: '有兵器朽旧，不克制胜之患。', source: '高岛易断' },
      { category: '问营商', content: '货物陈腐，不可贩售。', source: '高岛易断' },
      { category: '问功名', content: '年老无用。', source: '高岛易断' },
      { category: '问疾病', content: '是旧症也，不治。', source: '高岛易断' },
      { category: '问六甲', content: '生男，防难育。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 48,
    position: 2,
    judgments: [
      { category: '占问时运', content: '所得者小，所失者大矣。', source: '高岛易断' },
      { category: '问战征', content: '误中敌计，军入幽谷，致破釜缺养而不得出。', source: '高岛易断' },
      { category: '问功名', content: '弋获虚名，其何能久？', source: '高岛易断' },
      { category: '问营商', content: '为贪意外之财，致失本分之利。', source: '高岛易断' },
      { category: '问疾病', content: '是下漏之症，医治可愈。', source: '高岛易断' },
      { category: '问六甲', content: '生男，防此儿有残疾。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 48,
    position: 3,
    judgments: [
      { category: '占问时运', content: '怀才不用，命为之也。', source: '高岛易断' },
      { category: '问战征', content: '兵器既修，士卒可用，惜无主将，以致士气颓丧，为可惜也。', source: '高岛易断' },
      { category: '问营商', content: '明见货物辐辏，可以获利，不知贩运，徒诿无用耳。', source: '高岛易断' },
      { category: '问功名', content: '有才无命，为世所弃；两年后至五爻，可望登用。', source: '高岛易断' },
      { category: '问疾病', content: '必是心神不安之症，宜饮井泉可愈。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 48,
    position: 4,
    judgments: [
      { category: '占问时运', content: '正当运途改变之时，宜自修饬，不特无咎，可望上进。', source: '高岛易断' },
      { category: '问战征', content: '诗云"修我矛戟，与子偕作"，在此时也。', source: '高岛易断' },
      { category: '问营商', content: '宜整理旧业，自可获利。', source: '高岛易断' },
      { category: '问功名', content: '修身立名，二三年后，可大得志。', source: '高岛易断' },
      { category: '问六甲', content: '有弄瓦之象，生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 48,
    position: 5,
    judgments: [
      { category: '占问时运', content: '家道必寒，幸运得其时，可望进用。', source: '高岛易断' },
      { category: '问营商', content: '井出寒泉，喻言财源之长也，可望获利。', source: '高岛易断' },
      { category: '问功名', content: '品行中正，可享鼎养之荣。', source: '高岛易断' },
      { category: '问婚姻', content: '家风清白，同甘共苦，夫妇之正也。', source: '高岛易断' },
      { category: '问疾病', content: '是外寒内热之症，宜服寒凉之剂。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 48,
    position: 6,
    judgments: [
      { category: '占问时运', content: '功德在世，信用在人，"大成""元吉"，运之极盛者也。', source: '高岛易断' },
      { category: '问功名', content: '有大用大受之象，非一官一邑之微也。', source: '高岛易断' },
      { category: '问营商', content: '商务会集，利益浩繁，可久可大，无往不吉。', source: '高岛易断' },
      { category: '问战征', content: '凡军将发则撤幕，"勿幕"，即撤幕前进也。一战功成，故曰"大成"。吉。', source: '高岛易断' },
      { category: '问疾病', content: '幕亦作暮，言旦夕可即愈也，吉。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 49,
    position: 1,
    judgments: [
      { category: '占问时运', content: '好运初来，犹宜固守，不可妄动。', source: '高岛易断' },
      { category: '问战征', content: '兵队初交，宜先立巩固之基，未可妄事更张也。', source: '高岛易断' },
      { category: '问营商', content: '商业初成，宜先立巩固之基，未可妄事更张也。', source: '高岛易断' },
      { category: '问功名', content: '初出求名，其才未充，其时尚早，必待四五年后，方能变化腾达。', source: '高岛易断' },
      { category: '问婚姻', content: '男女之年尚幼，未可拟亲，俟三年后，可以成就。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 49,
    position: 2,
    judgments: [
      { category: '占问时运', content: '行土运可以兴事立业，大佳。', source: '高岛易断' },
      { category: '问战征', content: '宜择戊己日，行军接战，必可获胜。', source: '高岛易断' },
      { category: '问营商', content: '于摄绵土生意最宜。凡新立买卖，必择土日开市大吉。', source: '高岛易断' },
      { category: '问功名', content: '戊年或交土运必可成名。', source: '高岛易断' },
      { category: '问婚姻', content: '可称嘉偶。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 49,
    position: 3,
    judgments: [
      { category: '占问时运', content: '当此有事之秋，一不谨慎，则有凶危立至，宜再三筹度而行，方得众人信服。从此而往，时运大佳。', source: '高岛易断' },
      { category: '问战征', content: '兵，凶事也，危事也，发军之日，先宜号令申明，斯信则人任，往无不利也。', source: '高岛易断' },
      { category: '问营商', content: '未计其盈，宜先防其亏。贸易之道，以信为主，必得众商信从，乃可获利。', source: '高岛易断' },
      { category: '问功名', content: '必三试可就。', source: '高岛易断' },
      { category: '问婚姻', content: '得三人为媒，可成。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 49,
    position: 4,
    judgments: [
      { category: '占问时运', content: '曰"悔亡"，曰"吉"，是灾悔既亡，而吉运来也。万事皆可改作，无不如志。', source: '高岛易断' },
      { category: '问战征', content: '改旗易辙，重振军令，可以开国，可以辟地，可以转败为胜，吉。', source: '高岛易断' },
      { category: '问营商', content: '必是旧业重兴，大可得利。', source: '高岛易断' },
      { category: '问功名', content: '改武就文，可以成名。', source: '高岛易断' },
      { category: '问婚姻', content: '不利原聘，利重婚。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 49,
    position: 5,
    judgments: [
      { category: '占问时运', content: '如此大运，非"首出庶物"之大人，不克当此。若常人占得此爻，必能光前裕后，大振家声。', source: '高岛易断' },
      { category: '问战征', content: '虎臣桓桓，威声早著，可不战而来降也。', source: '高岛易断' },
      { category: '问营商', content: '白虎属西方之宿，西属秋，防货价至秋，大有变动。宜先订定价，自可获利，吉。', source: '高岛易断' },
      { category: '问功名', content: '《乾》曰"云从龙，风从虎"，言各得其际会也，吉。', source: '高岛易断' },
      { category: '问婚姻', content: '俗以白虎为不利，婚事未占先孚，犹言未嫁而先从也，为女不贞之象。', source: '高岛易断' },
      { category: '问六甲', content: '象本生女，一变则为男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 49,
    position: 6,
    judgments: [
      { category: '占问时运', content: '运当全盛，光华显著，惟宜守成，无事纷更。', source: '高岛易断' },
      { category: '问战征', content: '军用多取兽名，兕甲虎贲，皆用之以焕其文而扬其威也。上六爻已终，谓战已定，宜罢兵退守，不可前往。', source: '高岛易断' },
      { category: '问营商', content: '创业以来，有名有利，已臻美备，此后宜知足谨守。', source: '高岛易断' },
      { category: '问功名', content: '上居卦之终，功名早极，劝令功成身退，所谓"人死留名，豹死留皮"也。', source: '高岛易断' },
      { category: '问婚姻', content: '上与三应，九三阳也，上六阴也，三日"三就，有孚"，当再三遂合，自可成就，吉。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 50,
    position: 1,
    judgments: [
      { category: '占问时运', content: '有因祸得福，转败为成之兆。', source: '高岛易断' },
      { category: '问营商', content: '初次小损，后获大利，且有商地成家之象。', source: '高岛易断' },
      { category: '问功名', content: '有荣封之喜。', source: '高岛易断' },
      { category: '问婚姻', content: '是为小妾，必生贵子。', source: '高岛易断' },
      { category: '问疾病', content: '腹有宿积，利在下泻，无咎。', source: '高岛易断' },
      { category: '问六甲', content: '生男，宜于庶出。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 50,
    position: 2,
    judgments: [
      { category: '占问时运', content: '运途正直，奸邪自远，无往不吉。', source: '高岛易断' },
      { category: '问功名', content: '"实"者，实获也。名成之后，多有忌嫉者之，宜慎防之。', source: '高岛易断' },
      { category: '问营商', content: '曰"鼎有实"，即所谓囊有财也，宜防匪人盗窃。', source: '高岛易断' },
      { category: '问婚姻', content: '二与五应，五变为姤，《姤》曰"勿用娶女"。"仇"，怨偶也，"不我能即"，是不娶也。', source: '高岛易断' },
      { category: '问疾病', content: '阳为实，是实热之症，宜对症调治，吉。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 50,
    position: 3,
    judgments: [
      { category: '占问时运', content: '运非不佳，但妄意变改，以致所行辄阻，是以有悔也。', source: '高岛易断' },
      { category: '问功名', content: '目下虽美不售，改就他途，反多灾悔。', source: '高岛易断' },
      { category: '问营商', content: '业有改迁，致货物呆滞，须俟三年后，可复兴也。', source: '高岛易断' },
      { category: '问战征', content: '兵队有变，恐粮食被劫。', source: '高岛易断' },
      { category: '问婚姻', content: '恐有悔婚改适之变，所谓"失其义"也。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 50,
    position: 4,
    judgments: [
      { category: '占问时运', content: '运途颠覆，小则损折，大则刑戮，甚为可惧。', source: '高岛易断' },
      { category: '问战征', content: '有损兵折将之祸。', source: '高岛易断' },
      { category: '问功名', content: '未成者难望，已成者必败。', source: '高岛易断' },
      { category: '问营商', content: '资财覆灭，且有身命之忧。', source: '高岛易断' },
      { category: '问婚姻', content: '必男女均有足疾，且于家道不利。', source: '高岛易断' },
      { category: '问六甲', content: '生女，防有残疾。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 50,
    position: 5,
    judgments: [
      { category: '占问时运', content: '运途贵重，贞守得福。', source: '高岛易断' },
      { category: '问功名', content: '大贵之象。', source: '高岛易断' },
      { category: '问营商', content: '信息明了，贩运便捷，可获厚利。', source: '高岛易断' },
      { category: '问战征', content: '防有洞胸贯耳之灾。', source: '高岛易断' },
      { category: '问婚姻', content: '"黄耳""金铉"，贵兆也，主联姻贵族。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 50,
    position: 6,
    judgments: [
      { category: '占问时运', content: '温润和平，无往不利。', source: '高岛易断' },
      { category: '问战征', content: '六师既张，进无不克，大吉。', source: '高岛易断' },
      { category: '问功名', content: '位趋鼎铉，大吉。', source: '高岛易断' },
      { category: '问营商', content: '美玉待沽，其价必善，无往不利也。', source: '高岛易断' },
      { category: '问婚姻', content: '如金如玉，大吉。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 51,
    position: 1,
    judgments: [
      { category: '占问时运', content: '好运新来，万事皆可振作。先难后易，先忧后乐，百般获吉。', source: '高岛易断' },
      { category: '问战征', content: '初时敌势奋勇，可惧，后得胜捷，可喜。', source: '高岛易断' },
      { category: '问营商', content: '商业新兴，百般可惧，待经营成就，既获利益，随时欢乐，无不得吉。', source: '高岛易断' },
      { category: '问功名', content: '谚云"吃甚苦中苦，方为人上人"，自有先难后获之象。', source: '高岛易断' },
      { category: '问婚姻', content: '此婚始有忧惧，后得欢乐，吉。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 51,
    position: 2,
    judgments: [
      { category: '占问时运', content: '运途尴尬，不无丧失，幸可复得。', source: '高岛易断' },
      { category: '问战征', content: '一受惊恐，粮饷俱失，移营高阜，危殆已极，幸而得之，未为胜也。', source: '高岛易断' },
      { category: '问营商', content: '得失相偿，然亦危矣。', source: '高岛易断' },
      { category: '问功名', content: '既得患失，既失患得，品亦卑矣。', source: '高岛易断' },
      { category: '问婚姻', content: '主夫妻不睦，防有携资潜逃之患。无须追究，缓即来归。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 51,
    position: 3,
    judgments: [
      { category: '占问时运', content: '运途不当，宜谨益加谨，谨慎而行，必无灾咎。', source: '高岛易断' },
      { category: '问战征', content: '《震》卦全体，皆处危惧之地，"苏苏"，谓死而重生，此战难望获胜，仅得逃生而已。', source: '高岛易断' },
      { category: '问营商', content: '销路不得其当，宜改行别路，可免耗失。', source: '高岛易断' },
      { category: '问功名', content: '"位不当"，谓才不胜任也，虽得亦危。', source: '高岛易断' },
      { category: '问婚姻', content: '门户不当。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 51,
    position: 4,
    judgments: [
      { category: '占问时运', content: '正运已过，精力既衰，虽欲振作，终觉致远恐泥也。', source: '高岛易断' },
      { category: '问战征', content: '战争之交，所谓"一鼓作气"，至三至四，则勇已衰，若鲁莽前进，防车马陷入泥淖，被敌所困。', source: '高岛易断' },
      { category: '问营商', content: '商业亦佳，但挥财如泥沙，恐终不能积蓄也。', source: '高岛易断' },
      { category: '问功名', content: '有曳尾泥涂之象，宜退不宜进也。', source: '高岛易断' },
      { category: '问婚姻', content: '遂则必遂，惟相隔如云泥，或名分有上下之别，或道路有南北之分。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 51,
    position: 5,
    judgments: [
      { category: '占问时运', content: '运得中正，虽经历多险，终可完成大事。', source: '高岛易断' },
      { category: '问战征', content: '贩货往来，保无危厉。万万曰亿，财利甚巨，或小有挫损，大必无丧也。', source: '高岛易断' },
      { category: '问功名', content: '此功名必从患难来，可占大用，成大功。', source: '高岛易断' },
      { category: '问婚姻', content: '防婚姻完后，家有祭葬大事。', source: '高岛易断' },
      { category: '问六甲', content: '生男，主贵。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 51,
    position: 6,
    judgments: [
      { category: '占问时运', content: '时当震惊将定，妄进则凶，静守则吉。', source: '高岛易断' },
      { category: '问功名', content: '位高必危，正宜退守，可保无咎。', source: '高岛易断' },
      { category: '问营商', content: '变动已定，不可过贪，见他人亏折，更宜谨守，乃得无咎。', source: '高岛易断' },
      { category: '问战征', content: '时本一战可定，闻邻近营队有变，急宜往救，不得坐视。', source: '高岛易断' },
      { category: '问婚姻', content: '《震》与《巽》有夫妇之象，想近时即有媒妁来言。', source: '高岛易断' },
      { category: '问六甲', content: '生男，防有目疾。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 52,
    position: 1,
    judgments: [
      { category: '占问时运', content: '运途初交，宜守稳步，不可妄进，自得无咎。', source: '高岛易断' },
      { category: '问战征', content: '屯军山足，宜静守，不宜妄动。', source: '高岛易断' },
      { category: '问营商', content: '宜知足。', source: '高岛易断' },
      { category: '问功名', content: '初步虽微，不失其正。', source: '高岛易断' },
      { category: '问婚姻', content: '百年好合，无咎。', source: '高岛易断' },
      { category: '问六甲', content: '生女，防有足疾。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 52,
    position: 2,
    judgments: [
      { category: '占问时运', content: '运途有阻，宜裹足不前，不宜随心而动。', source: '高岛易断' },
      { category: '问战征', content: '止，不进也，坚守不动，又无外援，是以戚戚也。', source: '高岛易断' },
      { category: '问营商', content: '货物止而不售，甚为可忧。', source: '高岛易断' },
      { category: '问功名', content: '不得寸进，又苦无大力之援。', source: '高岛易断' },
      { category: '问疾病', content: '"腓"，病也，《诗》云"百卉具腓"，为秋风所虐也。此病亦必是秋症，恐非药力所能救援也。甚为可忧。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 52,
    position: 3,
    judgments: [
      { category: '占问时运', content: '运途顺逆，皆当顺时，强制者危。', source: '高岛易断' },
      { category: '问战征', content: '两军相对，各争疆界，安得划界自守乎？自守者危矣。', source: '高岛易断' },
      { category: '问营商', content: '货物务在流通，乃可获利，况今万国通商，输入输出，互相交易，若闭关自限，必穷之道也，可危甚矣。', source: '高岛易断' },
      { category: '问功名', content: '专守一艺者，必非大器。', source: '高岛易断' },
      { category: '问婚姻', content: '婚姻之道，本由天合，若苟守门户，不能成两姓之欢。', source: '高岛易断' },
      { category: '问六甲', content: '生女，防难产。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 52,
    position: 4,
    judgments: [
      { category: '占问时运', content: '运途柔顺，能保其身，自得无咎。', source: '高岛易断' },
      { category: '问战征', content: '难望进取，但于我身无所伤败，咎复何有？', source: '高岛易断' },
      { category: '问营商', content: '只能保本。', source: '高岛易断' },
      { category: '问功名', content: '无得无失。', source: '高岛易断' },
      { category: '问疾病', content: '是带病延年之症。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 52,
    position: 5,
    judgments: [
      { category: '占问时运', content: '运得中正，故无悔忧。', source: '高岛易断' },
      { category: '问战征', content: '行军之际，最忌谣言妄作，惑乱军心，"艮其辅"使不妄言，斯号令严明，所向无敌矣。', source: '高岛易断' },
      { category: '问营商', content: '商情犹如军情，消息不容漏泄，"艮其辅"，则言得其要矣。', source: '高岛易断' },
      { category: '问功名', content: '巧言必黜，昌言则拜，言得中正，立谈可取卿相也。', source: '高岛易断' },
      { category: '问疾病', content: '必是牙关紧闭，口不出声，得能发声，病乃可治。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 52,
    position: 6,
    judgments: [
      { category: '占问时运', content: '运途至此，无可复进，惟厚益加厚，是以得吉。', source: '高岛易断' },
      { category: '问战征', content: '地位至上已极，要在兵力加厚，无不获吉。', source: '高岛易断' },
      { category: '问营商', content: '是上手生意，价高物美，获利必厚。', source: '高岛易断' },
      { category: '问功名', content: '必应上选，吉。', source: '高岛易断' },
      { category: '问婚姻', content: '吉。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 54,
    position: 1,
    judgments: [
      { category: '占问时运', content: '运途低微，祇可依人成事而已。', source: '高岛易断' },
      { category: '问战征', content: '非主帅也，能以偏帅制胜，吉。', source: '高岛易断' },
      { category: '问营商', content: '不能自主，听命而行，幸得获利，吉。', source: '高岛易断' },
      { category: '问功名', content: '偏禅之位。', source: '高岛易断' },
      { category: '问婚姻', content: '此婚始有忧惧，后得欢乐，吉。', source: '高岛易断' },
      { category: '问六甲', content: '生女，防有足疾。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 54,
    position: 2,
    judgments: [
      { category: '占问时运', content: '运途不正，宜幽贞自守。', source: '高岛易断' },
      { category: '问战征', content: '能察幽窥微，有料敌如神之妙。', source: '高岛易断' },
      { category: '问营商', content: '以其窥察商情，有独见之明，颇有暗得之利。', source: '高岛易断' },
      { category: '问功名', content: '以高尚不仕为贵。', source: '高岛易断' },
      { category: '问婚姻', content: '此女宜作偏房，若在嫡室，恐反目不和。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 54,
    position: 3,
    judgments: [
      { category: '占问时运', content: '运途尴尬，受人抑制，是宜忍耐，后可得伸。', source: '高岛易断' },
      { category: '问战征', content: '待时可愈。', source: '高岛易断' },
      { category: '问营商', content: '货价低落，不能获利，过后可望提升。', source: '高岛易断' },
      { category: '问功名', content: '所得卑微。', source: '高岛易断' },
      { category: '问婚姻', content: '必非正娶。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 54,
    position: 4,
    judgments: [
      { category: '占问时运', content: '须知顺时而动，行运有时，躁进无益。', source: '高岛易断' },
      { category: '问战征', content: '最宜审时度势，无取躁急轻进，致损兵力。', source: '高岛易断' },
      { category: '问营商', content: '待时得价，自可获利。', source: '高岛易断' },
      { category: '问功名', content: '躁进必败。', source: '高岛易断' },
      { category: '问婚姻', content: '待年而归。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 54,
    position: 5,
    judgments: [
      { category: '占问时运', content: '事事谦抑，不敢自夸，不敢自满，运途得中，是以吉也。', source: '高岛易断' },
      { category: '问战征', content: '降尊居贱，能得军心；从月夜进兵，出敌不备，可得全胜。', source: '高岛易断' },
      { category: '问营商', content: '前进货品，不如后进者良，约在望前可售，必得高价。', source: '高岛易断' },
      { category: '问功名', content: '如有兄弟，同出求名，弟必获隽。', source: '高岛易断' },
      { category: '问婚姻', content: '当有二女同归，吉。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 54,
    position: 6,
    judgments: [
      { category: '占问时运', content: '万事不利。', source: '高岛易断' },
      { category: '问战征', content: '糗粮不备，戈矛不修，以斯从征，必败之道。', source: '高岛易断' },
      { category: '问营商', content: '资本既虚，货物又匮，奚以获利？', source: '高岛易断' },
      { category: '问功名', content: '空手求名，其何能得？', source: '高岛易断' },
      { category: '问婚姻', content: '婚娶不正，维家之索。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 55,
    position: 1,
    judgments: [
      { category: '占问时运', content: '得其相助，可有十年好运。', source: '高岛易断' },
      { category: '问战征', content: '两敌相遇，当速进兵，十日外，恐有败象。', source: '高岛易断' },
      { category: '问营商', content: '当有巧当货物可售，旬日之内，即可获利，过旬则不利。', source: '高岛易断' },
      { category: '问功名', content: '"邂逅相遇，适我愿兮"，即日当有佳报。', source: '高岛易断' },
      { category: '问婚姻', content: '姻缘相当，即日可成，迟则不谐。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 55,
    position: 2,
    judgments: [
      { category: '占问时运', content: '能以蒙难艰贞，自得逢凶化吉。', source: '高岛易断' },
      { category: '问战征', content: '屯军于丰林茂草之间，伏藏不发，往则恐有不利；必待敌兵内应，一发必得大胜。吉。', source: '高岛易断' },
      { category: '问营商', content: '见识不明，浑如白昼昏暗，不能办事，致生疑忌。当以至诚待人，得人扶助，方可获利。', source: '高岛易断' },
      { category: '问功名', content: '始凶终吉。', source: '高岛易断' },
      { category: '问婚姻', content: '始疑终谐。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 55,
    position: 3,
    judgments: [
      { category: '占问时运', content: '运途颠倒，明明白昼，浑如黑夜，防有灾祸。幸一时身命，尚无恙也。', source: '高岛易断' },
      { category: '问战征', content: '"沛"或作旆，谓幡旆飘扬，率军前进，防风云有变，卒时昏暗，右军有失。', source: '高岛易断' },
      { category: '问营商', content: '防货价涨落不测，致被耗折。', source: '高岛易断' },
      { category: '问功名', content: '终不可用。', source: '高岛易断' },
      { category: '问婚姻', content: '田园荒芜，水草从生，右庑已倾，暂居而已，终不可用也。', source: '高岛易断' },
      { category: '问六甲', content: '生女。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 55,
    position: 4,
    judgments: [
      { category: '占问时运', content: '曩时被人蒙蔽，今能翻然改作，得好际遇，可以获吉。', source: '高岛易断' },
      { category: '问战征', content: '兵入幽谷，不知去路，不见天日，幸遇向导，得以前行也。', source: '高岛易断' },
      { category: '问营商', content: '前因货物，真赝混杂，难以销售，今始得遇受主，方可获利。', source: '高岛易断' },
      { category: '问功名', content: '得此绝好际遇，名可立就，吉。', source: '高岛易断' },
      { category: '问婚姻', content: '良缘巧遇，吉。', source: '高岛易断' },
      { category: '问六甲', content: '生男。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 55,
    position: 5,
    judgments: [
      { category: '占问时运', content: '盛运大来，实至名归，吉莫大焉。', source: '高岛易断' },
      { category: '问战征', content: '可不战而成功也，奏凯而还，得邀封赏，吉。', source: '高岛易断' },
      { category: '问营商', content: '货物往来，无不获利，更可得名。', source: '高岛易断' },
      { category: '问功名', content: '得膺恩赏，名利兼全，大吉。', source: '高岛易断' },
      { category: '问婚姻', content: '天合良缘，门楣既显，嫁资亦丰，吉。', source: '高岛易断' },
      { category: '问六甲', content: '生男，主贵。', source: '高岛易断' }
    ]
  },
  {
    hexagramId: 55,
    position: 6,
    judgments: [
      { category: '占问时运', content: '有屋无人，大凶之象。', source: '高岛易断' },
      { category: '问战征', content: '营垒空虚，败亡之象。', source: '高岛易断' },
      { category: '问营商', content: '货物空存，无人经理，凶。', source: '高岛易断' },
      { category: '问功名', content: '身既不保，名于何有？', source: '高岛易断' },
      { category: '问婚姻', content: '凶。', source: '高岛易断' },
      { category: '问六甲', content: '生男，防不育。', source: '高岛易断' }
    ]
  }
];

export function getMultipleJudgments(hexagramId: number, position: number): MultipleJudgment[] | undefined {
  const item = MULTIPLE_JUDGMENTS_DATA.find((j: LineMultipleJudgments) => j.hexagramId === hexagramId && j.position === position);
  if (item && item.judgments && item.judgments.length > 0) {
    return item.judgments;
  }
  return undefined;
}

export function mergeMultipleJudgmentsData(hexagrams: Hexagram[]): void {
  hexagrams.forEach((hexagram: Hexagram) => {
    hexagram.lines.forEach((line: HexagramLine) => {
      const judgments = getMultipleJudgments(hexagram.id, line.position);
      if (judgments && judgments.length > 0) {
        line.multipleJudgments = judgments;
      }
    });
  });
}

import { MultipleJudgment, Hexagram, HexagramLine } from '../model/DivinationModel';

export interface LineMultipleJudgments {
  hexagramId: number;
  position: number;
  judgments: MultipleJudgment[];
}

export const MULTIPLE_JUDGMENTS_DATA: LineMultipleJudgments[] = [
  {
    hexagramId: 1,
    position: 0,
    judgments: [
      { category: '问女子', content: '筮得此卦，以阴居阳，有刚强过中之嫌。宜慎重也。' },
      { category: '问天候', content: '二三四五之中，变则必晴也。' },
      { category: '问买卖', content: '不利买而利卖也。' },
      { category: '问祸福', content: '谓积善余庆，积不善余殃，恐有不在当代而在后裔也。' },
      { category: '问常人', content: '有高其身而不知鄙事之虞。' },
      { category: '问贤者', content: '有知天命而独行是道，恐群阴潜伏，有群小构谗之惧。' }
    ]
  },
  {
    hexagramId: 1,
    position: 1,
    judgments: [
      { category: '占问战征', content: '乾为武人，有战征之象。初爻阳气始动于黄泉，犹是潜伏，故曰"潜龙"。在军事，为威令初发，大军未集，宜按兵以待也。吉。' },
      { category: '问营商', content: '龙而潜，曰"勿用"，虽是一种好贸易，只可株守，未可骤动也。' },
      { category: '问功名', content: '龙本飞腾发达之物，初爻曰潜，是未得风云之会也。故曰位在下也。' },
      { category: '问婚姻', content: '《乾》初变《姤》，《姤》曰"女壮，勿用娶女"，是宜戒之。' },
      { category: '问家宅', content: '按震为龙，震在东方，是宅之东，必有渊水，闭塞不济，宜修凿之。' },
      { category: '问六甲', content: '生男。' },
      { category: '问天候', content: '二三四五之中，变则必晴也。' },
      { category: '问祸福', content: '谓积善余庆，积不善余殃，恐有不在当代而在后裔也。' },
      { category: '问常人', content: '有高其身而不知鄙事之虞。' },
      { category: '问贤者', content: '有知天命而独行是道，恐群阴潜伏，有群小构谗之惧。' }
    ]
  },
  {
    hexagramId: 1,
    position: 2,
    judgments: [
      { category: '占问战征', content: '龙本灵物，初爻曰"潜"，是谓伏兵；二爻曰"现"，则发现而出也。"在田"则必列阵于田野空旷之地。《传》曰"德施普也"，是必战胜而行赏也。' },
      { category: '问营商', content: '爻曰"现龙在田"，知其货物大般是米麦丝棉之类。现者，谓物价发动开涨；"利见大人"者，谓当有官场出而购买也。' },
      { category: '问功名', content: '谓伏处田间者，当乘时而进用也，且得贵人之助，故曰"利见大人"。' },
      { category: '问婚姻', content: '二五相应，五居尊位，婿家必贵。曰"现龙"，必是新进少年也。大吉。' },
      { category: '问六甲', content: '生男，且主贵。' }
    ]
  },
  {
    hexagramId: 1,
    position: 3,
    judgments: [
      { category: '占问战征', content: '危事也。爻曰"终日乾乾，夕惕若"，是能临事而惧者也，故虽危无咎。' },
      { category: '问功名', content: '九三处下卦之极，其位犹卑，功名未显也，故称君子；在忧危之地，故曰乾乾惕若，斯可免咎。' },
      { category: '问营商', content: '居不中之位，履得刚之险，度其贸易必是危地，须日夜防备，可脱险而获利也。' },
      { category: '问家宅', content: '观爻象，必须谨慎持身，勤俭保家，斯无灾害。' },
      { category: '问婚嫁', content: '三以六为应，三位卑，六位尊，尊则不免亢而得悔，是不宜攀结高亲也。' },
      { category: '问六甲', content: '生男。产时恐稍有危惧，恐终无咎。' }
    ]
  },
  {
    hexagramId: 1,
    position: 4,
    judgments: [
      { category: '占问战征', content: '观爻象，行军前进，必有渊水阻隔，宜设船筏；或临渊有敌军埋伏，宜预设备，乃得无咎。' },
      { category: '问营商', content: '爻曰"或跃在渊"，若在贩运海货，恐罹波涛之险，或者物价一时腾涨。爻曰"无咎"，可保无害。' },
      { category: '问功名', content: '有一举成名之象，大吉。' },
      { category: '问家宅', content: '渊者水也，跃者飞升也，必家道有一时振兴之象。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 1,
    position: 5,
    judgments: [
      { category: '占问战征', content: '九五尊位，必是天子亲征，王师伐罪，故曰"大人造也"。' },
      { category: '问营商', content: '九五辰在申，上值毕，附星咸池。咸池者苍龙之舍，咸池亦名五车，主稻黍豆麦，度其贸易，定在五谷之属。曰"飞龙"者，知物价之飞生也；曰"利见大人"，知其贩运或出自政府之命也。' },
      { category: '问功名', content: '有云霄直达之兆。' },
      { category: '问疾病', content: '有上应天召之象，不吉。' },
      { category: '问六甲', content: '生男，主贵。' }
    ]
  },
  {
    hexagramId: 1,
    position: 6,
    judgments: [
      { category: '占问战征', content: '上九居《乾》之极，阳极于上，故"亢"；亢则因胜而骄，是以"有悔"也。故《传》曰"盈不可久"，知不能持久也。' },
      { category: '问营商', content: '"亢"者，太过也，凡卖买之道，不可过于求盈也，过盈则必有亏，故曰"不可久"也。' },
      { category: '问功名', content: '上九之位已极，宜反而自退，否则必致满而遭损。' },
      { category: '问家宅', content: '是必宅基太高，太高则危，亦可惧也。' },
      { category: '问疾病', content: '是龙阳上升之症。《传》曰"盈不可久"，知命在旦夕间矣。可危。' },
      { category: '问婚嫁', content: '不利。' },
      { category: '问六甲', content: '生男，恐不育。' }
    ]
  },
  {
    hexagramId: 2,
    position: 0,
    judgments: [
      { category: '占问战征', content: '坤为地，为众，"势"者有力之称。在行军，既得其地，复得其势，又得其众，宜乎攻无不克矣。' },
      { category: '问功名', content: '上者能法坤德之厚，积厚流光，自得声名显远。' },
      { category: '问营商', content: '《坤》为富，为财，为积，为聚，皆营商吉兆也。曰"厚德载物"，德者得也，可必得满载而归也。' },
      { category: '问家宅', content: '知此宅胜占地势，大吉。' },
      { category: '问婚嫁', content: '《坤》顺也，柔顺而已，地道也，即妇道也。大吉。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 2,
    position: 1,
    judgments: [
      { category: '占问营商', content: '初六阴气犹微，曰"履霜，坚冰至"，是由微而推至于盛也，犹商业由小至大，积渐而至于富。' },
      { category: '问功名', content: '初爻是少年新进之时，由卑而尊，犹履霜以到坚冰，随时而来，未可躁进也。' },
      { category: '问战征', content: '初爻阴之始，"履霜"之象，至上爻"龙战"，阴之极也，"坚冰"之象。曰"其血玄黄"，是两败也。所当先慎其始。' },
      { category: '问家宅', content: '《坤》纯阴之卦，初爻阴气尚微，故曰"履霜"，"至坚冰"，则阴气盛矣。阴盛则衰，不吉之兆。' },
      { category: '问婚嫁', content: '《坤》卦纯阴，曰霜，曰冰，皆阴象。纯阴无阳，不利。' },
      { category: '问六甲', content: '生女。' },
      { category: '问疾病', content: '恐是阴邪之症，初起可治矣，久则难医。' }
    ]
  },
  {
    hexagramId: 2,
    position: 2,
    judgments: [
      { category: '占问营商', content: '六二《坤》之本位，"直方"者地之性，"大"者地之用，知其营业必是地产，如谷米、木材、丝棉之类是也。"不习无不利"，习与袭通，谓不烦重盈而知其获利也。' },
      { category: '问功名', content: '二爻居中得位，动而获利，言不待修营而功自成，其成名也必矣。' },
      { category: '问战征', content: '战之一道，以得地势为要，动以其方，势大力强，可一战而定也。' },
      { category: '问家宅', content: '六二中正，居宅得宜，故曰"地道光也"。' },
      { category: '问嫁娶', content: '"直方大"，地道也，妻道通于地道，故婚娶亦利。' },
      { category: '问疾病', content: '爻曰"直方大"，知其素体强壮，不药有喜。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 2,
    position: 3,
    judgments: [
      { category: '占问战征', content: '爻曰"含章可贞"，言平时含蓄才智，敛藏不露，一旦从事，自能制胜，即不成功，亦无大败。故曰"无成有终"。' },
      { category: '问营商', content: '《坤》地也，百货皆生于地，商能蓄积百货，故曰"含章"。凡从事营商者，贸迁百货，以时发售，故曰"时发"。《坤》内卦至三而极，正盛满之地，故曰"光大"。是以一时虽或未成，知必有终也。吉。' },
      { category: '问功名', content: '凡求名者，最宜待时，时未当发，"含章可贞"；时而当发，出从王事。知此道者，必能保功名以终也。吉。' },
      { category: '问疾病', content: '玩"无成有终"句义，知不可药救矣。凶。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 2,
    position: 4,
    judgments: [
      { category: '占问营商', content: '四巽爻，巽为商，为利，巽"近利市三倍"之谓也。兹爻曰"括囊"，是明亦以闭囊之象，知必昔日得利，财已入囊，不使复出也。故曰"括囊，无咎，无誉"。' },
      { category: '问战征', content: '六四重阴，当闭塞之时，虽有智，囊其才，无所施其计谋也，是宜闭关不战，如囊之括其口也，斯无咎矣。' },
      { category: '问功名', content: '四重卦，动当否位，《文言》曰"天地闭"，"括囊"者，闭口也。天地且闭，何有于功名？若妄意干进求名，适足致祸，有誉反有咎矣。宜慎。' },
      { category: '问家宅', content: '六四以阴居阴，履非中位，是宅必在山谷幽僻之处，宜隐遁者居之。' },
      { category: '问六甲', content: '生女，或得孪生二女。' }
    ]
  },
  {
    hexagramId: 2,
    position: 5,
    judgments: [
      { category: '占问战征', content: '《坤》臣道，五居尊位，为人臣之极贵者，如舜之摄位诛四凶，周之摄政诛二叔。爻曰"黄裳，元吉"，是以文德而发为武功者也，故《传曰》"文在中也"。' },
      { category: '问功名', content: '六五辰在卯，得《震》气，《震》有功名奋兴之象。五又《离》爻，《离》为黄位，近午，上值七星，七星主衣裳文绣，故曰"黄裳"。《离》又为明，有文明发达之象，故曰"文在中也"。' },
      { category: '问营商', content: '《坤》五变《比》，比吉也，辅也，商业必得比辅而成。《比》卦下《坤》上《坎》，《坤》为裳，故曰"黄裳"；《比》为美，故曰"文在中"，知其经商必是锦绣章服之品。曰"元吉"，必获利也。' },
      { category: '问疾病', content: '《坤》为大腹，又黄为中色，裳下饰，可知其病在中下两焦。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 2,
    position: 6,
    judgments: [
      { category: '占问战征', content: '象已明示是两败也。' },
      { category: '问功名', content: '上处外卦之极，是穷老人闱，抑塞已久，一战复北，可哀也。' },
      { category: '问营商', content: '上六《坤》卦之终，其道已穷，是资财既竭，血本又耗，商道穷矣。' },
      { category: '问疾病', content: '必是阴亏之症，阴极抗阳，肝血暴动，命已穷矣。' },
      { category: '问六甲', content: '阴尽变阳，可望男孩。' }
    ]
  },
  {
    hexagramId: 3,
    position: 0,
    judgments: [
      { category: '占问功名', content: '内《震》外《坎》为《屯》，《震》为雷，《坎》为云，故曰"云雷"；《震》为出，《坎》为入，欲出而复入，故曰《屯》。又《震》为人，为上，《坎》为经，为法，故曰"君子以经纶"。是君子施经纶之才，而运当其屯也，宜待时而动。' },
      { category: '问战征', content: '勤兵而守曰屯。"云雷"者，蓄其势也；"经纶"者，怀其才也。然当其屯，宜守不宜进。' },
      { category: '问营商', content: '《彖》曰"刚柔始交而难生"，是必初次营商也。凡事始创者，多苦其难。经纶，治丝之事，知其业必在丝棉之类。' },
      { category: '问家宅', content: '《震》东方，《坎》北方，《震》动也，《坎》陷也，恐是宅东北方有动作，宜经理修治之。' },
      { category: '问婚姻', content: '雷阳气，云阴气，"刚柔始交而难生"，是初始时，必不和洽，宜正人劝解之。' },
      { category: '问六甲', content: '生男，恐始产不免有险难。' }
    ]
  },
  {
    hexagramId: 3,
    position: 1,
    judgments: [
      { category: '占问战征', content: '磐桓，不进之貌，曰"利居贞，利建侯"。尽尝屯难之时，内则居正以守，外则求贤以辅，斯民心归向，众志成城，而终无不利矣。' },
      { category: '问营商', content: '初九爻，辰在子，北方，上值虚宿，曰元枵，枵之为言耗，虚亦耗意，不利行商。能以守贞任人，尚有利也。' },
      { category: '问功名', content: '初爻是必初次求名也，"磐桓者"，是欲进不进也。要当志行正直，谦退自下，终有得也。' },
      { category: '问家宅', content: '磐字从石，所谓安如磐石，知其宅基巩固也；曰"利居贞"，知其居之安；曰"利建侯"，知必是贵宅也。' },
      { category: '问婚嫁', content: '曰"以贵下贱"，知为富贵下嫁之象，吉。' },
      { category: '问六甲', content: '初爻生男。' }
    ]
  },
  {
    hexagramId: 3,
    position: 2,
    judgments: [
      { category: '占问婚嫁', content: '爻曰"匪寇婚媾"，是明言佳偶，非怨偶也。但曰"女子贞不字，十年乃字"，知于归尚有待也。' },
      { category: '问战征', content: '六二以柔居柔，有濡滞之象，故曰"屯如"。《春秋传》："有班马之声，齐《师》乃《遁》。"古者还师称班师，故曰"班如"，知行师未可遽进也，必养精蓄锐，十年乃可获胜。' },
      { category: '问营商', content: '媾与购音同，义亦相通。以货物求购，有迟回不决之意，故曰"屯如邅如"。又曰"十年乃字"，十者据成数而言，货物未可久积，或者十日十月乎？' },
      { category: '问功名', content: '士之求名，犹女子之求嫁也，曰"屯如"、"邅如"、"班如"，皆言一时未成也。"十年乃字"，此其时也。' },
      { category: '问六甲', content: '生子。' }
    ]
  },
  {
    hexagramId: 3,
    position: 3,
    judgments: [
      { category: '占问战征', content: '爻曰"即鹿无虞，惟入于林中"，犹言行军而无向导，冒进险地也。当知几而退，否则必凶。' },
      { category: '问营商', content: '玩爻辞，知其不谙商业，不熟地理，前往求货，不特无货，反有损失，舍而去之，尚无大害也。' },
      { category: '问婚嫁', content: '是钻穴隙以求婚也，其道穷矣。' },
      { category: '问功名', content: '梯荣乞宠，士道穷矣。' },
      { category: '问六甲', content: '六三阴居阳位，生男。' }
    ]
  },
  {
    hexagramId: 3,
    position: 4,
    judgments: [
      { category: '占问战征', content: '"乘马班如"者，不明其进攻之路故也，明而前往，则所向无敌，故曰"往吉，无不利"。' },
      { category: '问功名', content: '士者藏器待时，不宜躁进，迨于旌下逮，出而加民，"无不利"也。' },
      { category: '问婚嫁', content: '《诗·关雎》云，"窈窕淑女，君子好逑"，逑，求也，必待君子来求，始为往嫁，故吉。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 3,
    position: 5,
    judgments: [
      { category: '占问功名', content: '士之所赖以显扬者，全望上之施其恩膏也，若上"屯其膏"，而士复何望焉！' },
      { category: '问战征', content: '上有厚赏，则下愿效死，若恩泽不下，势必离心离德，大事去矣。凶。' },
      { category: '问营商', content: '膏者谓商业之资财也，"屯其膏"，谓蓄聚而不流通也，小买卖犹可固守，大经营未免困穷矣。凶。' },
      { category: '问疾病', content: '膏者在人为脂血，屯而不通，是闭郁之症，初病治之尚易，久病危矣。' },
      { category: '问六甲', content: '九五居尊，生男，且主贵。' }
    ]
  },
  {
    hexagramId: 3,
    position: 6,
    judgments: [
      { category: '占问战征', content: '上居屯之极，进退维谷，穷戚已甚，而至泣血，是军败国亡之日也。凶。' },
      { category: '问营商', content: '"乘马班如"一句，上已三复言之，是商业之疑惑不决，已至再至三矣。极之泣血，知耗失已多，故曰"何可长也"。' },
      { category: '问功名', content: '上居《坎》终，更无前进，得保其身幸矣。' },
      { category: '问疾病', content: '知必是呕血之症。凶。' },
      { category: '问六甲', content: '生女，又恐不能长大。' }
    ]
  },
  {
    hexagramId: 4,
    position: 0,
    judgments: [
      { category: '占问战征', content: '《象》曰"山下出泉"，是潜伏之水也，有伏兵之象。君子谓军中之将帅也。"果行育德"，果者果敢也，育者蓄养也，谓当蓄其锐势，而果决以进也。' },
      { category: '问营商', content: '玩《象》辞，想是开凿矿山生意。当果决从事，吉。' },
      { category: '问功名', content: '是士者素抱德行，伏处深山之象。曰"山下出泉"，终将出而用世也。' },
      { category: '问家宅', content: '知是宅坐向坎艮。曰"山下"，必近山也；曰"出泉"，必有泉流出其下也。君子居之，其宅必吉。' },
      { category: '问婚嫁', content: '坎辰在子，上值女，《圣冷符》曰，"须女者主嫁娶"。《艮》下《兑》上为《咸》，二气相感，故曰"取女吉"。"山下出泉，蒙"，是婚姻之始也。' },
      { category: '问疾病', content: '艮止坎险，病势必热邪渐陷于内，待初爻发蒙，邪气外发，可保无虞。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 4,
    position: 1,
    judgments: [
      { category: '占问战征', content: '爻曰"发蒙"，是为伐暴讨罪之师；如大禹之征有苗，格则罢师而还，故曰"以正法也"。' },
      { category: '问营商', content: '初居内卦之始，是必初次谋办也。《坎》为难，爻曰"发蒙"，曰"用刑"，知营商必有阻碍，殆将兴讼，得理直立即止，若欲穷究，恐有害也，故曰"往吝"。' },
      { category: '问功名', content: '欲往求荣，恐反受辱，宜自休止。' },
      { category: '问嫁娶', content: '初居始位，爻曰"发蒙"，必在少年订婚。既多事变，罢婚可也。' },
      { category: '问六甲', content: '初爻阴居阴位，生女，又恐生产有难。' }
    ]
  },
  {
    hexagramId: 4,
    position: 2,
    judgments: [
      { category: '占问战征', content: '二爻以阳居阴，爻曰"包蒙"，有包括群阴之象。《象》曰"刚柔接也"，刚柔者两军也，"接"，接战也，"克家"，犹言克敌也。占例妇为财，子为福，既克敌军，又纳其财，并受其福，大吉。' },
      { category: '问营商', content: '二上以两阳包三阴，一阳在内，一阳在外，有包罗财物，出贩外地之象，故曰"包蒙吉"。"纳妇"者，是必旅居纳妇也，有妇复有子。"克家"者，必其子能继父业也。' },
      { category: '问功名', content: '想不在其身，而在其子也，故曰"子克家"。' },
      { category: '问家宅', content: '曰"包蒙"，以《艮》包《坎》，是必山环水抱之地。曰"纳妇"，曰"克家"，是宅必有佳妇佳儿，克振家业，吉。' },
      { category: '问婚姻', content: '玩爻辞，有二吉，明言有妇有子，吉莫大焉。' },
      { category: '问六甲', content: '生男，主富贵。' }
    ]
  },
  {
    hexagramId: 4,
    position: 3,
    judgments: [
      { category: '占问战征', content: '爻曰"勿用娶女"，女阴象，凡占书以女爻为财，金亦财也，言行军宜散财以容众，不宜敛财以取怨。如掳掠财物，必致师败身亡，曰"勿用"，戒之深矣。' },
      { category: '问营商', content: '六三以阴居阳，阴内阳外，是必行商出外也。行商最忌贪色，男恋其色，女图其财，一入骗局，小则破财，大则伤身。《象》曰"行不顺也"，顺与慎音同义通，可不慎哉！' },
      { category: '问家宅', content: '玩爻辞，所谓"牝鸡司晨，惟家之索"，是宜深戒。' },
      { category: '问功名', content: '妇道通于臣道，见财忘义，必致声名破败，为女不贞，即为臣不忠也。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 4,
    position: 4,
    judgments: [
      { category: '占问战征', content: '行军宜深入显出，曰"困蒙"，是入阴险之地，而不能出也，故困。初爻之阳，六四距初间隔二爻，阳为实，故"远实"。是知救兵在远，不能及也。凶。' },
      { category: '问营商', content: '经商之道，宜亨不宜困，宜通不宜吝。"实"资本也，"远实"则伤其资矣。困蒙之吝，其道穷矣。' },
      { category: '问时运', content: '"蒙"，暗昧也，"困"，厄穷也，蒙而困，其终困矣。' },
      { category: '问家宅', content: '据爻辞观之，家业困苦，宅地亦幽僻，《象》曰"独远实也"，是必孤村而乏邻居也。' },
      { category: '问六甲', content: '生女。是女必少兄弟，故曰独。' }
    ]
  },
  {
    hexagramId: 4,
    position: 5,
    judgments: [
      { category: '占问战征', content: '五互《坤》，辰在未，值井，弧矢九星在井东南，主伐叛。又东为子孙星，曰"童蒙"，是帅子弟以从军也，故吉。' },
      { category: '问营商', content: '五为卦主，爻曰"童蒙"，是必店主尚在童年。五应二，正义云"委物以能"，谓委付事物于有能力之人，是委二也。盖五爻店主，自知年少，顺从二爻，以为经纪，故曰"童蒙吉"。' },
      { category: '问功名', content: '年在"童蒙"，功未成，名未就，惟能顺听二爻师教，则成就未可量也，故曰"吉"。' },
      { category: '问婚姻', content: '《蒙》上体艮，艮为少男，是以幼年定姻也，故曰"童蒙吉"。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 4,
    position: 6,
    judgments: [
      { category: '占问战征', content: '上辰在戌，上值奎，奎主库兵，禁不违时，故曰"利御寇"。' },
      { category: '问营商', content: '商业一道，全在利用，又贵顺取。逆取为寇，顺取则为御寇。"上下"者，卖买两家，卖买和洽，则上下顺矣。吉。' },
      { category: '问婚姻', content: '"击蒙"，马郑作"系蒙"，恰合月下老人红丝系足之意。《屯》卦两言"匪寇婚媾"，是佳偶为婚，怨偶为仇之谓也。利用御寇，必为佳偶。妇道贵顺，《象》曰"上下顺也"，是必家室和平也。吉。' },
      { category: '问六甲', content: '生男。此男童年，必宜严教。' }
    ]
  },
  {
    hexagramId: 5,
    position: 0,
    judgments: [
      { category: '占问战征', content: '需，待也，云在天上，阴阳未交，未可战也。《乾》为君子，又为武人，属主帅言。《坎》为酒，故曰"饮食宴乐"，盖言行军先备军粮也。' },
      { category: '问营商', content: '玩爻辞，想是贩运粮食，或开设酒馆之业也。曰"云上于天"，是云在上而雨未下，想是资本未集也，故曰《需》。' },
      { category: '问功名', content: '是风云未际其会，尚有待也。' },
      { category: '问疾病', content: '宜以饮食调剂，安乐自遣，遣久自愈。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 5,
    position: 1,
    judgments: [
      { category: '占问战征', content: '爻曰"需于郊"，是必屯营于郊也。《坎》为险，为难，是必前进有险，故《象》曰"不犯难行也"。初为卦之始，知初次出兵；曰"恒"，曰"需"，知宜久待。恒而后进，必无咎也。' },
      { category: '问功名', content: '卦属初爻，知为初出求名也。郊为草莽之地，"需于郊"。谓宜退居于野也。恒久也，"利用恒"，谓宜久待而后可利见也。《象》曰"不犯难行也"，谓其不涉于难；"未失常也"，谓其能守其恒，故无咎。' },
      { category: '问营商', content: '行商之道，以恒久为利。"需于郊"，知必前途有险，暂以货物堆积于郊，以待时而行也。《象》曰"未失常也"，知货物无损失也。' },
      { category: '问疾病', content: '"郊"者田野空旷之处，谓宜就野外，幽居以养病也。"无咎"，即病无害之谓也。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 5,
    position: 2,
    judgments: [
      { category: '占问战征', content: '《坎》为隐伏，玩爻象，谓宜伏兵于沙漠之地。或因间谍致误，小有挫折，终必吉也。' },
      { category: '问营商', content: '二爻辰在寅，上值天江四星，石氏云，"天江明动，大水不具，津梁不通"，因之货物不能通运，故"需于沙"，沙，水岸也。虽小有口舌，无害商业，故"终吉"。' },
      { category: '问时运', content: '沙从水从少，是少有水之处，不能通舟楫也。"需于沙"，犹言时运之不能也。二爻辰在寅，又上值箕，《诗纬》云："箕为天口，主出气"，小有言，是谗言也。然需以待之，故"终吉"。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 5,
    position: 3,
    judgments: [
      { category: '占问战征', content: '九三居内卦之终，逼近外卦，《坎》为寇，亦为灾，故曰"灾在外也"。有敌来寇者，谓寇至，有我自去招敌者，谓"致寇至。"必谨慎自持，先立于不败之地也。' },
      { category: '问营商', content: '"泥"拘泥也。行商之业，宜流动，不宜拘泥，若拘泥不化，内有疑忌，遂致外生变端。慢藏海盗，即以致寇也，可不谨慎哉！' },
      { category: '问功名', content: '爻曰"需于泥"，泥水际污泥也，需于此，则必将下流而难期上达矣。其不败也亦仅免焉。' },
      { category: '问婚姻', content: '《易》以寇与婚媾并言，谓寇则必非婚媾，是怨偶也。"需于泥"，不进之象，于婚事则必不成。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 5,
    position: 4,
    judgments: [
      { category: '占问战征', content: '四为《坎》之始，《坎》为血卦，"需于血"，是战之受其伤也。"出自穴"，是虽伤而犹能出于险也。其所以出险者，盖不在强争，而在顺听也，顺斯免害矣。' },
      { category: '问家宅', content: '曰需血，曰出穴，有出幽谷迁乔木之象。顺者家道顺也，吉。' },
      { category: '问营商', content: '玩爻辞，想必是采取矿产也。"出自穴"，斯得利矣。' },
      { category: '问功名', content: '所谓呕尽心血，方得出人头地，故有《需》血出穴之象。' },
      { category: '问疾病', content: '想是呕血之症，必须调养气血，使阴阳和顺，自可出险得生。' }
    ]
  },
  {
    hexagramId: 5,
    position: 5,
    judgments: [
      { category: '占问战征', content: '爻辞曰"需于酒食"，是得胜旋师，有犒赏策勋之象，故曰"贞吉"。' },
      { category: '问功名', content: '是为鹿鸣宴乐之时也，吉。' },
      { category: '问营商', content: '五互《离》，辰在午，上值柳，附星有酒旗，有外厨，主宴享饮食，知必是酒馆粮食等业。又《坎》为人，为纳，知其商业必输入有余也，故"贞吉"。' },
      { category: '问婚嫁', content: '《需》四爻为《泰》，《泰》六五曰"帝乙归妹，以祉元吉"；又九三曰"于食有福"，此即"需于酒食"之义也。"有福"，故"贞吉"。《象》曰"以中正也"，是谓得婚嫁之正也。' },
      { category: '问六甲', content: '生男。得子必置酒设席，古今皆然，故爻曰"需于酒食"。' }
    ]
  },
  {
    hexagramId: 5,
    position: 6,
    judgments: [
      { category: '占问战征', content: '上六《需》之极，有不速之客三人来，谓有敌军突然来袭。敬之终吉，以礼待之，可以化险为夷。' },
      { category: '问营商', content: '不速之客，谓有意想不到的买主或合作者。敬之终吉，以诚待之，必获利益。' },
      { category: '问功名', content: '有贵人不期而至，当以礼待之，可得提携。' },
      { category: '问家宅', content: '有客来访，主吉庆之事。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 6,
    position: 0,
    judgments: [
      { category: '占问战征', content: '天《乾》也，《乾》为刚武，水《坎》也，《坎》为寇盗，故主讼事，亦主军事。两军相违，以致相战，而其所以相违者，则在未战之始，故曰"君子作事谋始"，即孔子慎战之旨也。' },
      { category: '问营商', content: '《讼》卦内互《离》，《离》为资斧，外互《巽》，巽为商，有营商之义焉。营商之道，相合则成，相违则败，且《乾》为始，《坎》为谋，故曰"作事谋始"。善其始，乃可图其终，斯商业得久大矣，吉。' },
      { category: '问功名', content: '《乾》健也，坎险也，是《乾》欲进而陷于坎险，此功名之所以难也。' },
      { category: '问婚姻', content: '婚姻者，合两姓之好而成，有相合，无相违也。男有家，女有室，为人伦之始，故君子必求淑女，是谋始之道也。' },
      { category: '问疾病', content: '病之始起，必由阴阳不和，不和则行违，行违即成疾。治之者，宜先慎夫始。' },
      { category: '问六甲', content: '生男。' },
      { category: '问失物', content: '此物在高处，坠落水中，不可复得。恐大有口舌之争。' }
    ]
  },
  {
    hexagramId: 6,
    position: 1,
    judgments: [
      { category: '占问战征', content: '讼者两人相争，战者两国相争，故终讼与穷兵，皆凶事也。爻曰"不永所事"，是谓一战而胜，不复黩武，益见圣人不得已而用兵也，非好战也。' },
      { category: '问疾病', content: '初爻者，初病也，"不永所事"，谓不久即愈也，故曰"吉"。久病则凶。' },
      { category: '问功名', content: '初爻居卦之始，是初出而求名也。"不永所事"，谓不久困于人下也，故曰"终吉"。' },
      { category: '问营商', content: '爻曰"不永所事，小有言"，谓商家贩售货物，宜即售脱，或卖买小有争论，亦无大碍，故曰"终吉"。' }
    ]
  },
  {
    hexagramId: 6,
    position: 2,
    judgments: [
      { category: '占问战征', content: '二应在五，五在尊位，大国也，二势弱，自知不克，《坎》为隐伏，故"归而逋"也。三百户小邑，二既归遁，五亦罢战，故三百户得以无眚。' },
      { category: '问营商', content: '九二爻辰在寅，上值尾箕斗，附星天弁，主列肆闾阎，有营商之象。二变为《否》，《否》败也，故曰"不克"，有耗败之象。外互《巽》，《巽》为归，故曰"归遁"。三百小数也，故曰"无眚"。' },
      { category: '问疾病', content: '玩爻象，是必在外得病，宜速归家调治。病人既归，病气不致传染，故曰"邑人无眚"。' },
      { category: '问功名', content: '爻曰"不克"，是一时不克成名也，退归隐居，亦无害也。' },
      { category: '问婚嫁', content: '二五相敌，尊卑不相偶，宜罢婚，无眚。' },
      { category: '问六甲', content: '生男，恐不举。' }
    ]
  },
  {
    hexagramId: 6,
    position: 3,
    judgments: [
      { category: '占问战征', content: '六三居《坎》之终，逼近《乾》位，所谓"阴阳相薄"，"战乎《乾》"也。《坎》本为《乾》再索之男，《乾》为旧，为德，"食旧德"，是子食父遗禄，安常守分，保其旧业，无事争战也，故吉。若欲兴动王师，《坎》为破，为灾，必无成功也，故曰"无成"。' },
      { category: '问营商', content: '爻曰"食旧德"，知其商业为先世遗产，谨慎固守，终得吉也。' },
      { category: '问功名', content: '宜继守先人旧业，或欲出而求仕，必无成也。' },
      { category: '问疾病', content: '须仍服前医方剂为吉。' },
      { category: '问家宅', content: '直守居旧宅，不须别建新居，恐无成也。' },
      { category: '问六甲', content: '生男。此子长成，亦以继承父业为吉。' }
    ]
  },
  {
    hexagramId: 6,
    position: 4,
    judgments: [
      { category: '占问战征', content: '四与初为敌，初既"不永所事"。四亦克无可克，故曰"不克"。《乾》为君，"命"，君命也，凯旋而复命于君。战，危事也，变危而安，故吉。' },
      { category: '问营商', content: '玩爻象，知其商业必与初爻合办，初既"不永所事"，四亦复而"即命"，复命犹言罢事也，故吉。' },
      { category: '问婚姻', content: '内卦《坎》为女家，外卦《乾》为男家，《坎》初曰"不永所事"，《乾》四亦复而"即命"，是变计改婚也。《象》曰"不失也"，谓不失其道也。' },
      { category: '问疾病', content: '至致不克，是凶象也。"复"谓重生也。《坎》为疾，为炎，《乾》为生，为庆，复命即复乾也。变而得安，故吉。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 6,
    position: 5,
    judgments: [
      { category: '占问战征', content: '五居尊位，是主战之大君也，师出有名，得其中正，是王者之师，无敌于天下者也，故曰"元吉"。' },
      { category: '问商业', content: '《乾》为利，《坎》为平，商业固在谋利，亦要公平正直，斯不致于争夺，商业乃得其正矣，故吉。' },
      { category: '问功名', content: '《讼》字从言从公，五为主爻，求名者，盖以言而求主公之知也。"元"谓三元，是功名之魁首也，吉莫大焉。' },
      { category: '问婚姻', content: '五为卦主，与五结姻，是以贱从贵，以贫从富也，故曰"元吉"。' },
      { category: '问六甲', content: '生男。此儿品貌端正，且有福泽。' }
    ]
  },
  {
    hexagramId: 6,
    position: 6,
    judgments: [
      { category: '占问战征', content: '上居《乾》阳之极，阳极而战，胜已难矣，至一日而三胜三败，败固为辱，即胜亦不为荣也。' },
      { category: '问功名', content: '"锡"赐也，"褫"夺也，"或"者未然之辞。而设言赐之，至终朝而三夺之，是亦一患得患失之鄙夫也，何足敬哉！' },
      { category: '问商业', content: '玩爻辞，是屡得屡失，终至得不偿失。且问其所得者，尚非正路之财，所谓悖入悖出，非其财者也，亦可鄙矣。' },
      { category: '问疾病', content: '是必其病乍愈乍发，一日之间，病势不一。在上爻，处卦之极，势极难返，恐终凶矣。' },
      { category: '问六甲', content: '生男。恐生男多不育，必至四胎可育。' }
    ]
  },
  {
    hexagramId: 7,
    position: 0,
    judgments: [
      { category: '占问战征', content: '卦以《师》名，爻义甚明，可就各爻推究，吉凶自验。' },
      { category: '问营商', content: '《坤》为财，为聚，《坎》为人，为纳，自有容保之量。坎水在地中，为地所包容，财源如水，流而不息，可知商业之富有也。吉。' },
      { category: '问功名', content: '水在地中，犹士尚伏处，未显达也，而其德量，自能包容民物，一经进用，如水之朝宗于海，敷施甚广。"君子"者，有德有位之称也。吉。' },
      { category: '问婚嫁', content: '按《坤》《坎》互用，地水相亲，是必旧亲联姻也。大吉。' },
      { category: '问疾病', content: '是必水满腹胀之症。《坎》为心，为忧，宜息心调气，解忧取乐，自愈。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 7,
    position: 1,
    judgments: [
      { category: '问功名', content: '初爻者，初出而求名也。"出师以律"为正，犹士之以道为重，失其道，虽荣终辱，凶。' },
      { category: '问营商', content: '初爻，知为新立之业，水在地中，知为海运商务。总之谋利以义者吉，失义为凶。' },
      { category: '问家宅', content: '《师》卦内《坎》外《坤》，是宅必坐子兼丑，向午未也。宅中人口最多。出师有律，犹言治家当以法也。否不也，减善也，不善治家，家道必凶。' },
      { category: '问疾病', content: '《师》卦一阳五阴，是必寒多热少。症在初起，宜延良医调治，否则凶。' }
    ]
  },
  {
    hexagramId: 7,
    position: 2,
    judgments: [
      { category: '问功名', content: '九二以一阳统率五阴，爻曰"在师中，吉"，是鸡群一鹤，杰出之才也。"王三赐命"，谓以能授爵，显膺王命也。' },
      { category: '问营商', content: '九二为一卦之主，必其人谋为出众，在商务中称为老成练达，可举为商社之长者也。吉。' },
      { category: '问家宅', content: '曰"师中吉"，是家必为一乡之巨室，即为一乡之善士也。' },
      { category: '问婚姻', content: '九二变为《坤》，坤地道也，妻道也，水土之性相合，故吉。' },
      { category: '问疾病', content: '知为水气停积中宫，必使水气流动，中焦宽舒，病无害也。吉。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 7,
    position: 3,
    judgments: [
      { category: '问商业', content: '《坎》为舆，舆所以载货物也；《坎》又为陷，为破，舆而遇隘，则舆破而货覆矣。人死谓尸，犹车败物亡也。"或"者未然之辞，"大无功"者，大失利也。行商未必遇此凶险，亦不可不防此凶险也。爻象戒之如此。' },
      { category: '问功名', content: '"君子得舆"，得为德，舆所以载德而行也。君子有德位之称。或曰，"舆尸"是无德而尸位者也，故凶。' },
      { category: '问家宅', content: '阴阳家称堪舆，堪天也，舆地也，舆尸是地有尸气，安得不凶！' },
      { category: '问婚嫁', content: '三爻居《坎》之终，得乾气，《乾》下《巽》上为《小畜》，《小畜》三爻曰"舆脱辐，夫妻反目"，《象》曰"不能正室"，其凶可知。' },
      { category: '问六甲', content: '虽生男，凶。' }
    ]
  },
  {
    hexagramId: 7,
    position: 4,
    judgments: [
      { category: '问家宅', content: '四出《坎》历《坤》，《坤》西南，是宅必朝西南。吉事尚左，是宅逼近东方，青龙主喜，吉无咎也。' },
      { category: '问功名', content: '凡官职下降称左，所谓左迁是也。曰"左次"，不吉。' },
      { category: '问营商', content: '有高左下，次亦为下，占此爻，知其货财必非高品。然货虽次，尚可获利，故曰"未失常也"。' },
      { category: '问婚姻', content: '男尚有，女尚左，爻曰"左次"，或者入赘于女家乎？然赘亦无咎。' },
      { category: '问疾病', content: '按春生于左，得其生气，疾必无咎。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 7,
    position: 5,
    judgments: [
      { category: '问营商', content: '爻曰"田有禽"，犹言农有谷，商有利也。"执言"者，谓约证之券也。在商业一道，总宜以老成练达者为主，则利，否见凶。' },
      { category: '问家宅', content: '此宅想是立约新售者，利在长房，不利众子。' },
      { category: '问功名', content: '知其人才能素著，有一朝获十禽之技，然要在德长于人，若德劣于物，虽正亦凶。' },
      { category: '问婚姻', content: '"有禽"者，莫雁之仪；"执言"者，媒之书。所约之婚，当以长子长女为吉。' },
      { category: '问六甲', content: '生男，是《震》之长男也。' }
    ]
  },
  {
    hexagramId: 7,
    position: 6,
    judgments: [
      { category: '问家宅', content: '爻曰"大君有命，开国承家"，知是家必是阀阅巨室也。"小人勿用"，为其后嗣戒也。' },
      { category: '问营商', content: '上六辰在巳，得《巽》气，《巽》为商，"近利市三倍"，此家必由商业兴家。《巽》又为命，爻曰"大君有命"，又将因富致贵，家道日隆。但因富生骄，比呢小人，所宜戒也。' },
      { category: '问功名', content: '上六居卦之终，谓当论功用赏之时，正见功名显赫。在《震》之长子，自能克家，惟《坎》中男为不可用也，故曰"小人勿用"。' },
      { category: '问婚姻', content: '《师》三至六为《坤》，《坤》妻道也。爻曰"开国承家"，两姓俱是巨室；曰"大君有命"，媒的必是贵人。吉。' },
      { category: '问六甲', content: '生男，主贵。' }
    ]
  },
  {
    hexagramId: 8,
    position: 0,
    judgments: [
      { category: '占问战征', content: '玩爻象，其军威之盛，有如水就下，沛然莫御之势。一战平定，即当列土分封，建立屏藩。' },
      { category: '问营商', content: '水在地上，无处不流通，商业亦以流通为利。《比》，亲比也，得亲比之人以共事，斯商业可垂永远矣。' },
      { category: '问功名', content: '建国封侯为士生荣显之极品；《比》反《师》，《师》上六曰"大君有命，开国承家，"此之谓也。' },
      { category: '问家宅', content: '是宅必低注近水，亦比近贵人之宅。宅基大吉。' },
      { category: '问婚姻', content: '《比》，比好也，地与水，本相亲比，占婚得此，必卜百年好合，且主贵。' },
      { category: '问疾病', content: '坤为地，亦为腹，《坎》为水，亦为心，恐是心腹水肿之症。诸侯能治国，犹医能治病，宜切近求治。吉。' },
      { category: '问六甲', content: '生女，主贵。' }
    ]
  },
  {
    hexagramId: 8,
    position: 1,
    judgments: [
      { category: '占问战征', content: '有如禹征有苗，干羽来格之象，故曰"有孚比之，无咎"。' },
      { category: '问营商', content: '商业专以信实为主，斯远近商客皆亲比而来，贸易广，而获利亦厚矣。吉。' },
      { category: '问功名', content: '"有孚比之"，即中卦所云"信及豚鱼"之谓也。《中孚》九二曰，"我有好爵，吾与尔靡之"，靡共也，言我与尔愿亲比而共升荣也。故曰："比之初六，有它吉也。"' },
      { category: '问婚姻', content: '玩爻辞，谓既得相孚，又复相比，亲之至也，以是订婚，吉无咎也。' },
      { category: '问家宅', content: '《比》，比邻也，近者既信义相孚，往来亲密，远者亦闻风愿来比邻，故曰"终来有它吉"。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 8,
    position: 2,
    judgments: [
      { category: '占问战征', content: '士卒同心，上下一体，战无不克，故曰"比之自内，贞吉"。' },
      { category: '问功名', content: '"内"，我也，以我有实学，足以感孚于人，所谓实至而名归也。吉。' },
      { category: '问营商', content: '一店伙友，性情比洽，自然百为顺从。以此出而贸易，人皆信服，无不利，故《象》曰"比之自内，不自失也"。' },
      { category: '问疾病', content: '"内"谓心腹也，凡病总宜心平气和。中藏通利，外邪自消，故吉。' },
      { category: '问六甲', content: '生女。' },
      { category: '问婚姻', content: '必是内亲重联姻，吉。' }
    ]
  },
  {
    hexagramId: 8,
    position: 3,
    judgments: [
      { category: '占问战征', content: '观军而任用阉寺，参谋而偏听佞人，爻辞所云"比之非人"是也，安得不败！' },
      { category: '问营商', content: '商业之盛衰，惟在其人，其人而日与市并无赖之辈，征逐往来。非人日亲，正人日远，不特其业立败，其人亦不堪问矣。' },
      { category: '问功名', content: '交道不正，士品日下，不特声名破裂，祸亦随至。' },
      { category: '问婚姻', content: '女贵贞洁，男效才良，人伦正道，苟非其偶，致误终身，不亦伤乎！' }
    ]
  },
  {
    hexagramId: 8,
    position: 4,
    judgments: [
      { category: '占问战征', content: '爻曰"外比之"，得外夷归服之象，故曰"贞吉"。' },
      { category: '问营商', content: '想是海外营业，货物流通，无远不居之象，故曰"外比之，贞吉"。' },
      { category: '问功名', content: '四外比五，五居尊位，有简在帝心之象，功名之显赫可知也。' },
      { category: '问家宅', content: '二居内卦，四居外卦，皆曰"贞吉"，自得内外亲比，一家和睦。' },
      { category: '问婚嫁', content: '玩爻辞，想在外地订亲。吉。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 8,
    position: 5,
    judgments: [
      { category: '占问战征', content: '有降者不杀，奔者不禁之恩威，故曰"王用三驱，失前禽也"；有耕者不变，归市不止之德化，故曰"邑人不诫，吉"。' },
      { category: '问营商', content: '玩爻辞，不贪目前小利，不图意外资财，舍逆取顺，虽前有耗，后自得盈余也。' },
      { category: '问疾病', content: '症象已显，前服驱邪之剂，邪已若失，不必警戒，病自愈也。吉。' },
      { category: '问功名', content: '驰驱生事，前功虽失，后效自必显著。吉。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 8,
    position: 6,
    judgments: [
      { category: '占问战征', content: '"首"，军中之首领，谓元帅也。"无首"者，亡其主帅也。凶。' },
      { category: '问营商', content: '五为卦主，上不与比，犹营商之伙，不与店主相亲比，是"无首"也。凡有所谋，必无所终也。凶。' },
      { category: '问功名', content: '凡求名以高等者为首，曰榜首，曰魁首，"无首"则名于何有？凶。' },
      { category: '问家宅', content: '恐丧家主，凶。' },
      { category: '问婚姻', content: '不知何以无主婚之人？婚家来历，不甚明白。凶。' },
      { category: '问六甲', content: '生女，恐有奇疾。' }
    ]
  },
  {
    hexagramId: 9,
    position: 0,
    judgments: [
      { category: '占问时运', content: '目下平平，有动作被人牵阻之患。' },
      { category: '问商业', content: '有外观完美，内多耗失之象。' },
      { category: '问出行', content: '主有风波之患。' },
      { category: '问家宅', content: '主小康之家，防有口舌之祸。' },
      { category: '问战征', content: '虽有雷厉风行之势，而恩泽不孚，只可小捷，难获大胜。' },
      { category: '问六甲', content: '生女，又防小产。' },
      { category: '问行人', content: '恐舟行阻风，迟日可归。无咎。' },
      { category: '问婚姻', content: '主得懿美淑女，吉。' },
      { category: '问年成', content: '主多风少雨，收成平平。' },
      { category: '问疾病', content: '主风火之症。小儿吉，大人凶。' }
    ]
  },
  {
    hexagramId: 9,
    position: 1,
    judgments: [
      { category: '占问时运', content: '目下平常，宜退守，无咎。' },
      { category: '问商业', content: '宜稳守旧业，不宜创立新基。' },
      { category: '问家宅', content: '所谓"士食旧德，衣服先畴"，返而求己，不愿夫外，家道自亨。' },
      { category: '问疾病', content: '宜静心自养，自可复原。' },
      { category: '问六甲', content: '生男。' },
      { category: '问行人', content: '即归。' },
      { category: '问年成', content: '佳。' }
    ]
  },
  {
    hexagramId: 9,
    position: 2,
    judgments: [
      { category: '占问时运', content: '因人成事，自得获利。大吉。' },
      { category: '问商业', content: '宜创立公同社业，或旧业重振，皆得吉也。' },
      { category: '问家宅', content: '主兄弟和睦，恢复先业，必致家道兴隆，大吉之象。' },
      { category: '问疾病', content: '必主夙疾复发，小心调治，无妨。' },
      { category: '问行人', content: '即日偕伴同归。' },
      { category: '问战征', content: '主连日得胜。' },
      { category: '问六甲', content: '生女。' },
      { category: '问年成', content: '丰收。' }
    ]
  },
  {
    hexagramId: 9,
    position: 3,
    judgments: [
      { category: '占问时运', content: '阴盛阳衰，内外不安，最宜慎守。' },
      { category: '问商业', content: '有积货，急宜脱售，凡众所争售者，切勿售，众所不售者，急进售之。此谓反其道而行之，得利。' },
      { category: '问家业', content: '阴阳颠倒，家室不和。' },
      { category: '问疾病', content: '防医士不察，以寒作热，以虚作实，药不对症，是阴阳相反也。宜急别看良医，病必脱体，吉。' },
      { category: '问战征', content: '军心不和，防有辙乱旗靡，倒戈相向之虑。' },
      { category: '问行人', content: '即日可返。' },
      { category: '问出行', content: '恐中途有险。' },
      { category: '问六甲', content: '生男，主有目疾。' },
      { category: '问年成', content: '不佳。' },
      { category: '问婚姻', content: '不利。' }
    ]
  },
  {
    hexagramId: 9,
    position: 4,
    judgments: [
      { category: '占问时运', content: '目下不免忧虑，切忌与人争斗，防有损伤。宜出门远避，斯无咎也。' },
      { category: '问仕途', content: '必得上官契合，即有升迁，大吉。' },
      { category: '问战征', content: '利于出军进攻，可以获胜。' },
      { category: '问家业', content: '姬妾仆从，御之宜得其道，否则防反受其制。' },
      { category: '问行商', content: '利西北，不利东南。' },
      { category: '问疾病', content: '是寒里热之症，治之宜宽解，不宜燥烈药品。' },
      { category: '问谋事', content: '有得邻里相助之力。' },
      { category: '问行人', content: '恐中途遇险，宜微服潜行，忍而避难。' },
      { category: '问六甲', content: '此胎生女。后胎可连举五男。' }
    ]
  },
  {
    hexagramId: 9,
    position: 5,
    judgments: [
      { category: '问商业', content: '有百货辐辏，群商悦服之象，大利也。' },
      { category: '问时运', content: '一生气运亨通，无往不利。' },
      { category: '问仕途', content: '主连得升迁，禄位双全。' },
      { category: '问家业', content: '主累代忠厚，惠及邻里，不独富有，且得贵显。' },
      { category: '问战征', content: '主军士同心，有国境日辟之象。' },
      { category: '问六甲', content: '有孪生之象。' },
      { category: '问疾病', content: '主麻痹不仁，手足挛拘之症。' },
      { category: '问失物', content: '宜从邻近寻觅，自得。' },
      { category: '问出行', content: '宜结伴而行，不宜独往。' }
    ]
  },
  {
    hexagramId: 9,
    position: 6,
    judgments: [
      { category: '占问时运', content: '有昔时希望不遂，今得如顺之意。' },
      { category: '问家业', content: '有前困后亨之象。' },
      { category: '问营商', content: '宜得利则止，若贪得无厌，终恐盈满致凶。' },
      { category: '问战征', content: '既得战胜，宜即罢军，若复进攻，不利主帅。' },
      { category: '问年成', content: '旱，不为灾。' },
      { category: '问六甲', content: '生女。' },
      { category: '问行人', content: '即归。' },
      { category: '问出行', content: '不利。' }
    ]
  },
  {
    hexagramId: 10,
    position: 0,
    judgments: [
      { category: '占问家业', content: '有门庭肃穆，仆妾顺从之象。' },
      { category: '问任官', content: '有品级渐升之象，若攀援干进，反致不利。' },
      { category: '问营商', content: '宜辨别货品，实察商情，待时而售，必得高价。' },
      { category: '问出行', content: '利于滨海之地。' },
      { category: '问六甲', content: '得女。' },
      { category: '问疾病', content: '宜疏通中焦。' },
      { category: '问遗失', content: '一时为物所掩，久后自出。' }
    ]
  },
  {
    hexagramId: 10,
    position: 1,
    judgments: [
      { category: '占问功名', content: '宜安居乐道，待时运亨通，往无不利。' },
      { category: '问营商', content: '直守旧业，久后必获利。' },
      { category: '问谋事', content: '宜缓待，不宜急迫。' },
      { category: '问战征', content: '宜独行潜往，刺探敌情，无咎。' },
      { category: '问家宅', content: '"福履绥之"，门庭吉祥。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 10,
    position: 2,
    judgments: [
      { category: '占问功名', content: '有高尚其志之象。' },
      { category: '问营商', content: '一时物价平平，可得微利。' },
      { category: '问出行', content: '平稳，获吉。' },
      { category: '问终身', content: '有恭敬修身之意。' },
      { category: '问家宅', content: '有分析财产之意。' },
      { category: '问失物', content: '有意外损耗之虑。' }
    ]
  },
  {
    hexagramId: 10,
    position: 3,
    judgments: [
      { category: '占问家宅', content: '有暗昧不明，以小凌大之象。' },
      { category: '问商业', content: '有被人欺弄，急切不能脱售之虑。' },
      { category: '问战征', content: '宜退守，不宜进攻，妄动者凶。' },
      { category: '问行人', content: '恐中途遇险。' },
      { category: '问失物', content: '就近寻觅，自得。' },
      { category: '问六甲', content: '生男，但婴儿防有残疾。' }
    ]
  },
  {
    hexagramId: 10,
    position: 4,
    judgments: [
      { category: '占问时运', content: '以温和接人，以笃实当事，虽临危险，终得免祸，是气运平稳之时也。' },
      { category: '问商业', content: '不宜急切脱货，宜谨慎耐守，终获利益。' },
      { category: '问战征', content: '宜临危固守，遇救得捷，可转败为胜。' },
      { category: '问六甲', content: '平稳得男。' }
    ]
  },
  {
    hexagramId: 10,
    position: 5,
    judgments: [
      { category: '占问时运', content: '前苦后甘，目下正当披云见日之时，犹宜毋忘曩时苦境，兢兢业业，斯能长保其富也。' },
      { category: '问商业', content: '宜和衷共济，有货不宜急售，久后必得厚利。' },
      { category: '问失物', content: '有不待寻而自得之象。' },
      { category: '问官途', content: '目下已得升迁，惟宜谨慎，斯可永保。' },
      { category: '问疾病', content: '危而后安。' }
    ]
  },
  {
    hexagramId: 10,
    position: 6,
    judgments: [
      { category: '占问时运', content: '目下正得安乐之时，其人必素行无亏，晚运亨通，福寿双全，大吉也。' },
      { category: '问商业', content: '往返经营，俱得大利。' },
      { category: '问家宅', content: '祸福无门，惟人自招，若能积善，必有余庆。' },
      { category: '问疾病', content: '恐天年有限。' },
      { category: '问失物', content: '不寻自得。' },
      { category: '问六甲', content: '必产贵子。' },
      { category: '问战征', content: '大获胜捷，奏凯而旋。' }
    ]
  },
  {
    hexagramId: 11,
    position: 0,
    judgments: [
      { category: '占问国家气运', content: '正当君明臣良，黎民安泰，是全盛之世时也。然盛之极即衰之渐，否泰在天，回挽在人，所当深虑，家道亦然。' },
      { category: '问谋事', content: '事必可成，后败须防。' },
      { category: '问婚嫁', content: '阴阳合体，大吉之象。' },
      { category: '问商业', content: '买卖均吉，然卖出利微，买入者利大，其象于"小往大来"见之。' },
      { category: '问年成', content: '雨水调和，丰登之象。' },
      { category: '问六甲', content: '有男女孪生之象。' },
      { category: '问失物', content: '须就左右近处，寻觅自见。' }
    ]
  },
  {
    hexagramId: 11,
    position: 1,
    judgments: [
      { category: '占问时运', content: '有因人成事之象。' },
      { category: '问家宅', content: '有家室团圆，人口平安之吉。' },
      { category: '问营商', content: '得主伙合志，货财汇萃之象。' },
      { category: '问功名', content: '有逐渐升迁之喜。' },
      { category: '问战征', content: '以进攻获胜。' },
      { category: '问失物', content: '宜于丛草处寻觅。' },
      { category: '问六甲', content: '初胎者生女，三四胎则男。' }
    ]
  },
  {
    hexagramId: 11,
    position: 2,
    judgments: [
      { category: '占问时运', content: '目下正当功名显达之时，可以远游海外，创兴事业。' },
      { category: '问仕途', content: '有奉使远行，或从事军征之兆，均获吉也。' },
      { category: '问商业', content: '利在行商，贩运外物。' },
      { category: '问失物', content: '定坠落水中，恐难寻得。' },
      { category: '问疾病', content: '不吉。' },
      { category: '问家宅', content: '用人宜宽，处事宜决，不可专信仆从，致损家业。' },
      { category: '问战征', content: '有怀柔远人，征伐不庭，疆宇日辟之势。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 11,
    position: 3,
    judgments: [
      { category: '占问时运', content: '谨慎者昌，逸欲者败，最宜留意。' },
      { category: '问商业', content: '现虽失意，后必大利。' },
      { category: '问战征', content: '须防敌兵埋伏，宜固守，不宜进攻。' },
      { category: '问失物', content: '不久即得。' },
      { category: '问生产', content: '虽危无咎，必生福泽之儿。' },
      { category: '问家业', content: '宜谨守先业，可以永保富也。' },
      { category: '问疾病', content: '少者无咎，老者大限有阻。' }
    ]
  },
  {
    hexagramId: 11,
    position: 4,
    judgments: [
      { category: '占问时运', content: '喜得朋友同心相孚，诸事可谋。' },
      { category: '问商业', content: '外则场面甚好，内实空虚，全赖同业相助，可以成事。' },
      { category: '问战征', content: '粮饷缺乏，当劫掠敌粮，以供军需。众心坚固，有胜无败。' },
      { category: '问家业', content: '本一富家，目下外强内弱，幸亲戚邻里，皆得有无相通，不忧匮乏。' },
      { category: '问失物', content: '主遗落比邻之家，问之即得。' }
    ]
  },
  {
    hexagramId: 11,
    position: 5,
    judgments: [
      { category: '占问时运', content: '目下亨通，宜谦虚柔顺，万事皆吉。' },
      { category: '问商业', content: '宜贸达海外。吉。' },
      { category: '问家宅', content: '得内助之贤。' },
      { category: '问婚嫁', content: '宜远嫁远娶，吉。' },
      { category: '问六甲', content: '主生贵女。' },
      { category: '问疾病', content: '必得神佑，吉。' },
      { category: '问失物', content: '拾者必自来归还。' }
    ]
  },
  {
    hexagramId: 11,
    position: 6,
    judgments: [
      { category: '占问时运', content: '目下气运颠倒，宜谨慎自守，须防小人播弄。' },
      { category: '问商业', content: '宜就小做，以待时运。' },
      { category: '问战征', content: '攻夺城地，必胜。' },
      { category: '问家宅', content: '防有颠覆破败，宜牢稳守业。' },
      { category: '问生产', content: '生女。' },
      { category: '问失物', content: '恐难复得。' }
    ]
  },
  {
    hexagramId: 12,
    position: 0,
    judgments: [
      { category: '占问时运', content: '目下诸事不利，宜慎守，不宜妄动。' },
      { category: '问营商', content: '宜买入，不宜卖出，隐藏待价，后可获利。' },
      { category: '问战征', content: '不利攻，宜退守。' },
      { category: '问家业', content: '惟宜克俭克勤，方可免祸。' },
      { category: '问疾病', content: '是痞隔之症，宜节饮食。' },
      { category: '问生产', content: '恐生男不育。' },
      { category: '问失物', content: '恐不可复得。' },
      { category: '问婚嫁', content: '有分离之象。' },
      { category: '问谋事', content: '不成。' }
    ]
  },
  {
    hexagramId: 12,
    position: 1,
    judgments: [
      { category: '占问时运', content: '吉，宜以合伙谋事。' },
      { category: '问营商', content: '于新立商业，用人宜慎。' },
      { category: '问战征', content: '当牵左右营，合队并进。吉。' },
      { category: '问家宅', content: '主有亲戚同居，吉。' },
      { category: '问疾病', content: '恐患传染之症，然无害也。' },
      { category: '问六甲', content: '生女。' },
      { category: '问失物', content: '可得。' }
    ]
  },
  {
    hexagramId: 12,
    position: 2,
    judgments: [
      { category: '占问时运', content: '目下顺适，能以宽容待人，万事皆吉。' },
      { category: '问商业', content: '买卖皆利。' },
      { category: '问讼事', content: '防有贿赂伪造等弊，始审或不利，上控则吉。' },
      { category: '问家宅', content: '家口平安，年老家长，或恐有疾，亦无害也。' },
      { category: '问战征', content: '必可获胜，主将或有小害。' },
      { category: '问失物', content: '须就包裹内见之，必得。' },
      { category: '问生产', content: '得女，产母有疾，无妨。' }
    ]
  },
  {
    hexagramId: 12,
    position: 3,
    judgments: [
      { category: '占问时运', content: '目下正当好运将来之际，宜谨慎自守，以避羞辱。' },
      { category: '问商业', content: '防内中暗有耗失，外面仍然瞒盖，以用人不当也。' },
      { category: '问家宅', content: '恐内行不修，有墙茨之羞。又不宜以妾作妻。' },
      { category: '问战征', content: '防为敌军所困。' },
      { category: '问疾病', content: '防以寒包热之症，恐药不对症，宜急看良医。' },
      { category: '问讼事', content: '恐辨护士，不得其当。' },
      { category: '问失物', content: '防窃者含羞自尽，反致多事。' },
      { category: '问行人', content: '防其人恋女色，一时未归。' }
    ]
  },
  {
    hexagramId: 12,
    position: 4,
    judgments: [
      { category: '占问时运', content: '目下已得盛运，随意谋事，必获利益。' },
      { category: '问商业', content: '大得转机，但须立定意志，审度市面，从前所失，今可复得，且获盈余。' },
      { category: '问家宅', content: '宅运已转，吉。' },
      { category: '问战征', content: '命将出征，大吉。' },
      { category: '问疾病', content: '命根牢固，无害。' },
      { category: '问失物', content: '必夹入在用品物中，寻之即得。' }
    ]
  },
  {
    hexagramId: 12,
    position: 5,
    judgments: [
      { category: '占问时运', content: '目下渐入佳境，惟安而不忘危，百事皆吉。' },
      { category: '问商业', content: '恰当绝好机会，但须改用伙友，谨慎做去，必获利益。' },
      { category: '问家宅', content: '祖业深厚，吉。' },
      { category: '问战征', content: '暂宜休战。' },
      { category: '问疾病', content: '有碍。' },
      { category: '问讼事', content: '和。' },
      { category: '问失物', content: '防难复得。' },
      { category: '问行人', content: '不利。' },
      { category: '问生产', content: '大人无碍，小人难保。' }
    ]
  },
  {
    hexagramId: 12,
    position: 6,
    judgments: [
      { category: '占问时运', content: '亨通。' },
      { category: '问商业', content: '春夏不利，秋冬大吉。' },
      { category: '问家宅', content: '迁居大吉，老宅不利。' },
      { category: '问讼事', content: '即日可结。' },
      { category: '问战征', content: '小败大胜。' },
      { category: '问六甲', content: '生男。' },
      { category: '问失物', content: '即得。' },
      { category: '问疾病', content: '即愈，但复发可虑。' }
    ]
  },
  {
    hexagramId: 13,
    position: 0,
    judgments: [
      { category: '占问时运', content: '目下大有升腾之象，且得朋友扶助，大吉。' },
      { category: '问商业', content: '宜于合资会社等业，大利。' },
      { category: '问家宅', content: '得合家和悦之象，吉。' },
      { category: '问战征', content: '主军士同心，即宜调兵进攻，大利。' },
      { category: '问疾病', content: '是火症也，恐医药有误，宜别求良医。' },
      { category: '问讼事', content: '防有同党私庇，一时未可结案。' },
      { category: '问六甲', content: '生女。' },
      { category: '问失物', content: '须细检于物类中寻觅，乃得。' },
      { category: '问行人', content: '即日可归，必与友偕来。' }
    ]
  },
  {
    hexagramId: 13,
    position: 1,
    judgments: [
      { category: '占问时运', content: '目下平顺，宜经营出外，利。' },
      { category: '问家宅', content: '一门之内，雍雍和睦，无咎。' },
      { category: '问商业', content: '利行商，不利坐贾。' },
      { category: '问疾病', content: '宜避地调养，无碍。' },
      { category: '问讼事', content: '防有惩役之患，宜预出躲避，可以免咎。' },
      { category: '问失物', content: '须于门外寻觅。' },
      { category: '问六甲', content: '即时可产，得男。' }
    ]
  },
  {
    hexagramId: 13,
    position: 2,
    judgments: [
      { category: '占问时运', content: '目下未佳，虽有相助，而相忌者多，未能百事遂意。' },
      { category: '问商业', content: '利于大宗买卖，惟须出纳宜留意。得利。' },
      { category: '问讼事', content: '不利。' },
      { category: '问家宅', content: '以勤俭起家，得长子之力。' },
      { category: '问疾病', content: '有魂归宗庙之象，凶。' },
      { category: '问行人', content: '即返。' },
      { category: '问六甲', content: '生女。' },
      { category: '问失物', content: '被拾者藏匿，不见还也。' }
    ]
  },
  {
    hexagramId: 13,
    position: 3,
    judgments: [
      { category: '占问时运', content: '目下直潜伏，三岁后方可出而谋事。' },
      { category: '问商业', content: '宜开山林，三年后大可获利。' },
      { category: '问家宅', content: '防有盗贼窃伺。' },
      { category: '问战征', content: '须防敌军埋伏。' },
      { category: '问讼事', content: '虑有意外葛藤，一时不了。' },
      { category: '问失物', content: '须于丛草中寻之，或山上草中。' }
    ]
  },
  {
    hexagramId: 13,
    position: 4,
    judgments: [
      { category: '占问时运', content: '目下直退守弗动，吉。' },
      { category: '问商业', content: '宜垄断货物，待价弗售，后必获利。' },
      { category: '问家宅', content: '宜修葺墙垣，吉。' },
      { category: '问战征', content: '直坚筑营垒，防敌袭击。' },
      { category: '问讼事', content: '今虽不直，后反得胜。' },
      { category: '问失物', content: '久后可得。' },
      { category: '问疾病', content: '虽凶无害。' }
    ]
  },
  {
    hexagramId: 13,
    position: 5,
    judgments: [
      { category: '占问时运', content: '目下正当欢乐之时，从前苦志，今得遂愿。' },
      { category: '问商业', content: '虽小有挫折，终获大利。' },
      { category: '问家宅', content: '防有惊惶之虑，然终得平和也。' },
      { category: '问疾病', content: '先危后安。' },
      { category: '问讼事', content: '须请大好辩护士，方能得直。' },
      { category: '问行人', content: '防中途有阻，须缓得归。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 13,
    position: 6,
    judgments: [
      { category: '占问时运', content: '目下顺适，诸事无所障碍，但宜在闲散之地。' },
      { category: '问商业', content: '宜立业于市尘之外，无忧耗损，一时亦未能获大利益。' },
      { category: '问战征', content: '宜在荒地屯营。' },
      { category: '问失物', content: '于郊外觅之。' },
      { category: '问讼事', content: '恐难得直。' },
      { category: '问家宅', content: '平顺无灾。' }
    ]
  },
  {
    hexagramId: 14,
    position: 0,
    judgments: [
      { category: '占问时运', content: '目下亨通，如日在天上，有光明遍照之象。' },
      { category: '问商业', content: '可放胆大做，有富有日新之象。' },
      { category: '问家宅', content: '必是祖基素封，积善之家，宜诚劝子弟，培植善根，家业可永保也。' },
      { category: '问战征', content: '主将星明耀，赏罚得中，万军用命之象。' },
      { category: '问行人', content: '必满载而归，大利。' },
      { category: '问六甲', content: '生男。' },
      { category: '问疾病', content: '不利。' },
      { category: '问讼事', content: '主公明断结，否则亦必和息。' }
    ]
  },
  {
    hexagramId: 14,
    position: 1,
    judgments: [
      { category: '占问时运', content: '目下尚未交盛运，须刻苦自勉，待好运到来，自然得利。' },
      { category: '问商业', content: '想是基业初创，百货未曾交办，须要谨守其初，自得无害而有利也。' },
      { category: '问战征', content: '必是初次动众，尚未交锋，须要慎始，自无后患。' },
      { category: '问家宅', content: '必是新富之家，艰难创业，自得后福。' },
      { category: '问讼事', content: '尚未投告，还宜和息为善。' },
      { category: '问行人', content: '尚未有归志也。' },
      { category: '问六甲', content: '生男，产期尚远。' },
      { category: '问失物', content: '一时难以即得，待久可有。' }
    ]
  },
  {
    hexagramId: 14,
    position: 2,
    judgments: [
      { category: '占问时运', content: '目下正交好运，一路顺风，无往不利。' },
      { category: '问商业', content: '贩运货物，贸迁有无，极之域外通商，无不获利。' },
      { category: '问战征', content: '利于陆战，率军直进，攻取皆捷。' },
      { category: '问家宅', content: '平安无咎，若谋高迁，更吉。' },
      { category: '问疾病', content: '宜出外就医，吉。' },
      { category: '问行人', content: '因在外谋事，诸多利益，一时未归。' },
      { category: '问讼事', content: '得胜。' },
      { category: '问六甲', content: '生男，逾月则生女。' }
    ]
  },
  {
    hexagramId: 14,
    position: 3,
    judgments: [
      { category: '占问时运', content: '目下正当显荣之时，利为公，不利营私。' },
      { category: '问仕途', content: '恰得宠任荣赏之象，若取赂必败，宜慎。' },
      { category: '问商业', content: '不特得利，且可得名。' },
      { category: '问战征', content: '有犒赏三军之象，获得胜仗，恐于兵众有损。' },
      { category: '问家宅', content: '有喜庆宴会之象，家食丰富，但使用婢仆中，须当留意。' },
      { category: '问讼事', content: '若为饮食起衅，恐难得直。' },
      { category: '问六甲', content: '生男。主贵，但幼小时，防多疾厄。' }
    ]
  },
  {
    hexagramId: 14,
    position: 4,
    judgments: [
      { category: '占问时运', content: '六爻已值其四，是目下已到极盛之会，当持盈保泰，知止不辱。' },
      { category: '问商业', content: '已得利益，毋过贪求，斯无害。' },
      { category: '问家宅', content: '必苟完苟美，如卫公子荆之居室，则善矣，否则未免盈满有损。' },
      { category: '问疾病', content: '防有膨胀之患。' },
      { category: '问六甲', content: '生男。' },
      { category: '问讼事', content: '得明决之才，判断得直。' },
      { category: '问失物', content: '在竹筐内寻之。' }
    ]
  },
  {
    hexagramId: 14,
    position: 5,
    judgments: [
      { category: '占问时运', content: '必其平生为人所信服，且有威望，晚运亨佳之会也。' },
      { category: '问商业', content: '一时众商信服，货物通行，可永保其富有也。' },
      { category: '问战征', content: '众军踊跃，威令远扬，尤宜警备，以防敌军。' },
      { category: '问家宅', content: '主一家和睦，恐有盗窃，宜备防也。' },
      { category: '问失物', content: '所窃者即信用之人，以威逼之，必交还也。但恐得而复失。' },
      { category: '问六甲', content: '生男。' },
      { category: '问讼事', content: '被告者必畏威而和。' },
      { category: '问行人', content: '如期而归。' }
    ]
  },
  {
    hexagramId: 14,
    position: 6,
    judgments: [
      { category: '占问时运', content: '目下一路好运，万事皆吉。' },
      { category: '问商业', content: '百货皆获利。' },
      { category: '问家宅', content: '一门福庆。' },
      { category: '问战征', content: '即此一战，军功大捷，可罢师也。' },
      { category: '问行人', content: '即归。' },
      { category: '问疾病', content: '默得神佑，吉。' },
      { category: '问六甲', content: '生男。' },
      { category: '问失物', content: '就高处寻觅，可得。' }
    ]
  },
  {
    hexagramId: 15,
    position: 0,
    judgments: [
      { category: '占问时运', content: '目下平顺，有步步渐高之象。' },
      { category: '问商业', content: '物价均平，利益顺适，此业可保永远。' },
      { category: '问家宅', content: '此宅想近山麓，家道平顺，大利。' },
      { category: '问战征', content: '营屯宜近山，须整齐队伍，严明赏罚。至五爻进师，六爻可以攻取城邑，大胜。' },
      { category: '问讼事', content: '宜平和，不宜纷争。' },
      { category: '问疾病', content: '是内郁之症，宜宽怀调治。' },
      { category: '问行人', content: '舟行而归，吉。' },
      { category: '问失物', content: '须于积土中寻见。' },
      { category: '问年成', content: '风雨调顺，在不丰不歉之间，平平。' }
    ]
  },
  {
    hexagramId: 15,
    position: 1,
    judgments: [
      { category: '占问时运', content: '目下万事亨通，利涉大川。' },
      { category: '问商业', content: '经营之始，宜谦逊谨慎，可获宏利。' },
      { category: '问家宅', content: '辛苦起家，积资成富，家业可长保也。' },
      { category: '问疾病', content: '明夷之伤。' },
      { category: '问失物', content: '失而不可得。' },
      { category: '问六甲', content: '生女。' },
      { category: '问讼事', content: '彼此耗费，必有一伤。' },
      { category: '问功名', content: '可成事。' }
    ]
  },
  {
    hexagramId: 15,
    position: 2,
    judgments: [
      { category: '占问时运', content: '目下名称藉藉，定多得意。' },
      { category: '问商业', content: '得利。' },
      { category: '问家宅', content: '家中积产富足，外面名声亦好。' },
      { category: '问战征', content: '可鸣鼓直前，攻取中营，大捷。' },
      { category: '问疾病', content: '是用心过劳之症。' },
      { category: '问功名', content: '有必得之喜。' },
      { category: '问讼事', content: '鸣冤得伸。' },
      { category: '问失物', content: '即得。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 15,
    position: 3,
    judgments: [
      { category: '占问时运', content: '一生劳苦，目下万事亨通，老运更佳。' },
      { category: '问商业', content: '经营之始，百般勤劳，今基业已成，可以永远获利。' },
      { category: '问家宅', content: '必是辛苦起家，积资成富，能复持盈保泰，家业可长保也。' },
      { category: '问疾病', content: '恐病成劳弱，天命有终。' },
      { category: '问失物', content: '后可复得。' },
      { category: '问六甲', content: '生男。' },
      { category: '问讼事', content: '枉者自服，即可了结。' },
      { category: '问功名', content: '得此劳绩，自必升用。' }
    ]
  },
  {
    hexagramId: 15,
    position: 4,
    judgments: [
      { category: '占问时运', content: '目下正当好运，万事吉利。' },
      { category: '问商业', content: '任从指挥，无不获利；凡买卖但宜留些余步为好。' },
      { category: '问家宅', content: '盍家以谦和作事，事事吉利。' },
      { category: '问战征', content: '指挥如意，必得大捷。' },
      { category: '问疾病', content: '宜表散之，吉。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 15,
    position: 5,
    judgments: [
      { category: '占问时运', content: '目下虽处正运，然或有龃龉，宜自振作，不可一味姑息也。' },
      { category: '问商业', content: '所获利益，防为他人分取，致生事端。' },
      { category: '问家宅', content: '能以择邻而处，自得守望相助之义。' },
      { category: '问婚姻', content: '得邻近之女议婚，大利。' },
      { category: '问疾病', content: '利用消伐之剂，吉。' },
      { category: '问讼事', content: '宜取邻人作证，得直。' },
      { category: '问失物', content: '于邻家觅之，得。' }
    ]
  },
  {
    hexagramId: 15,
    position: 6,
    judgments: [
      { category: '占问时运', content: '盛运已过，目下未见得意。' },
      { category: '问商业', content: '有名无实，宜整顿旧业。' },
      { category: '问家宅', content: '防有怪祟，时作响动，用法镇压治之。' },
      { category: '问疾病', content: '宜自调养心志。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 16,
    position: 0,
    judgments: [
      { category: '占问时运', content: '目下如春雷发动，正得时会，万事皆吉。' },
      { category: '问商业', content: '时当新货初到，市价飞腾，绝好机会，必得大利。' },
      { category: '问家宅', content: '防有变动，宜礼神祭祖，以祈福佑，得安。' },
      { category: '问疾病', content: '宜祷。' },
      { category: '问战征', content: '雷厉风行，必胜之兆。' },
      { category: '问功名', content: '所谓平地一声雷，指日高升之象。' },
      { category: '问失物', content: '自然出现。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 16,
    position: 1,
    judgments: [
      { category: '占问时运', content: '初运颇佳，但一经得意，便尔夸张，以致穷也。' },
      { category: '问商业', content: '初次必得利，不可过贪。' },
      { category: '问家宅', content: '恐鸟啼猿啸，致有怪异之惊，凶。' },
      { category: '问疾病', content: '不利。' },
      { category: '问讼事', content: '鸣冤不直，宜自罢讼。' },
      { category: '问失物', content: '不得。' }
    ]
  },
  {
    hexagramId: 16,
    position: 2,
    judgments: [
      { category: '占问时运', content: '其人品行高尚，不随世为隆污，吉。' },
      { category: '问商业', content: '能决定己志，不为奸商摇惑，贩运快速，获利。' },
      { category: '问家宅', content: '主家者宜严正持之，凡非人来往，速宜斥绝。吉。' },
      { category: '问战征', content: '所谓守之如山，发之如火，能审机也。' },
      { category: '问疾病', content: '新疾即愈，夙疾即亡，终日间也。' },
      { category: '问六甲', content: '生女，即产。' }
    ]
  },
  {
    hexagramId: 16,
    position: 3,
    judgments: [
      { category: '占问时运', content: '目下运非不佳，在自己作为不正，是以有悔。' },
      { category: '问商业', content: '能窥探商情，为商家之能事，然一得消息，买卖宜决，若一迟疑，便落人后。' },
      { category: '问家宅', content: '须防窃盗，宜速警备。' },
      { category: '问失物', content: '速寻则得，迟则无矣。' },
      { category: '问讼事', content: '宜速了结。' }
    ]
  },
  {
    hexagramId: 16,
    position: 4,
    judgments: [
      { category: '占问时运', content: '目下正大运方通。' },
      { category: '问商业', content: '会萃众货，大得利也。' },
      { category: '问家宅', content: '门庭豫顺，得财得福，大有之家。' },
      { category: '问功名', content: '即卜弹冠之庆。' },
      { category: '问讼事', content: '由此罢讼，两造豫悦。' },
      { category: '问行人', content: '必主满载归来。' },
      { category: '问出行', content: '由此前行，一路顺风，大得喜悦，可"勿疑"也。' },
      { category: '问六甲', content: '生男，易长易成，且主贵。' },
      { category: '问失物', content: '即得。' }
    ]
  },
  {
    hexagramId: 16,
    position: 5,
    judgments: [
      { category: '占问时运', content: '知其人本尊贵，因素性柔弱，不能自振。' },
      { category: '问商业', content: '其基业甚好，因用人不当，钱财落他人之手，几致亏耗。' },
      { category: '问家宅', content: '恐被借居者侵占，业主反不得自主。' },
      { category: '问战征', content: '以偏将擅权，主帅失威，虽未丧师，亦幸免也。' },
      { category: '问疾病', content: '是带病延年之症。' },
      { category: '问六甲', content: '生男，必有病。' },
      { category: '问失物', content: '可得。' }
    ]
  },
  {
    hexagramId: 16,
    position: 6,
    judgments: [
      { category: '占问时运', content: '目下歹运已极，好运将来，翻然振作，大有可为。' },
      { category: '问商业', content: '宜作变计，改旧从新，必得利益。' },
      { category: '问家宅', content: '老宅不利，或迁居，或改造，吉。' },
      { category: '问战征', content: '宜别遣主帅，改旗易辙，乃可得胜；或更就别路进兵。' },
      { category: '问讼事', content: '宜罢讼和好，无咎。' },
      { category: '问六甲', content: '逾月可产，得女。' }
    ]
  },
  {
    hexagramId: 17,
    position: 0,
    judgments: [
      { category: '占问时运', content: '目下气运平常，宜暂时晦藏，明年利于远行，至第五年，则可得利。' },
      { category: '问战征', content: '宜退守，明年当小有功，必俟六年，斯敌皆就缚矣。' },
      { category: '问商业', content: '有货一时难售，来春可以获利。' },
      { category: '问家宅', content: '防有伏怪，夜间致多惊惧。' },
      { category: '问讼事', content: '恐有牢狱之灾，明年又防征役远行。凶。' },
      { category: '问失物', content: '宜在枕席间觅之。' },
      { category: '问六甲', content: '生女。' },
      { category: '问行人', content: '即归。' },
      { category: '问出行', content: '以明年为利。' }
    ]
  },
  {
    hexagramId: 17,
    position: 1,
    judgments: [
      { category: '占问时运', content: '目下正当换运之时，交入新运，一动便佳，尤利出门。' },
      { category: '问商业', content: '货物当贩运出外，得利。' },
      { category: '问家宅', content: '当以修造吉，或迁居出外，更利。' },
      { category: '问战征', content: '击东者变而击西，击南者变而攻北，吉。' },
      { category: '问疾病', content: '恐药不对症，宜改变药饵，乃吉。或于远方求医，更利。' },
      { category: '问失物', content: '门外寻之，得。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 17,
    position: 2,
    judgments: [
      { category: '占问时运', content: '目下气运颠倒，宜自审慎。' },
      { category: '问商业', content: '有贪小失大之惧。' },
      { category: '问家宅', content: '阴阳倒置，有女子小人弄权，反致家主受制之象。' },
      { category: '问战征', content: '只能捉捕敌兵，未获斩将拔旗之捷。' },
      { category: '问六甲', content: '生女。' },
      { category: '问失物', content: '小品可得，大件必失。' },
      { category: '问婚嫁', content: '恐非良缘。' }
    ]
  },
  {
    hexagramId: 17,
    position: 3,
    judgments: [
      { category: '占问时运', content: '目下交正运，求财求名，无不如意。' },
      { category: '问商业', content: '小往大来，必得利益。' },
      { category: '问战征', content: '主生擒敌将，必得大捷。' },
      { category: '问家宅', content: '家道丰富，但防小儿辈有灾。' },
      { category: '问疾病', content: '大人无妨，小人恐有不利。' },
      { category: '问六甲', content: '恐生而不育。' },
      { category: '问失物', content: '得。' },
      { category: '问婚嫁', content: '主结高亲。' }
    ]
  },
  {
    hexagramId: 17,
    position: 4,
    judgments: [
      { category: '占问时运', content: '目下有凶有吉，利在单月，不利双月，明年则吉。' },
      { category: '问商业', content: '获利后，防有意外之祸，必俟辨明方可。' },
      { category: '问家宅', content: '或新买，或新造，皆不吉。' },
      { category: '问战征', content: '小胜后，防大败。' },
      { category: '问疾病', content: '先凶后吉。' },
      { category: '问讼事', content: '始审凶，上控则无咎。' },
      { category: '问失物', content: '一时难觅，待后方见。' }
    ]
  },
  {
    hexagramId: 17,
    position: 5,
    judgments: [
      { category: '占问时运', content: '目下处盛运，万事获吉。' },
      { category: '问商业', content: '以其货物嘉美，获利百倍。' },
      { category: '问家宅', content: '必是积善之家，众咸信从，为一乡之望也。' },
      { category: '问战征', content: '军众同心，必获胜捷，吉。' },
      { category: '问婚嫁', content: '百年好合，大吉。' },
      { category: '问讼事', content: '和好。' },
      { category: '问疾病', content: '吉。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 17,
    position: 6,
    judgments: [
      { category: '占问时运', content: '目下左支右绌，不甚如意。' },
      { category: '问商业', content: '坚固结实，稳当可做，但未能事事舒展。' },
      { category: '问家宅', content: '恐防范约束过严，家人怨苦。' },
      { category: '问疾病', content: '祷之则吉。' },
      { category: '问婚嫁', content: '有赤绳系臂之缘。' },
      { category: '问讼事', content: '恐有桎梏困系之患。' },
      { category: '问失物', content: '是自己包裹藏之，未尝失也。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 18,
    position: 0,
    judgments: [
      { category: '占问时运', content: '目下好运方来，须力图振作，可改旧观。' },
      { category: '问商业', content: '防货物堆积致坏，宜急起贩运出售。' },
      { category: '问战征', content: '屯营宜就旷地，不宜近山，防有风鹤之惊。' },
      { category: '问家宅', content: '须整肃门庭，凛诲淫蛊惑之戒。' },
      { category: '问疾病', content: '防巫蛊咒诅，或腹患蛊毒之症。' },
      { category: '问讼事', content: '想是听人蛊惑所致，急宜罢讼。' },
      { category: '问婚嫁', content: '恐有男女私情。' },
      { category: '问失物', content: '其物已坏。' },
      { category: '问出行', content: '防阻风。' },
      { category: '问六甲', content: '防有异胎。' }
    ]
  },
  {
    hexagramId: 18,
    position: 1,
    judgments: [
      { category: '占问时运', content: '好运初交，克勤克俭，克光前业，吉。' },
      { category: '问商业', content: '旧业重兴，必多获利。' },
      { category: '问家宅', content: '想是祖先旧宅，当改造重从，大利。' },
      { category: '问战征', content: '如勾践复吴，子胥伐楚，必获重兴。吉。' },
      { category: '问讼事', content: '前不得直，复宜上控，无咎。' },
      { category: '问疾病', content: '虽危无妨，若无子者，占此不利。' },
      { category: '问婚嫁', content: '佳儿佳妇，吉。' },
      { category: '问六甲', content: '生男，必能兴家，吉。' }
    ]
  },
  {
    hexagramId: 18,
    position: 2,
    judgments: [
      { category: '占问时运', content: '目下贵将顺调剂，不可草率。' },
      { category: '问商业', content: '防有旧债积弊等事，宜宽缓调处。' },
      { category: '问家宅', content: '恐有母党擅权启衅，宜忍耐善处。' },
      { category: '问战征', content: '防有阴险，不可直进。' },
      { category: '问疾病', content: '壮年防是疟母痞块等疾，小儿或是胎气不足，宜服柔和之剂。' },
      { category: '问行人', content: '在半途，后日可归。' },
      { category: '问失物', content: '得。' },
      { category: '问婚姻', content: '当得佳妇。' }
    ]
  },
  {
    hexagramId: 18,
    position: 3,
    judgments: [
      { category: '占问时运', content: '目下直痛革前非，纵小有挫折，终得有济。' },
      { category: '问商业', content: '宜重兴旧业，改立章程，或有小失，必得大利。' },
      { category: '问家宅', content: '恐栋宇年久，多致蛀腐，毋惜小费，急宜改造。' },
      { category: '问战征', content: '刚武直进，未免小败，然必无大害。' },
      { category: '问失物', content: '得则必得，防有小小口舌之灾。' },
      { category: '问六甲', content: '生男，但生下小孩，未免小有疾厄。' },
      { category: '问疾病', content: '无妨。' }
    ]
  },
  {
    hexagramId: 18,
    position: 4,
    judgments: [
      { category: '占问时运', content: '运亦平常，但一味因循，终致自误。' },
      { category: '问商业', content: '徒知守常，不知革弊，长此以往，难以得利。' },
      { category: '问战征', content: '威不肃，令不严，未可前往也，往必见败。' },
      { category: '问家宅', content: '父业虽裕，敝败已深，难保其往也。' },
      { category: '问疾病', content: '外形尚裕，内患已深，不急图治，后必莫救。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 18,
    position: 5,
    judgments: [
      { category: '占问时运', content: '虽门祚衰薄，能自振作，自足立身扬名。' },
      { category: '问商业', content: '旧业虽不甚佳，此番从新改作，必能获名获利。' },
      { category: '问家宅', content: '祖遗之产不厚，幸能扩充前业，必至光大门楣。' },
      { category: '问战征', content: '能克复城池，军声远播，吉。' },
      { category: '问疾病', content: '当延名医治之。' },
      { category: '问六甲', content: '生男。' },
      { category: '问嫁娶', content: '定是名门贵族。' }
    ]
  },
  {
    hexagramId: 18,
    position: 6,
    judgments: [
      { category: '占问时运', content: '宜以退为进。' },
      { category: '问商业', content: '目下货价，必将逐渐增高，不必急售。得利。' },
      { category: '问家宅', content: '宜傍高阜之地，吉。' },
      { category: '问疾病', content: '卦为归魂，恐天年有阻。' },
      { category: '问婚嫁', content: '必是女贞男良，天缘巧合。' },
      { category: '问战征', content: '想已值战胜凯旋之时。' },
      { category: '问出行', content: '宜行商，不宜求名。' }
    ]
  },
  {
    hexagramId: 19,
    position: 0,
    judgments: [
      { category: '占问时运', content: '目下作事，恰如一潭活水，流行自在，好运正长。' },
      { category: '问商业', content: '泽为货物，地为贩运之地也，得此占，其获利厚而尤远，大吉。' },
      { category: '问家宅', content: '此宅必近水泽之乡，家业正旺，财丁两盛，大吉。' },
      { category: '问战征', content: '其阵宜临水处，不特一时得胜，且有万民归服之象。' },
      { category: '问疾病', content: '其命可保，其病必延久，一时难愈。' },
      { category: '问讼事', content: '恐久久不了。' },
      { category: '问婚嫁', content: '两姓和合，五世其昌，大吉。' },
      { category: '问六甲', content: '生女。' },
      { category: '问行人', content: '二时未归。' },
      { category: '问失物', content: '在川岸处觅之，保可得也。' }
    ]
  },
  {
    hexagramId: 19,
    position: 1,
    judgments: [
      { category: '占问时运', content: '目下新运初交，能守其正，行无不利。' },
      { category: '问商业', content: '时当新货初出，市价平正，尽可贩行，无不如志。吉。' },
      { category: '问家宅', content: '必是忠厚中正之家，现下适有吉事临门。大利。' },
      { category: '问战征', content: '初次临阵，宜从大路进军。吉。' },
      { category: '问疾病', content: '病是初起，正气充足，可保即愈。' },
      { category: '问婚嫁', content: '门户相当，品行端正，佳偶也。' },
      { category: '问讼事', content: '一经临审，即可了结。' },
      { category: '问六甲', content: '生男，临盆有喜。' }
    ]
  },
  {
    hexagramId: 19,
    position: 2,
    judgments: [
      { category: '占问时运', content: '目下正佳，又得贵人照应，大吉。' },
      { category: '问商业', content: '初次既获吉，二次更利。' },
      { category: '问家宅', content: '有福星照临之象，前后皆吉。' },
      { category: '问战征', content: '再接再励，所向皆吉，但防偏裨中，有不从令者，以致败事。' },
      { category: '问婚嫁', content: '咸利，惟属羊者最佳。' },
      { category: '问讼事', content: '却不致败，但一时未得顺从。' },
      { category: '问六甲', content: '生男，但未产也。' },
      { category: '问行人', content: '在外者归期未定。' }
    ]
  },
  {
    hexagramId: 19,
    position: 3,
    judgments: [
      { category: '占问时运', content: '运既不佳，行亦不正，幸能知悔，后运可望。' },
      { category: '问商业', content: '店基不得其位，惟贩运糖业则佳。' },
      { category: '问家宅', content: '屋运不佳，宜迁徙为吉。' },
      { category: '问战征', content: '屯营地位不当，迁营则吉。' },
      { category: '问疾病', content: '药不对症，宜进苦辛之剂，无咎。' },
      { category: '问婚姻', content: '不合。' },
      { category: '问行人', content: '外不得利，近时可归。' },
      { category: '问失物', content: '可得。' },
      { category: '问六甲', content: '生女，恐难长养。' }
    ]
  },
  {
    hexagramId: 19,
    position: 4,
    judgments: [
      { category: '占问时运', content: '好运已至，无不得当，有吉无凶。' },
      { category: '问商业', content: '目下贩运，正当其时，无往不利。' },
      { category: '问家宅', content: '宅位得当，家业兴隆，无咎。' },
      { category: '问战征', content: '其时已至，正可临敌获胜。' },
      { category: '问疾病', content: '虽至危笃，尚可无咎。' },
      { category: '问婚姻', content: '彼此欢洽，门户亦当。' },
      { category: '问行人', content: '即至。' },
      { category: '问失物', content: '即得。' }
    ]
  },
  {
    hexagramId: 19,
    position: 5,
    judgments: [
      { category: '占问时运', content: '目下运得其时，又得好人相助，事事宜成，吉。' },
      { category: '问商业', content: '知往知来，通晓商情，自然获利。吉。' },
      { category: '问家宅', content: '有五福临门之兆。吉。' },
      { category: '问战征', content: '能得军心，斯知己知彼，战无不胜也。' },
      { category: '问疾病', content: '当得良医，详知病由，治之自然得愈。' },
      { category: '问婚姻', content: '宜家宜室。大吉。' },
      { category: '问失物', content: '有人拾得，久后自知。' },
      { category: '问六甲', content: '生男，主贵。' },
      { category: '问行人', content: '尚在半途，后日可归。' }
    ]
  },
  {
    hexagramId: 19,
    position: 6,
    judgments: [
      { category: '占问时运', content: '目下好运已终，惟其存心忠厚，故得无咎。' },
      { category: '问商业', content: '贩卖内地，吉。' },
      { category: '问家宅', content: '世代忠厚，内外肃穆，吉。' },
      { category: '问战征', content: '宜增兵益饷，以保护内地为要。' },
      { category: '问疾病', content: '培养元气，勿药有喜。' },
      { category: '问六甲', content: '生女。' },
      { category: '问失物', content: '即在室内，未尝失也。' },
      { category: '问行人', content: '即日可归。' }
    ]
  },
  {
    hexagramId: 20,
    position: 0,
    judgments: [
      { category: '占问时运', content: '目下正当振作有为，宜出外历览，不宜杜门静守。' },
      { category: '问商业', content: '贩运洋货，风险须防。' },
      { category: '问家宅', content: '宅中或旧有供奉神佛，或皈入教门之家，或是家主设馆教徒。' },
      { category: '问战征', content: '有风雷疾卷之势，可以掠得土地，收获民众。吉。' },
      { category: '问疾病', content: '是风湿之症，宜流行活动，血调而风自息。' },
      { category: '问出行', content: '远游吉，传教更好。' },
      { category: '问讼事', content: '得平匀断结。' },
      { category: '问六甲', content: '生男。' },
      { category: '问天时', content: '有风即晴。' },
      { category: '问失物', content: '初在地上，被风吹远，宜遍寻之，可得。' }
    ]
  },
  {
    hexagramId: 20,
    position: 1,
    judgments: [
      { category: '占问时运', content: '初运未佳，幸无大碍。' },
      { category: '问商业', content: '初立场面，只宜就小，无咎。' },
      { category: '问家宅', content: '防有童仆偷窃之患。' },
      { category: '问战征', content: '防有小胜大败。' },
      { category: '问疾病', content: '小人无碍，大人不利。' },
      { category: '问行人', content: '宜就近，无咎。' },
      { category: '问六甲', content: '生女。' },
      { category: '问婚嫁', content: '自幼结亲，吉。' },
      { category: '问失物', content: '防为小儿抛弃。' }
    ]
  },
  {
    hexagramId: 20,
    position: 2,
    judgments: [
      { category: '占问时运', content: '目下运不佳，只宜株守，若妇女占之，大利。' },
      { category: '问商业', content: '蚕丝业大利，余不佳。' },
      { category: '问家宅', content: '必是妇女主家，利。' },
      { category: '问疾病', content: '是阴寒之症，无害。' },
      { category: '问出行', content: '须携眷同往，若行人，必携眷偕归。' },
      { category: '问六甲', content: '生女。' },
      { category: '问失物', content: '恐在门隙之间，窥探得之。' }
    ]
  },
  {
    hexagramId: 20,
    position: 3,
    judgments: [
      { category: '占问时运', content: '目下运却平平，能度德量力，不自妄动，虽无所得，亦无失也。' },
      { category: '问商业', content: '谨慎把握，随买随卖，听时计价，决无失也。' },
      { category: '问家宅', content: '宜旧宅，不宜转移。' },
      { category: '问战征', content: '宜审察军情，随机应变，决不致败。' },
      { category: '问行人', content: '归心犹豫未决。' },
      { category: '问六甲', content: '生女。' },
      { category: '问疾病', content: '宜息心自养，可保无虞。' },
      { category: '问失物', content: '即得。' }
    ]
  },
  {
    hexagramId: 20,
    position: 4,
    judgments: [
      { category: '占问时运', content: '目下当盛运，求利可，求名尤佳。' },
      { category: '问商业', content: '宜贩运出洋，不特获利，且可得名。' },
      { category: '问家宅', content: '主有喜事临门，光增闾里。' },
      { category: '问战征', content: '必得大捷，论功邀赏，垂名竹帛。' },
      { category: '问疾病', content: '不利。' },
      { category: '问行人', content: '不归。' },
      { category: '问六甲', content: '生男，且主贵。' },
      { category: '问讼事', content: '得直。' }
    ]
  },
  {
    hexagramId: 20,
    position: 5,
    judgments: [
      { category: '占问时运', content: '目下运得其正，直道而行，无往不利。' },
      { category: '问商业', content: '当由我把定主意，买卖贩运，无不利。' },
      { category: '问家宅', content: '此宅必由我建造，君子居之，大利。' },
      { category: '问战征', content: '当审察己营，所谓知己，乃能知彼也。可获大胜。' },
      { category: '问疾病', content: '有命在天，无咎。' },
      { category: '问行人', content: '即返。' },
      { category: '问失物', content: '仍在身边，未失也。' },
      { category: '问六甲', content: '生贵子。' }
    ]
  },
  {
    hexagramId: 20,
    position: 6,
    judgments: [
      { category: '占问时运', content: '盛运已过，反躬自省，亦无失也。' },
      { category: '问商业', content: '此种货物，已将告罄，由我得价，自然获利。' },
      { category: '问家宅', content: '是老宅基，生息繁盛，有利无咎。' },
      { category: '问战征', content: '军事将终，即可旋凯。' },
      { category: '问疾病', content: '命运不久。' },
      { category: '问讼事', content: '即结。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 23,
    position: 0,
    judgments: [
      { category: '占问时运', content: '运不甚佳，宜安定自守，无咎。' },
      { category: '问商业', content: '须厚其资本，聚积货物，附运出洋，必获利也。商以剥人之财为利，故吉。' },
      { category: '问家宅', content: '寄居之宅，可出资买归，自己之宅反不利。' },
      { category: '问战征', content: '防敌袭击，宜厚其兵力。' },
      { category: '问疾病', content: '魂不附体，恐不吉。' },
      { category: '问行人', content: '附伴而行，即可归宅。' },
      { category: '问六甲', content: '生女，始危后安。' },
      { category: '问失物', content: '得则得矣，恐有残缺。' }
    ]
  },
  {
    hexagramId: 23,
    position: 1,
    judgments: [
      { category: '占问时运', content: '目下运当剥削，防有足疾。' },
      { category: '问商业', content: '堆积货件，防底部朽烂，或载运出洋，船底受水，被坏。' },
      { category: '问家宅', content: '防柱础门限，有损将倾。' },
      { category: '问战征', content: '防敌攻地道。' },
      { category: '问行人', content: '有足疾，不能归也。' },
      { category: '问疾病', content: '是足少阴之症，正不胜邪，凶。' }
    ]
  },
  {
    hexagramId: 23,
    position: 2,
    judgments: [
      { category: '占问时运', content: '自去年来，逐渐低下，被人剥削，不能辨白。凶。' },
      { category: '问商业', content: '置办货物，价渐剥落，不能获利也。凶。' },
      { category: '问家宅', content: '"辨"，亦通变。言家宅速宜变迁，方得避凶。' },
      { category: '问行人', content: '办装即归。' },
      { category: '问战征', content: '未有应接之军，不可动也，动则凶。' },
      { category: '问疾病', content: '病人已著床，未有良医，防不治也。凶。' },
      { category: '问六甲', content: '生女难育。' },
      { category: '问失物', content: '未能复有。' }
    ]
  },
  {
    hexagramId: 23,
    position: 3,
    judgments: [
      { category: '占问时运', content: '运虽不正，能反其所为，可以免咎。' },
      { category: '问商业', content: '同帮皆望高价，己独潜行脱售，虽失同帮之意，而独得利。' },
      { category: '问家宅', content: '去其椽瓦，平其基地，剥落改造，无咎。' },
      { category: '问战征', content: '是军中最有计谋者也。虽不与诸军约会，独自进攻，可得胜也。无咎。' },
      { category: '问疾病', content: '宜消导攻伐之剂，服之得愈。' }
    ]
  },
  {
    hexagramId: 23,
    position: 4,
    judgments: [
      { category: '占问时运', content: '运大不佳，有身体受伤之惧。' },
      { category: '问商业', content: '恐剥耗过甚，又防意外之祸。' },
      { category: '问家宅', content: '此宅必破败不堪，居人亦寥落，致防倾塌。' },
      { category: '问战征', content: '恐主将有灾。' },
      { category: '问疾病', content: '凶。' },
      { category: '问六甲', content: '生女，产妇亦可危。' }
    ]
  },
  {
    hexagramId: 23,
    position: 5,
    judgments: [
      { category: '占问时运', content: '目下气运堂皇，事事圆到，百无不利。' },
      { category: '问商业', content: '可得满贯满万之利，北海海产生业尤佳。' },
      { category: '问家宅', content: '有妇女主家之象。' },
      { category: '问战征', content: '须行离间敌军之计，可获胜也。' },
      { category: '问疾病', content: '是阴亏之症，须自珍爱，尚可无忧。' },
      { category: '问行人', content: '有外宠，必将携伴而归。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 23,
    position: 6,
    judgments: [
      { category: '占问时运', content: '目下气运衰微，一年后即值好运。' },
      { category: '问商业', content: '卖出者尚得微利，买入者必多剥耗。' },
      { category: '问家宅', content: '忠厚之家，尚有余泽，刻薄起家者，恐有墙屋倾圮之患。' },
      { category: '问战征', content: '守者无咎，攻者必败。' },
      { category: '问疾病', content: '有饮食不进之虑。' },
      { category: '问六甲', content: '生男，是独子也。' }
    ]
  },
  {
    hexagramId: 24,
    position: 0,
    judgments: [
      { category: '占问时运', content: '好运初来，尚未发动，静以待之，自然获吉。' },
      { category: '问商业', content: '货物完备，时价亦动，宜暂停售，必得利也。' },
      { category: '问家宅', content: '此宅现时闲歇，须待春时，方可迁居。吉。' },
      { category: '问战征', content: '防敌军埋伏地雷，须暂停战，以养兵力。吉。' },
      { category: '问疾病', content: '是痰火之症，饮食不进，交冬令宜防。' },
      { category: '问讼事', content: '一时不能审结。' },
      { category: '问六甲', content: '生男，交春分产。' },
      { category: '问婚嫁', content: '现因媒人尚未往说，春初可成。吉。' },
      { category: '问行人', content: '冬季不归，开春归来。' },
      { category: '问失物', content: '一时难觅，日后可得。' }
    ]
  },
  {
    hexagramId: 24,
    position: 1,
    judgments: [
      { category: '占问时运', content: '好运即来，渐渐发动，一往顺利，大吉。' },
      { category: '问商业', content: '前所耗失，即可复得，可免悔恨，大吉。' },
      { category: '问家宅', content: '旧业复兴，即在目前，大吉。' },
      { category: '问战征', content: '即日可转败为成，大吉。' },
      { category: '问讼事', content: '始审不直，再控必胜，大吉。' },
      { category: '问婚嫁', content: '主散而复成，大吉。' },
      { category: '问行人', content: '不日即归，吉。' },
      { category: '问疾病', content: '静养即可复，元吉。' },
      { category: '问六甲', content: '即日生男。' },
      { category: '问失物', content: '即日可得。' }
    ]
  },
  {
    hexagramId: 24,
    position: 2,
    judgments: [
      { category: '占问时运', content: '目下气运亦好，事事能择善而从，故事事得吉。' },
      { category: '问商业', content: '能与人共利，其业必兴，吉。' },
      { category: '问家宅', content: '家庭多休祥之征，自能复兴旧业。吉。' },
      { category: '问战征', content: '一时暂休攻克，姑示其弱，以养锐气。吉。' },
      { category: '问疾病', content: '宜初治之医，复诊视之。吉。' },
      { category: '问行人', content: '必从长辈而归。' },
      { category: '问六甲', content: '生女。' },
      { category: '问失物', content: '就低下处寻之。' }
    ]
  },
  {
    hexagramId: 24,
    position: 3,
    judgments: [
      { category: '占问时运', content: '一好一歹，时有得失，能据其得而不失，是在人也。' },
      { category: '问商业', content: '有亏有盈，能使盈多亏少，亏而复盈，亦可获利。' },
      { category: '问家宅', content: '有迁移不定之象。' },
      { category: '问疾病', content: '屡治屡发，虽危，可保无害。' },
      { category: '问讼事', content: '有频翻口供，转致危厉之象。' },
      { category: '问行人', content: '归志未决。' },
      { category: '问六甲', content: '生男，颇涉难产，无害。' },
      { category: '问失物', content: '失非一次，当可寻得。' }
    ]
  },
  {
    hexagramId: 24,
    position: 4,
    judgments: [
      { category: '占问时运', content: '气运柔弱，意欲振兴，惜力不能逮。' },
      { category: '问商业', content: '谋划精当，不失其正，资本未充，为可惜也。' },
      { category: '问家宅', content: '女眷多，男丁少，未免有独寐寤歌之慨。' },
      { category: '问战征', content: '防中道设伏。' },
      { category: '问疾病', content: '虚弱之症，宜从初治之医调治。' },
      { category: '问行人', content: '至中路复回，得伴再归。' },
      { category: '问婚嫁', content: '宜从前媒。' },
      { category: '问失物', content: '半途觅之。' }
    ]
  },
  {
    hexagramId: 24,
    position: 5,
    judgments: [
      { category: '占问时运', content: '目下气运当正，事事从厚，有前功，无后悔。' },
      { category: '问商业', content: '资财充足，往复获利。' },
      { category: '问家宅', content: '祖基深厚，旧业复光，吉。' },
      { category: '问战征', content: '军力厚实，可以攻复城池也。' },
      { category: '问疾病', content: '病者精神充足，气体丰腴，无患也。' },
      { category: '问六甲', content: '生男。' },
      { category: '问失物', content: '宜自忖度。' }
    ]
  },
  {
    hexagramId: 24,
    position: 6,
    judgments: [
      { category: '占问时运', content: '气运颠倒，作事乖张，谨慎免祸。' },
      { category: '问商业', content: '货物不齐，期约不准，市价不的，必致大耗；时不能复业，凶。' },
      { category: '问家宅', content: '防有怪祟，居者多不利。' },
      { category: '问战征', content: '辙乱旗靡，大败之象。' },
      { category: '问疾病', content: '症已危险，久病延年，犹为幸也。' },
      { category: '问行人', content: '在外多凶，十年内恐不能归也。' },
      { category: '问六甲', content: '生女。此女长成，亦大败之命。' }
    ]
  },
  {
    hexagramId: 21,
    position: 0,
    judgments: [
      { category: '占问时运', content: '目下正当好运发动，有威仪，有光耀，声名远播上达之象，吉。' },
      { category: '问商业', content: '买者卖者，一时会集，有货物旺销之象，吉。' },
      { category: '问家宅', content: '天盘地盘皆动，防有火灾，须小心谨慎，可以免祸。' },
      { category: '问疾病', content: '是郁热之症，导直透发，或热极作狂，须慎。' },
      { category: '问讼事', content: '判决明允。' },
      { category: '问天时', content: '有雷雨骤降之象，雨后即霁。' },
      { category: '问婚嫁', content: '阴阳一气，定必百年好合，吉。' },
      { category: '问行人', content: '即归。' },
      { category: '问失物', content: '恐被人吞没。' }
    ]
  },
  {
    hexagramId: 21,
    position: 1,
    judgments: [
      { category: '占问时运', content: '目下防有小灾，幸无大患，宜慎。' },
      { category: '问商业', content: '木材交易，最为不利，余商亦宜谨慎。' },
      { category: '问家宅', content: '有兴工改造之意，无咎。' },
      { category: '问疾病', content: '或足患疮疡，或患脚气，症是初发，医治自易。' },
      { category: '问战征', content: '防有埋伏，宜慎。' },
      { category: '问婚嫁', content: '不利。' },
      { category: '问行人', content: '未归。' },
      { category: '问六甲', content: '生男，恐小儿有脚疾。' }
    ]
  },
  {
    hexagramId: 21,
    position: 2,
    judgments: [
      { category: '占问时运', content: '目下平平，因才力浅肤，宜乘大力者行事。' },
      { category: '问商业', content: '现时货物，有肤寸而合之象，不妨深藏待价，乘时出售。吉。' },
      { category: '问战征', content: '肤大也，鼻始也，从今伊始，可奏肤功，吉。' },
      { category: '问家宅', content: '鼻为祖，灭鼻即灭祖，老宅不利。' },
      { category: '问疾病', content: '现下邪在肌肤，恐致深入为患。' },
      { category: '问行人', content: '偕伴而归。' },
      { category: '问婚嫁', content: '定是兴旺之家，可成。' }
    ]
  },
  {
    hexagramId: 21,
    position: 3,
    judgments: [
      { category: '占问时运', content: '目下气运不正，于得意事中，每多失意，或待人而反受人怨，幸无大害。' },
      { category: '问商业', content: '明明可获利之业，或反有小损，多以处置不得其当。' },
      { category: '问战征', content: '屯营不得其地，防有小败，宜谨守。' },
      { category: '问家宅', content: '宅神不安，恐有小灾，宜祷。' },
      { category: '问疾病', content: '药不对病，幸小病无碍。' },
      { category: '问行人', content: '因事不归。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 21,
    position: 4,
    judgments: [
      { category: '占问时运', content: '目下改旧从新，正当盛运，万事皆吉。' },
      { category: '问商业', content: '譬如食肉得金，有利过于本之象，大吉。' },
      { category: '问家宅', content: '家业素封，安不忘危，常不忘变，是保家之道，吉。' },
      { category: '问战征', content: '能获敌粮饷，获敌弓矢，无坚不摧，所向皆利。但胜时，更宜谨慎为吉。' },
      { category: '问婚嫁', content: '以勤俭之家，吉。' },
      { category: '问疾病', content: '此症非易治，须谨慎调养，吉。' },
      { category: '问六甲', content: '生男。' },
      { category: '问行人', content: '在外得利，尚未归也。' }
    ]
  },
  {
    hexagramId: 21,
    position: 5,
    judgments: [
      { category: '占问时运', content: '运正得时，所求所谋，无不如意，吉。' },
      { category: '问商业', content: '所贩运货物，皆是上品，干净完美，大得利益。不特一时，此业可保长久。吉。' },
      { category: '问家宅', content: '方位得当，大利。' },
      { category: '问战征', content: '主敌城柔弱易攻，吉。' },
      { category: '问疾病', content: '肉食宜忌，久亦可危，须谨慎调摄。' },
      { category: '问行人', content: '正获利归来。' },
      { category: '问六甲', content: '生男。' },
      { category: '问失物', content: '即得。' }
    ]
  },
  {
    hexagramId: 21,
    position: 6,
    judgments: [
      { category: '占问时运', content: '目下大运已终，能以柔和处世，可保无虑，若任用强，难免凶也。' },
      { category: '问商业', content: '得利即止，不可过贪，斯无大损。' },
      { category: '问家宅', content: '防有意外之灾凶。' },
      { category: '问战征', content: '切勿前进，前进必凶。' },
      { category: '问疾病', content: '或耳鸣耳聋，或项上生毒，凶。' },
      { category: '问六甲', content: '生男，防有大项聋耳之疾。' }
    ]
  },
  {
    hexagramId: 22,
    position: 0,
    judgments: [
      { category: '占问时运', content: '目下正当发动，百事顺适，但上有阻止，未能遂意径行。' },
      { category: '问商业', content: '主经理人才干强明，足以任事；但精明者必刻利，还宜留意。' },
      { category: '问家宅', content: '恐宅中时有火光发动，幸即扑灭，无大害也。' },
      { category: '问战征', content: '前面有山，未易进攻。' },
      { category: '问疾病', content: '是郁火上蒸之症，宜息火，犹不可过用寒剂，致真火扑灭。' },
      { category: '问行人', content: '欲归又止，尚未定也。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 22,
    position: 1,
    judgments: [
      { category: '占问时运', content: '生性清高，不合时趋，以德亨，不以名亨。' },
      { category: '问商业', content: '必是肩负买卖，非舟车贩运之业，虽小亦亨。' },
      { category: '问家宅', content: '是勤俭起家，颇有知足不辱之风。' },
      { category: '问战征', content: '陆军利。' },
      { category: '问行人', content: '中途遇阻，步行而归。' },
      { category: '问疾病', content: '症在初起，不食药而可愈也。' },
      { category: '问讼事', content: '恐有惩役之灾。' },
      { category: '问失物', content: '已舍弃去之，寻觅徒劳。' }
    ]
  },
  {
    hexagramId: 22,
    position: 2,
    judgments: [
      { category: '占问时运', content: '目下平平，只可依人成事。' },
      { category: '问商业', content: '与富商合业，必大兴旺，吉。' },
      { category: '问战征', content: '必须与大军同进，方可得胜。' },
      { category: '问家宅', content: '叨上人之福泽，藉以光大门楣。' },
      { category: '问婚嫁', content: '归妹以须，尚宜待也。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 22,
    position: 3,
    judgments: [
      { category: '占问时运', content: '当此盛运，光华润泽，名利双收，大亨。' },
      { category: '问商业', content: '财源如水，大得清润，基业亦可保长久，大吉。' },
      { category: '问家宅', content: '屋宇华洁，又得流水掩映，可以久居，吉。' },
      { category: '问战征', content: '一军皆感被德泽，欢洽同心，可称王师无敌。' },
      { category: '问讼事', content: '得直，彼亦不敢复犯。' },
      { category: '问婚嫁', content: '百年偕老，吉。' },
      { category: '问六甲', content: '生男。' },
      { category: '问行人', content: '衣锦荣耀而归。' },
      { category: '问失物', content: '向水中寻之，得。' }
    ]
  },
  {
    hexagramId: 22,
    position: 4,
    judgments: [
      { category: '占问时运', content: '目下运有阻碍，安分则吉，明年便可亨通。' },
      { category: '问商业', content: '宜迅疾贩售，迟缓，防货物变色。' },
      { category: '问家宅', content: '一宅之内，既有丧事，又逢婚事，前塞后通，无咎。' },
      { category: '问战征', content: '有和亲通好之议。' },
      { category: '问疾病', content: '中胸有阻，故上下不调，积阻消化，便无咎也。' },
      { category: '问行人', content: '有爱女眷恋，一时未归。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 22,
    position: 5,
    judgments: [
      { category: '占问时运', content: '目下恰行正运，然作事一宜俭勤为吉。' },
      { category: '问商业', content: '买卖最宜木材绸物二行，货物不必多，而获利颇佳。' },
      { category: '问家宅', content: '农桑为业，勤俭家风，吉。' },
      { category: '问战征', content: '宜招用野老，以作向导，可以得胜。' },
      { category: '问婚嫁', content: '聘礼虽微，却好得一贤妇，大喜。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 22,
    position: 6,
    judgments: [
      { category: '占问时运', content: '好运已终，劳者宜归于逸，动者宜返于静，优游自适，聊以取乐耳。' },
      { category: '问商业', content: '现在货价已高，时令将完，不必装饰，即可出售，定得利也。' },
      { category: '问家宅', content: '清白家风，位置亦高，吉。' },
      { category: '问战征', content: '身当上将，堂堂之阵，正正之旗，不用诡计奇谋，自然获胜。吉。' },
      { category: '问疾病', content: '病在上焦，宜用清淡之剂，吉。' },
      { category: '问行人', content: '得利归来。' },
      { category: '问六甲', content: '生男。' },
      { category: '问失物', content: '向高处寻觅，可得。' }
    ]
  },
  {
    hexagramId: 25,
    position: 0,
    judgments: [
      { category: '占问时运', content: '目下运得其时，百事咸宜，吉。' },
      { category: '问商业', content: '正如大旱望雨，响雷一声，人人翘望。货物一到，无不旺销，百般获利，大吉。' },
      { category: '问家宅', content: '此宅中时有作响，但无忌碍，屋运甚旺，人口繁盛，吉。' },
      { category: '问战征', content: '有风雷席卷之势，务须正正之旗，堂堂之阵，若欲以诈取胜，反恐有祸。' },
      { category: '问疾病', content: '是胸有积物，动而未化，宜随时运动，物自消化，"勿药有喜"。' },
      { category: '问行人', content: '现时已动身，即日可归。' },
      { category: '问婚嫁', content: '两家素有往来，门楣相对，大吉。' },
      { category: '问六甲', content: '生男，临时安产，吉。' },
      { category: '问失物', content: '或鼓旁，或磨下，或并臼之侧，寻之可得。' },
      { category: '问天时', content: '一雨即晴。' }
    ]
  },
  {
    hexagramId: 25,
    position: 1,
    judgments: [
      { category: '占问时运', content: '目下吉，但宜出而有为，不宜杜守家居。' },
      { category: '问商业', content: '利行商，不利坐贾。' },
      { category: '问家宅', content: '宜迁居，吉。' },
      { category: '问战征', content: '宜进攻，吉。' },
      { category: '问疾病', content: '宜出外就医，吉。' },
      { category: '问行人', content: '或有事他往，吉。' },
      { category: '问六甲', content: '生男，来月可产，吉。' },
      { category: '问婚姻', content: '赘婿吉。' },
      { category: '问失物', content: '宜往外寻之。' }
    ]
  },
  {
    hexagramId: 25,
    position: 2,
    judgments: [
      { category: '占问时运', content: '目下运得其正，自有意外财饷，大利。' },
      { category: '问商业', content: '不谋而获，却得大利，吉。' },
      { category: '问家宅', content: '此宅想是承继之产，或为人经管庄舍。' },
      { category: '问战征', content: '前途倒戈，有不胜而胜之象。' },
      { category: '问疾病', content: '"勿药有喜"。' },
      { category: '问婚姻', content: '是招赘之亲。' },
      { category: '问行人', content: '在外得利，一时未归。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 25,
    position: 3,
    judgments: [
      { category: '占问时运', content: '目下运值尴尬，防有意外之事，宜谨慎。' },
      { category: '问商业', content: '防他人占利，而己耗财。' },
      { category: '问家宅', content: '此宅恐为外人侵占。' },
      { category: '问战征', content: '行军得胜，守军防有损败。' },
      { category: '问疾病', content: '此病恐是外来人传染，可虑。' },
      { category: '问行人', content: '归则归矣，恐家人有灾。' },
      { category: '问婚嫁', content: '宜与远人结亲，吉。' },
      { category: '问失物', content: '已被行人拾去。' }
    ]
  },
  {
    hexagramId: 25,
    position: 4,
    judgments: [
      { category: '占问时运', content: '目下气运平顺，循分则有获，妄动则有咎。' },
      { category: '问商业', content: '坚守旧业，自然亨通。' },
      { category: '问家宅', content: '此宅本是祖基，宜永保之，毋坠。' },
      { category: '问战征', content: '已占入外卦之地，宜坚守城池，切勿妄进。' },
      { category: '问疾病', content: '此时宜安静调养，来月"勿药"而愈。' },
      { category: '问行人', content: '一时未归，在外无咎。' },
      { category: '问六甲', content: '生男。' },
      { category: '问失物', content: '必可复得。' }
    ]
  },
  {
    hexagramId: 25,
    position: 5,
    judgments: [
      { category: '占问时运', content: '目下气运当正，意外之事，不必介意，全乎在我而已。' },
      { category: '问商业', content: '凡一时物价，无故上落，皆无害商业，过时自平，切勿扰动。' },
      { category: '问家宅', content: '防有风扫雪压倾圮之患，然无大害，致有喜兆。' },
      { category: '问战征', content: '防军队中有时疫流行之患，宜洁净营屯，勿妄用药。无咎。' },
      { category: '问行人', content: '恐中途有涉意外之事，然即归来。' },
      { category: '问讼事', content: '有意外牵涉，不辩自释。' },
      { category: '问六甲', content: '生男。' },
      { category: '问失物', content: '不寻自得。' }
    ]
  },
  {
    hexagramId: 25,
    position: 6,
    judgments: [
      { category: '占问时运', content: '好运已终，宜安守勿动，动则终凶。' },
      { category: '问商业', content: '历来贸易，颇称得利，兹值岁终，或当时令交换之际，宜暂静守，切勿再进，防有损耗。' },
      { category: '问家宅', content: '此虽旧宅，居之则吉，慎勿他迁，迁则有眚。' },
      { category: '问战征', content: '地步已极，不可复进，进则有害。' },
      { category: '问疾病', content: '必是老年，宜颐养自适。' },
      { category: '问行人', content: '即日可归，归后切勿出行。' },
      { category: '问六甲', content: '生男。' },
      { category: '问失物', content: '恐穷追不得。' }
    ]
  },
  {
    hexagramId: 26,
    position: 0,
    judgments: [
      { category: '占问战征', content: '宜养精蓄锐，乘时而动，自然战无不克，攻无不利，定获大胜。' },
      { category: '占问时运', content: '目下心意纵奢，未可动也，必待二年后，运来福至，如骏马腾空，往无不利。' },
      { category: '问营商', content: '暂宜株守，近则三月，远则三年，自得逐渐推广，日积月新，利源不竭，大有庆也。' },
      { category: '问家宅', content: '宅居宜近山，或在岭上，或在谷中，必是素封之家。近来声名显达，家业日隆，大吉之兆。' },
      { category: '问功名', content: '少年意气轩昂，未免稍有阻抑，至三十岁后，一举成名，云霄直上，为国为家，经纶焕著，诚大用之材也。' },
      { category: '问六甲', content: '生男，且主贵。' },
      { category: '问讼事', content: '始被屈抑，后得申理。' },
      { category: '问疾病', content: '占得初爻至五爻，皆吉，上爻则恐寿源有阻。' },
      { category: '问婚姻', content: '大吉。' }
    ]
  },
  {
    hexagramId: 26,
    position: 1,
    judgments: [
      { category: '占问战征', content: '宜守不宜攻，斯无害也，必待四爻援兵得力，方可大进获胜。' },
      { category: '问营商', content: '目下资本犹浅，宜谨慎自守，免致灾害，后得帮手相助，自能获利。' },
      { category: '问家宅', content: '是新造之宅，为前面山势压制，屋宅不能过高，然无咎也。' },
      { category: '问功名', content: '才学虽高，而初次求名，不宜发泄太早，宜自抑止，所贵大器晚成也。' },
      { category: '问六甲', content: '可占一索生男。' },
      { category: '问讼事', content: '不宜健进，健进则有灾。' },
      { category: '问婚姻', content: '初阳为四爻所畜，是夫将受制于妻也；在夫能顺从其畜，亦无灾也。' },
      { category: '问出门', content: '现宜暂止，以待时运。' },
      { category: '问疾病', content: '现虽有病，可保无虞。' },
      { category: '问失物', content: '待后自可寻获。' }
    ]
  },
  {
    hexagramId: 26,
    position: 2,
    judgments: [
      { category: '占问战征', content: '若锐意径进，防有辙乱旗靡之祸，致一败而不可复收，惟以退为进，斯无尤矣。' },
      { category: '问营商', content: '凡有货物，宜早脱售，虽无大利，亦无耗失。' },
      { category: '问家宅', content: '必是破败旧家，惟其能退然自守，家业自有复兴之象，故无尤也。' },
      { category: '问功名', content: '宜待时，毋躁进也。' },
      { category: '问婚姻', content: '《小畜》三爻"舆说輹，夫妻反目"，是不吉也；此二爻得中，与五相应，五居尊位，必是贵婚，大吉。' },
      { category: '问疾病', content: '定是腹疾，一时难愈，然无害也。' },
      { category: '问六甲', content: '生男，防有足疾。' },
      { category: '问讼事', content: '败而复和。' }
    ]
  },
  {
    hexagramId: 26,
    position: 3,
    judgments: [
      { category: '占问战征', content: '有马到功成之象，然必先临事而惧，斯无往不利也。' },
      { category: '问营商', content: '三爻与应合志，是必卖买同心；曰"良马逐"，是必留适快捷；曰"利艰贞"，是虽遇险无虞也。大吉。' },
      { category: '问功名', content: '有云霄得路之象。' },
      { category: '问家宅', content: '必是勤俭起家，目下履当其位，家业日进，犹能安不忘危，故无往不利。' },
      { category: '问婚姻', content: '三以上九为应，上九处畜之极，是全盛之象，占婚姻而得此爻，男女合志，大吉之兆。' },
      { category: '问疾病', content: '宜谨慎调养，可保无虞。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 26,
    position: 4,
    judgments: [
      { category: '占问战征', content: '有强邻压制小国之象，幸四与上相应合志，得以保全。有喜。' },
      { category: '问营商', content: '爻曰"童牛"，谓初阳也，意以贸易新出，时货为利。"牿"，谓牢也，意以畜积固藏为利，故曰"元吉"。' },
      { category: '问功名', content: '六四辰在丑，上值斗，石氏曰"斗，将相爵禄之位"；又"丑，土也，其禽为牛"。孔子曰："犁牛之子，骍且角，虽欲勿用，山川其舍诸。"盖童牛者，祭天之牛也，其必进用也明矣，故《传》曰吉而有喜也。' },
      { category: '问家宅', content: '《乾》为门，《艮》为庭，为庐，为舍，皆有家宅之象。"童牛"者，谓初九也，牿之者四也。初九者，阳之初也，必是初造之宅，为四所牿；必门前途径有阻，不能进行。终必亨通，故曰"有喜"。' },
      { category: '问疾病', content: '曰"童牛"者，意必老牛舐犊，灾在幼子。' },
      { category: '问六甲', content: '生男。' },
      { category: '问婚嫁', content: '四在丑，丑上值牵牛；四应初九，初九辰在子，上值女。曰童牛，必是少年结婚，大吉。' },
      { category: '问讼事', content: '"童牛之牿"，《说文》云，"牿，牛马牢也"，恐有囚牢之灾。至上九曰天衢亨，当解脱而有喜也。' }
    ]
  },
  {
    hexagramId: 26,
    position: 5,
    judgments: [
      { category: '占问战征', content: '系属《坎》，又属亥，是必在坎险湿泽之处，最宜畜意禁止，以防敌军豕突。能谋而后动，自然获吉。' },
      { category: '问营商', content: '互，有互市之义，谓财物交互成市，正合近时通商之象。"豮豕"，谓小豕，譬如初次贸易，资本尚微，能受畜止，乃吉。' },
      { category: '问功名', content: '此必年少求名，未免躁进，宜知自止，故曰"豮豕之牙，吉"也。' },
      { category: '问家宅', content: '系属亥，水也，前必有二水，交互而流，是以吉也。' },
      { category: '问疾病', content: '六五辰在卯，东方为木，又系属亥，亥为水，是必木旺水亏之症，宜自《节》止调养，方能有庆也。' },
      { category: '问六甲', content: '生女。' },
      { category: '问婚嫁', content: '六五爻辰在卯，为兔，五应二，九二爻辰在寅，为虎，寅卯相合。爻曰"豮豕"，豕属亥，亥与寅卯，木水相生，皆得制伏，大吉。' }
    ]
  },
  {
    hexagramId: 26,
    position: 6,
    judgments: [
      { category: '占问战征', content: '上九爻辰在戌，上值奎、娄、胃，奎象白虎，主兵，娄星主兴兵聚众，胃星主征诛，皆军事也。爻曰"荷天之衢"，言旌旗载道，一战成功，故《象》曰"道大行也"。' },
      { category: '问营商', content: '上应三；三曰"利艰贞"，知当时贸易尚多艰苦。至上为畜之极，畜极则通，故曰"荷天之衢，亨"，即三所云"利有攸往"者是也。《象》曰"道大行"，是必大获其利。' },
      { category: '问功名', content: '爻曰"荷天之衢"，是即可谓青云得路之时也，大吉。' },
      { category: '问家宅', content: '爻曰"荷天之衢"，衢大道也，知此宅必在大道之旁。"荷天"者，得天之佑也。"亨"吉也，其宅必吉。' },
      { category: '问六甲', content: '生男。' },
      { category: '问婚嫁', content: '想是天作之合，吉。' }
    ]
  },
  {
    hexagramId: 27,
    position: 0,
    judgments: [
      { category: '占问战征', content: '上止下动，防队下有妄动招乱者，或机密漏泄，或酗酒启衅，最宜谨慎。' },
      { category: '问功名', content: '山下有雷，雷发声而山亦鸣，有声名腾达之象。' },
      { category: '问经商', content: '《颐》象内动外止，主货物内地升动，外地低落之象；又恐贩货出外，一时不能销售。其货物大约不离食品。' },
      { category: '问家宅', content: '《艮》山欲止，《震》雷欲动，山在上，雷在下，恐地盘震动，宜防火灾。' },
      { category: '问疾病', content: '上止下动，山属土，雷属火，主上焦寒闭，下焦热泻之象，必待五爻，《象》曰"顺以从上"，庶上下通顺乃吉。一爻一日，必至五日可愈。' },
      { category: '问行人', content: '内卦动而外卦止，必已动身，为外事阻止。上九日"利涉大川"，知必从水路而来。近则六七日可到，远则六七月方归。' },
      { category: '问六甲', content: '生男。' },
      { category: '问失物', content: '山下有雷，知其物为重物压止，一时不见，待后可得。' },
      { category: '问讼事', content: '主为言语饮食细故启衅；下欲动而上止之，必有上官出而阻止，不终讼也。' },
      { category: '问婚姻', content: '颐养也，妇主中馈，有养之义。外夫内妻，内动而外止，有妇从夫之象，吉。' }
    ]
  },
  {
    hexagramId: 27,
    position: 1,
    judgments: [
      { category: '占问战征', content: '古者行军必先占卜以定吉凶，爻辞曰"舍尔灵龟，观我朵颐"，是不畏神明，而徒贪财物，故曰"凶"也。' },
      { category: '问营商', content: '初爻为一阳之始，变而为《剥》，《剥》者解《剥》也，《象》曰"不利有攸往"，营商恐难获利。爻辞曰"尔""我"者，主宾也；"朵颐"者，口之动而食物也。舍"灵龟"而观"朵颐"，有利亦恐为他人食没也，故凶。' },
      { category: '问功名', content: '"灵龟"者内心也，"朵颐"者外貌也，舍内而求外，舍己而观人，徒慕虚声，必无实学，功名难成。' },
      { category: '问家宅', content: '宅中六神不安，恐有外鬼作祟，动来求食，凶。' },
      { category: '问疾病', content: '病由饮食不节所致，宜问神祈祷，可愈。' },
      { category: '问婚嫁', content: '尔我者，男女两姓也，"舍尔""观我"，显见两姓不谐，其故在争论礼物，必不成也，成亦必凶。' },
      { category: '问讼事', content: '必由口舌启衅。曰"舍我"，曰"观尔"，是两造各执一见，一时不能就理。凶。' }
    ]
  },
  {
    hexagramId: 27,
    position: 2,
    judgments: [
      { category: '占问战征', content: '行军之要，首在纪律严明，步伐整齐。爻曰"颠颐，拂经"，是必背违纪律，步伐错乱也。凶莫大矣。' },
      { category: '问营商', content: '二爻变《损》，《损》耗损也，于商不利。爻辞曰"颠"，曰"拂"，是明言买卖出入不合常理也，故曰"征凶"。' },
      { category: '问功名', content: '"颠颐，拂经"，是不循常道，侥幸求成，虽得终凶。' },
      { category: '问婚嫁', content: '六二阴柔居下，不奉上而反养下，是谓颠倒拂乱，不得其正，妇道不可问矣。故《象》曰"行失类也"，凶可知矣。' }
    ]
  },
  {
    hexagramId: 27,
    position: 3,
    judgments: [
      { category: '占问战征', content: '师以贞为吉，拂贞则不吉。颐养也，养兵以备用，养拂其道，则兵不可用。《象》曰"道大悖也"，是犯上好乱，其败亡必矣，故凶。' },
      { category: '问营商', content: '商业专在获利，曰"无攸利"，无论营业之大小，无论贩货之远近，皆无所得利也。极之"十年勿用"，是久而不成事也，故凶。' },
      { category: '问功名', content: '功名之道，要在出而用世，得以利济群民，是将以道养天下也。若拂夫《颐》之正，而极之"十年勿用"，则将终其身而不得见用也，故曰"无攸利"。' },
      { category: '问家宅', content: '是宅必久无人居住矣，且恐有鬼祟出而求食，家宅不安，住之不利。' },
      { category: '问婚姻', content: '主闺门不贞，其婚事亦必过十年可成。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 27,
    position: 4,
    judgments: [
      { category: '占问战征', content: '战士之勇者称虎臣，亦称虎贲，皆谓其有力也。然必须养其精锐而后用，非徒恃威猛而轻进也，故曰"颠颐，吉"。' },
      { category: '问营商', content: '"颠"，恐一时物价有倒跌之象。"虎视耽耽，其欲逐逐"，譬言商人谋利之状，能视其贱价而置货，故吉而无咎。' },
      { category: '问功名', content: '功名之兆，自古多取龙虎，是以吉也。"视耽耽"、"欲逐逐"，皆谋望腾达之意。' },
      { category: '问家宅', content: '此宅必右山白虎居高，有怒目欲噬之形，幸四爻以阴居阴，位得其正，可无咎也。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 27,
    position: 5,
    judgments: [
      { category: '占问战征', content: '行军之道，有经有权，谓能达权，似不必拘拘守经也，故"拂经"无咎。曰"居贞吉"，则宜固守，不宜进攻。"不可涉大川"，恐于川流之际有伏兵；舟楫前往，防有风波之厄，皆当谨慎。' },
      { category: '问营商', content: '利于坐贾，不利行商，贩货出洋，更为可虑。' },
      { category: '问功名', content: '出而应试，难望成名。' },
      { category: '问家宅', content: '上体属《艮》，山居则吉，若在临江近水，其宅不利。' },
      { category: '问婚嫁', content: '恐有不得媒聘之正者，若能从一而终，则亦吉也。' },
      { category: '问六甲', content: '生男。' },
      { category: '问疾病', content: '病在五爻，久则四五个月，近则五六天，由于调养失宜。能安居静养则吉，若冒风雨，涉远路，恐难治也。' }
    ]
  },
  {
    hexagramId: 27,
    position: 6,
    judgments: [
      { category: '占问战征', content: '谚云"养兵千日，用在一朝"，其得效力疆场者，皆由平日教养来也，故曰"由颐"。兵，危事也，不知几经危历，乃得此克捷之功，故曰"厉吉"。"利涉大川"者，必其军士同心同德，斯得涉险，临危而不避，如周师之会孟津，诸葛之渡泸水是也。' },
      { category: '问营商', content: '商业专在谋利，得利则足以养身养家。然商不能安居而得利也，必将涉历险途，或远贾重洋，方可获利，故曰"厉吉"。' },
      { category: '问功名', content: '功名一道，由小而大，由卑而尊，然必忧勤惕厉，乃得功成名遂也。《象》曰"大有庆也"，是即所谓得之有喜也。' },
      { category: '问疾病', content: '虽危得救，故曰"厉吉"。' },
      { category: '问六甲', content: '生男，故《象》曰"大有庆也"。' }
    ]
  },
  {
    hexagramId: 28,
    position: 0,
    judgments: [
      { category: '占问战征', content: '"灭"，灭绝也，大欲灭国，小欲灭身，其象凶矣。行军占此，恐有暴雨淹没之祸。' },
      { category: '问营商', content: '《象》曰"泽灭木"，有低价忽而高涨之势。' },
      { category: '问功名', content: '"独立不懼，遁世无闷"者，谓当退隐身处，未可求名也。' },
      { category: '问家宅', content: '《兑》泽在上，《巽》木在下，其象反复，位置不正，防有灭凶之祸。' },
      { category: '问疾病', content: '是肝火内郁之症，肾气冲上，医治非易。' },
      { category: '问婚嫁', content: '"泽灭木"，恐配偶之间，有老幼不匀。' },
      { category: '问六甲', content: '生女。' },
      { category: '问失物', content: '必坠入水沟之处。' }
    ]
  },
  {
    hexagramId: 28,
    position: 1,
    judgments: [
      { category: '占问战征', content: '当此初次出师，最忌刚暴过甚，宜宽柔待下。' },
      { category: '问营商', content: '贩运之货，必是药品，或是茶叶木棉，其色必白，其质必柔，均可获利。' },
      { category: '问功名', content: '拔茅连茹，是有连类同登之象。' },
      { category: '问家宅', content: '其宅必近卑湿低下之处，屋外蔓草荒芜，建筑也。' },
      { category: '问疾病', content: '病体柔弱，下焦有湿，须用温燥之药治之。' },
      { category: '问失物', content: '于草地上觅之。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 28,
    position: 2,
    judgments: [
      { category: '占问战征', content: '有转败为胜之象。' },
      { category: '问营商', content: '《兑》为阴，亦为金，《巽》为风，亦为木，定为金木生意。"枯杨生稊"，于种植林木，或贩运树木，皆"无不利"。' },
      { category: '问功名', content: '就爻象看来，必待晚年，方可成名。' },
      { category: '问家宅', content: '此宅昔年定多不利，系阳宅居于阴地；近来得阳九发动，必有枯树开花，此其兆也。利。' },
      { category: '问婚姻', content: '主有老鳏重娶，得以生育，大利。' },
      { category: '问疾病', content: '虽危得安。' },
      { category: '问失物', content: '必得。' }
    ]
  },
  {
    hexagramId: 28,
    position: 3,
    judgments: [
      { category: '占问战征', content: '"栋"者一屋之主，即一军之主帅也；"挠"者，摧折也，栋而挠，是主帅受伤之象。弊在主帅过于刚猛，不听人言所致，故凶。' },
      { category: '问营商', content: '商业必须得人为辅，方能成事，若自运自刃，非特经营不大，且恐致意外耗失。"栋挠"云者，有人财两失之虑，故凶。' },
      { category: '问功名', content: '能任大任者，称栋梁之材，云"挠"，则栋非其栋矣，虽成终败，凶。' },
      { category: '问家宅', content: '此宅不吉，栋折榱崩，不可居也，凶。' },
      { category: '问婚嫁', content: '九三以阳居阳，孤阳无助，婚姻不成，成亦不吉。' },
      { category: '问六甲', content: '生男，恐不能养。' }
    ]
  },
  {
    hexagramId: 28,
    position: 4,
    judgments: [
      { category: '占问战征', content: '行军屯营，宜占高阜要地，下有所藉，斯营基巩固，可进可退，自不为敌所挠也，故吉。' },
      { category: '问营商', content: '想必是材木生意，木料高大，足备巨室之用，若他项经营，恐未必佳。' },
      { category: '问功名', content: '爻曰"栋隆"，必是大才，可当大任，斯足副"栋隆"之兆，其他小试，非其所长，有不屑为也。' },
      { category: '问家宅', content: '此宅栋榱辉煌，门户宏阔，吉。' },
      { category: '问疾病', content: '想是中胸有痞块高起，然无害。' }
    ]
  },
  {
    hexagramId: 28,
    position: 5,
    judgments: [
      { category: '占问战征', content: '行军占此，必军中主将偏神，位置颠倒，任用不当。一时虽获胜仗，未能持久。' },
      { category: '问营商', content: '防经商者贪恋外遇，致摇丑声。' },
      { category: '问家宅', content: '防国房不正，墙侧有茨。' },
      { category: '问功名', content: '必主晚年获隽。' },
      { category: '问婚嫁', content: '必年齿不齐，匹偶不正。' },
      { category: '问六甲', content: '生女，不育。' }
    ]
  },
  {
    hexagramId: 28,
    position: 6,
    judgments: [
      { category: '占问战征', content: '恐有主将阵亡之惨。' },
      { category: '问功名', content: '有头悬梁、锥刺之苦志，宜其声名远达，有志竟成。' },
      { category: '问营商', content: '运货出洋，最宜谨慎。' },
      { category: '问疾病', content: '恐水气上冲，头面浮肿，凶。' },
      { category: '问家宅', content: '恐有大水泛涨，墙倾屋倒之患。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 29,
    position: 0,
    judgments: [
      { category: '占问战征', content: '有敌兵频番侵袭之势，宜时刻防备。' },
      { category: '问功名', content: '有逐步升腾之象。' },
      { category: '问营商', content: '财如流水，源源而来，可久可大，商运亨通。' },
      { category: '问家宅', content: '此宅外北首，必有坑陷，泉流不息。《坎》辰在子，上值虚危，危主盖屋，恐邻居有营造之象。' },
      { category: '问疾病', content: '防是水泻之症，历久未愈，宜祷，取"樽酒簋贰"之义。' },
      { category: '问婚嫁', content: '必是亲上加亲，有重复联亲之象。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 29,
    position: 1,
    judgments: [
      { category: '占问战征', content: '有设计埋伏，因之反坠敌计，凶道也。' },
      { category: '问功名', content: '有侥幸求名，反致遭辱，是无益而有损也。' },
      { category: '问营商', content: '因贩货失利，转运他处，货到，市面更小，不能脱售。' },
      { category: '问疾病', content: '求医疗疾，医失其道，其病益危。' },
      { category: '问婚姻', content: '恐堕骗局，必非明媒正娶也。' },
      { category: '问六甲', content: '防生产有难。' }
    ]
  },
  {
    hexagramId: 29,
    position: 2,
    judgments: [
      { category: '占问战征', content: '可暗通隧道，以袭敌营，虽未大捷，必有小胜。' },
      { category: '问营商', content: '小利可谋。' },
      { category: '问功名', content: '小试必利。' },
      { category: '问家宅', content: '宅外恐有河岸崩颓，宜加修治。' },
      { category: '问疾病', content: '必是疮疡等症，延医治之，当得小效，难期全愈。' },
      { category: '问六甲', content: '得男。' }
    ]
  },
  {
    hexagramId: 29,
    position: 3,
    judgments: [
      { category: '占问战征', content: '象为营垒四面，皆临坎险，进退两难，宜枕戈暂息，以待应援。' },
      { category: '问营商', content: '观爻象为海运生意；舟行且阻，宜入奥暂守。' },
      { category: '问功名', content: '观象，是值万般困厄，为饿肌劳肤之时也，目下无功，晚成有望。' },
      { category: '问家宅', content: '此宅水法错乱，杀气多凶，屋北有一《坎》宕，急宜填满。' },
      { category: '问婚嫁', content: '《坎》为男，是为男家求婚也，又曰"勿用"，必不成也。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 29,
    position: 4,
    judgments: [
      { category: '占问战征', content: '行军以粮饷为重，所谓足兵，首在足食。"纳约自牖"云者，靡非纳食之地，犹言潜地运饷，以防敌兵劫夺也。' },
      { category: '问营商', content: '《坎》为酒，想是造酒之业。' },
      { category: '问功名', content: '想是春风得意，燕乐嘉宾，可喜可贺。' },
      { category: '问疾病', content: '宜祷。' },
      { category: '问婚姻', content: '吉。' }
    ]
  },
  {
    hexagramId: 29,
    position: 5,
    judgments: [
      { category: '占问战征', content: '为将之道，最忌恃功而骄，以致众心不平，取败之道也，虽孙吴复起，不能为功。' },
      { category: '问营商', content: '不贪一时意外之利，必酌量物价之平，以计久远，是善贾者也。' },
      { category: '问功名', content: '名位不大。' },
      { category: '问时运', content: '谦受益，满招损，终身诵之可也。' },
      { category: '问家宅', content: '宅外有小地，水流清浅，又有一平坡，风景颇好，无咎。' },
      { category: '问婚姻', content: '两姓门户相当，吉。' }
    ]
  },
  {
    hexagramId: 29,
    position: 6,
    judgments: [
      { category: '占问战征', content: '有劳师远征，久役不归之虑。' },
      { category: '问营商', content: '想是采办蚕丝生意，三年之后，方可获利。' },
      { category: '问功名', content: '恐有意外之灾，不特功名不就，防有牢狱之罪，凶。' },
      { category: '问婚姻', content: '红丝系足，婚姻有前定也，但良缘未到，须待三年后可就。' },
      { category: '问六甲', content: '得子，须迟。' },
      { category: '问家宅', content: '此宅不知缘何荒废，墙围遍生藤蔓，宜加修葺。前住者不利，后住者吉。' }
    ]
  },
  {
    hexagramId: 30,
    position: 0,
    judgments: [
      { category: '占问战征', content: '克敌者宜用火攻，防敌者亦宜备火攻，"两作"者，恐前后一时俱焚。' },
      { category: '问营商', content: '想营业定是近火，或运办疏黄，或创设电火，或制造火柴等业，皆利。' },
      { category: '问功名', content: '《离》为目，可有榜眼之兆。' },
      { category: '问家宅', content: '此屋必系新造，前后开通，窗户生明，屋外四围空阔，是巨室贵人之宅也，吉。' },
      { category: '问婚姻', content: '此非原配，必是继妻；夫家定属贵室，非寻常百姓之偶也。' },
      { category: '问六甲', content: '生女。' },
      { category: '问疾病', content: '热势甚重，恐一两日内即防神魂离散。' }
    ]
  },
  {
    hexagramId: 30,
    position: 1,
    judgments: [
      { category: '占问战征', content: '初爻为始，是三军始行，旗鼓交错之时也。"敬"者，即所谓临事而惧之意。战，危事也，慎重持之，或可免咎也。或曰邪行谓错，宜从横路进兵。' },
      { category: '问商业', content: '必是新立之业。初九爻辰在子，北方属水，卦位居南属火，想是南北生意。一时难许大利，要可无咎。' },
      { category: '问功名', content: '《诗》云"他山之石，可以攻玉"，盖言得助而成也。' },
      { category: '问家宅', content: '《履》卦云，"履道坦坦，幽人贞吉"，是宅必在大道之旁。吉。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 30,
    position: 2,
    judgments: [
      { category: '占问战征', content: '《离》二变《大有》，《大有》，《象传》曰"大车以载，积中不败也"。"大车"，谓兵车；黄，中之色也；"积中"者，谓中营军粮充实；"不败"者，谓兵士勇健，得以获胜也。故吉。' },
      { category: '问营商', content: '《离》属南方之卦，经营利在南方；黄为土，土生木，又利在土木。' },
      { category: '问功名', content: '《离》位在午，上值文昌，有文明之象，功名必显。' },
      { category: '问家宅', content: '《离》为火，土色黄，火之子，喻言其家得有令子，能振起家声。吉。' },
      { category: '问婚姻', content: '二爻以阴居阴，位得中正，主夫妇顺从，佳偶也。吉。' },
      { category: '问疾病', content: '必是内火郁结中焦之症，宜凉解之。无咎。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 30,
    position: 3,
    judgments: [
      { category: '占问战征', content: '"日昃"，日将夕也。军中长歌浩叹，皆失纪律，不吉之兆，尤防敌兵夜袭。' },
      { category: '问营商', content: '《周礼》地官司市，"大市日昃而市"，谓大市交易繁多，至日昃始集市。爻曰"日昃之离"，是日昃后而散也。市区扰杂，或歌或嗟，哀乐无度，必伤正业，宜戒。' },
      { category: '问功名', content: '恐老大无成，徒自悲耳。' },
      { category: '问婚姻', content: '鼓缶而歌，难望偕老，凶。' },
      { category: '问六甲', content: '生女，难育。' }
    ]
  },
  {
    hexagramId: 30,
    position: 4,
    judgments: [
      { category: '占问战征', content: '有营垒被焚，枪炮暴烈之祸，来势汹涌，紧官慎防。' },
      { category: '问营商', content: '有人财两亡之祸，宜藏身退避，或可免也。' },
      { category: '问功名', content: '有唾手可得之势，但位名愈重，得祸尤烈，不如隐退。' },
      { category: '问家宅', content: '旧说以"突"为不孝子，此家必生逆子。"焚"、"死"、"弃"，皆言逆子之罪也。' },
      { category: '问婚姻', content: '四动体《艮》，《艮》为鬼冥门，又《离》互《兑》，《兑》为刑人，此婚大不吉利。' },
      { category: '问六甲', content: '生女，必不育。' }
    ]
  },
  {
    hexagramId: 30,
    position: 5,
    judgments: [
      { category: '占问战征', content: '据爻辞"沱若""嗟若"，有临事而惧之意。战危事也，能惧则能谋，能谋则可以制胜矣，故吉。' },
      { category: '问营商', content: '此经营必是王家商务公业，非下民私计也。故曰"离王公也"。其业亦必由辛苦艰难而成。' },
      { category: '问功名', content: '位至宰辅，极贵极显，然一身忧劳倍甚，如武侯之鞠躬尽瘁，乃吉。' },
      { category: '问婚姻', content: '此姻事极贵，然有先号咷而后笑之象。' },
      { category: '问六甲', content: '生女，防难产，终吉。' }
    ]
  },
  {
    hexagramId: 30,
    position: 6,
    judgments: [
      { category: '占问战征', content: '观爻辞已明示矣。王者之师，不妄杀人，斯道得焉矣。' },
      { category: '问营商', content: '贩售货物，宜选取上等佳品，不取低劣，乃可获利。' },
      { category: '问功名', content: '必膺首选，吉。' },
      { category: '问疾病', content: '"折"，夭折也，不利。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 31,
    position: 0,
    judgments: [
      { category: '占问战征', content: '军队前进，防有坑陷，山谷间防有埋伏，固守城池，防敌兵潜通地道，皆当谨慎。' },
      { category: '问营商', content: '山泽为生财之地，即财源也。"以虚受人"，是以购入物产，贩运转售，必大获利。' },
      { category: '问功名', content: '"山上"者高附之象，"山上有泽"，泽者，积水低洼之处。有居高思危之意，惟宜虚己待人，功名可长保也。' },
      { category: '问家宅', content: '是宅必傍山临水，知其所止，吉。' },
      { category: '问疾病', content: '是虚弱之症，宜服滋补之剂。' },
      { category: '问婚姻', content: '卦为山泽通气，主两姓和好，大吉。' },
      { category: '问讼事', content: '两造必是少年意气相争，讼宜和解而止为善。' },
      { category: '问六甲', content: '生男。' },
      { category: '问失物', content: '必坠入空洞有水之处，不能复得。' }
    ]
  },
  {
    hexagramId: 31,
    position: 1,
    judgments: [
      { category: '占问时运', content: '咸其拇，志在外也。' },
      { category: '问商业', content: '必是初次贸易，货物已办，尚未发行也。' },
      { category: '问功名', content: '必能一举成名，有捷足先登之兆。' },
      { category: '问家宅', content: '有迁居外地之意。' },
      { category: '问疾病', content: '是足指初起一毒，宜外用敷药调治。' },
      { category: '问婚嫁', content: '为结缡之始，吉。' },
      { category: '问六甲', content: '生男，是初胎也。' }
    ]
  },
  {
    hexagramId: 31,
    position: 2,
    judgments: [
      { category: '占问时运', content: '咸其腓，凶。居吉。' },
      { category: '问商业', content: '不利行商，利坐贾。' },
      { category: '问功名', content: '只可依人成事，未能远到。' },
      { category: '问疾病', content: '必是四肢痿痹之症，只可坐卧，不能步行也。' },
      { category: '问婚嫁', content: '婚事既成，恐有变动，能以顺自守，虽凶终吉。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 31,
    position: 3,
    judgments: [
      { category: '占问时运', content: '咸其股，执其随，往吝。' },
      { category: '问商业', content: '必难获利。' },
      { category: '问功名', content: '随声附名，其品下矣，必难制胜。' },
      { category: '问家宅', content: '宅近艮山，本可安处，占者不愿处此，殆欲随人他迁也，恐所往吝矣。' },
      { category: '问婚嫁', content: '咎在过听执柯者之言，恐所适非偶。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 31,
    position: 4,
    judgments: [
      { category: '占问时运', content: '贞吉，悔亡。憧憧往来，朋从尔思。' },
      { category: '问商业', content: '商务虽在谋利，亦以得贞为吉，若见利忘义，则群焉争夺，不夺不厌，害有不可胜言者矣。' },
      { category: '问功名', content: '功名显达，其象贞吉，然得不以正，害即随之，最宜谨慎。' },
      { category: '问家宅', content: '其宅必临通衢往来之地，邪正杂处，交际最宜慎择。' },
      { category: '问疾病', content: '必是心神恍惚之症，宜静养。' },
      { category: '问婚嫁', content: '防女家闺范不谨。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 31,
    position: 5,
    judgments: [
      { category: '占问时运', content: '咸其脢，无悔。' },
      { category: '问商业', content: '知其商业不大，利亦微薄。' },
      { category: '问功名', content: '背者，败北也，知所求未必成名。' },
      { category: '问疾病', content: '鲐背，寿征也，知病即愈，无悔，且获多寿。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 31,
    position: 6,
    judgments: [
      { category: '占问时运', content: '咸其辅、颊、舌，滕口说也。' },
      { category: '问商业', content: '恐有口舌之祸。' },
      { category: '问功名', content: '可献策陈言，当得召用。' },
      { category: '问家宅', content: '主人口不睦，口角起争。' },
      { category: '问疾病', content: '呓语谵言，心魂不安，宜祷。' },
      { category: '问婚嫁', content: '冰人之言，未可全信。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 32,
    position: 0,
    judgments: [
      { category: '占问战征', content: '雷出于地，风生于谷，防有敌兵埋伏，火炮攻击之虑。宜坚守营垒，不可退，后可以转败为功。' },
      { category: '问营商', content: '《震》属正东，《巽》属东南，曰"立不易方"，言贸易不可改易地方也。' },
      { category: '问功名', content: '《震》《巽》皆木，木植立不易，干霄直上，自得直达之象。但宜久成，不宜躁进。' },
      { category: '问家宅', content: '此宅坐西北，朝东南，为祖遗旧宅，是恒产，方向切不可移易。' },
      { category: '问婚姻', content: '男家长男，女家长女，二长相配，婚姻大利，可卜百年偕老。' },
      { category: '问疾病', content: '必是肝火上冲，痰火气喘，须服前方，不必改易。' },
      { category: '问六甲', content: '生男，必是初胎。' }
    ]
  },
  {
    hexagramId: 32,
    position: 1,
    judgments: [
      { category: '占问时运', content: '浚恒，贞凶，无攸利。' },
      { category: '问商业', content: '宜守旧，不宜新谋。' },
      { category: '问家宅', content: '宅运不佳，宜安居。' },
      { category: '问疾病', content: '症在深部，宜慎治。' },
      { category: '问婚嫁', content: '不宜急进。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 32,
    position: 2,
    judgments: [
      { category: '占问时运', content: '悔亡。' },
      { category: '问商业', content: '久于其道，自然精明练达，能振兴其业也。' },
      { category: '问家宅', content: '宅运平稳。' },
      { category: '问疾病', content: '可愈。' },
      { category: '问婚嫁', content: '可成。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 32,
    position: 3,
    judgments: [
      { category: '占问时运', content: '不恒其德，或承之羞，贞吝。' },
      { category: '问商业', content: '德行无常，难以持久。' },
      { category: '问家宅', content: '宅运多变。' },
      { category: '问疾病', content: '症有反复。' },
      { category: '问婚嫁', content: '不宜。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 32,
    position: 4,
    judgments: [
      { category: '占问时运', content: '田无禽。' },
      { category: '问商业', content: '劳而无功。' },
      { category: '问家宅', content: '宅运平平。' },
      { category: '问疾病', content: '宜调养。' },
      { category: '问婚嫁', content: '不成。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 32,
    position: 5,
    judgments: [
      { category: '占问时运', content: '恒其德，贞，妇人吉，夫子凶。' },
      { category: '问商业', content: '妇人经营吉，男子不利。' },
      { category: '问家宅', content: '妇人主家吉。' },
      { category: '问疾病', content: '可愈。' },
      { category: '问婚嫁', content: '妇人吉。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 32,
    position: 6,
    judgments: [
      { category: '占问时运', content: '振恒，凶。' },
      { category: '问商业', content: '变动无常，凶。' },
      { category: '问家宅', content: '宅运不安。' },
      { category: '问疾病', content: '症重，宜慎。' },
      { category: '问婚嫁', content: '不利。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 33,
    position: 0,
    judgments: [
      { category: '占问战征', content: '防前进有山，山间有敌兵埋伏，致遭败北。' },
      { category: '问营商', content: '恐一时物价涨落不同，相去甚远。' },
      { category: '问功名', content: '宜退隐，不宜进见。君子吉，小人否。' },
      { category: '问家宅', content: '此宅近山，前面空阔辽远，防有阴祟。' },
      { category: '问疾病', content: '病有鬼祟，宜敬而远之，以避居为吉。' },
      { category: '问婚姻', content: '二五阴阳，本属相应，但邪正不同，以谢绝为之吉。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 33,
    position: 1,
    judgments: [
      { category: '占问时运', content: '遁尾，厉，勿用有攸往。' },
      { category: '问商业', content: '宜止不宜行。' },
      { category: '问家宅', content: '宅运不佳，宜避。' },
      { category: '问疾病', content: '症在尾闾，宜慎。' },
      { category: '问婚嫁', content: '不宜。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 33,
    position: 2,
    judgments: [
      { category: '占问时运', content: '执之用黄牛之革，莫之胜说。' },
      { category: '问商业', content: '固守不变，难以脱手。' },
      { category: '问家宅', content: '宅运固守。' },
      { category: '问疾病', content: '症重，宜固本。' },
      { category: '问婚嫁', content: '有阻。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 33,
    position: 3,
    judgments: [
      { category: '占问时运', content: '系遁，有疾厉，畜臣妾吉。' },
      { category: '问商业', content: '有所牵系，难以脱身。' },
      { category: '问家宅', content: '宅运有阻。' },
      { category: '问疾病', content: '症有牵连，宜慎。' },
      { category: '问婚嫁', content: '畜臣妾吉。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 33,
    position: 4,
    judgments: [
      { category: '占问时运', content: '好遁，君子吉，小人否。' },
      { category: '问商业', content: '君子经营吉，小人不利。' },
      { category: '问家宅', content: '君子居之吉。' },
      { category: '问疾病', content: '可愈。' },
      { category: '问婚嫁', content: '君子吉。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 33,
    position: 5,
    judgments: [
      { category: '占问时运', content: '嘉遁，贞吉。' },
      { category: '问商业', content: '适时退让，吉。' },
      { category: '问家宅', content: '宅运亨通。' },
      { category: '问疾病', content: '可愈。' },
      { category: '问婚嫁', content: '良缘。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 33,
    position: 6,
    judgments: [
      { category: '占问时运', content: '肥遁，无不利。' },
      { category: '问商业', content: '退让有利。' },
      { category: '问家宅', content: '宅运大利。' },
      { category: '问疾病', content: '可愈。' },
      { category: '问婚嫁', content: '良缘。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 34,
    position: 0,
    judgments: [
      { category: '占问战征', content: '军势强盛，有疾雷不及掩耳之势；但兵骄必败，所当深戒。' },
      { category: '问营商', content: '雷在天上，是货价高标之象，得价而售，不可过。' },
      { category: '问功名', content: '雷声远震，必得成名。' },
      { category: '问家宅', content: '防有火灾，宜祷。' },
      { category: '问疾病', content: '《震》为雷，亦为足，防有足疾，不能行也。' },
      { category: '问婚姻', content: '《震》为《乾》之长子，《巽》为《坤》之长女，是天合也，吉。' },
      { category: '问失物', content: '雷一过而无形，恐此物不能复得。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 34,
    position: 1,
    judgments: [
      { category: '占问时运', content: '壮于趾，征凶，有孚。' },
      { category: '问商业', content: '躁进有凶。' },
      { category: '问家宅', content: '宅运不佳。' },
      { category: '问疾病', content: '足疾，宜慎。' },
      { category: '问婚嫁', content: '不宜。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 34,
    position: 2,
    judgments: [
      { category: '占问时运', content: '贞吉。' },
      { category: '问商业', content: '守正则吉。' },
      { category: '问家宅', content: '宅运平稳。' },
      { category: '问疾病', content: '可愈。' },
      { category: '问婚嫁', content: '可成。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 34,
    position: 3,
    judgments: [
      { category: '占问时运', content: '小人用壮，君子用罔，贞厉。羝羊触藩，羸其角。' },
      { category: '问商业', content: '刚愎自用，必有损失。' },
      { category: '问家宅', content: '宅运有阻。' },
      { category: '问疾病', content: '症重，宜慎。' },
      { category: '问婚嫁', content: '有阻。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 34,
    position: 4,
    judgments: [
      { category: '占问时运', content: '贞吉，悔亡。藩决不羸，壮于大舆之輹。' },
      { category: '问商业', content: '大吉，有利。' },
      { category: '问家宅', content: '宅运亨通。' },
      { category: '问疾病', content: '可愈。' },
      { category: '问婚嫁', content: '良缘。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 34,
    position: 5,
    judgments: [
      { category: '占问时运', content: '丧羊于易，无悔。' },
      { category: '问商业', content: '小失无碍，终吉。' },
      { category: '问家宅', content: '宅运平稳。' },
      { category: '问疾病', content: '可愈。' },
      { category: '问婚嫁', content: '可成。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 34,
    position: 6,
    judgments: [
      { category: '占问时运', content: '羝羊触藩，不能退，不能遂，无攸利，艰则吉。' },
      { category: '问商业', content: '进退两难，宜守。' },
      { category: '问家宅', content: '宅运有阻。' },
      { category: '问疾病', content: '症重，宜慎。' },
      { category: '问婚嫁', content: '有阻。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 35,
    position: 0,
    judgments: [
      { category: '占问时运', content: '正当好运新来，犹朝日初出，渐升渐高，明光普照也。吉。' },
      { category: '占问战征', content: '当大军初发，顺道而进，宜日战，不宜夜攻。' },
      { category: '问营商', content: '最利煤炭地火等生业，取其明也。吉。' },
      { category: '问功名', content: '有功名指日高升之象，吉。' },
      { category: '问讼事', content: '宜返而自讼。' },
      { category: '问家宅', content: '此宅朝东南，高敞明朗，得太阳吉曜照临，大吉。' },
      { category: '问六甲', content: '生女。' },
      { category: '问失物', content: '在明堂中寻之，得。' }
    ]
  },
  {
    hexagramId: 35,
    position: 1,
    judgments: [
      { category: '占问时运', content: '晋如摧如，贞吉。罔孚，裕无咎。' },
      { category: '问商业', content: '初有阻碍，终吉。' },
      { category: '问家宅', content: '宅运初阻后通。' },
      { category: '问疾病', content: '可愈。' },
      { category: '问婚嫁', content: '可成。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 35,
    position: 2,
    judgments: [
      { category: '占问时运', content: '晋如愁如，贞吉。受兹介福，于其王母。' },
      { category: '问商业', content: '有忧有福，终吉。' },
      { category: '问家宅', content: '宅运有福。' },
      { category: '问疾病', content: '可愈。' },
      { category: '问婚嫁', content: '良缘，有贵人助。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 35,
    position: 3,
    judgments: [
      { category: '占问时运', content: '众允，悔亡。' },
      { category: '问商业', content: '众信可成。' },
      { category: '问家宅', content: '宅运亨通。' },
      { category: '问疾病', content: '可愈。' },
      { category: '问婚嫁', content: '可成。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 35,
    position: 4,
    judgments: [
      { category: '占问时运', content: '晋如鼫鼠，贞厉。' },
      { category: '问商业', content: '贪多必失。' },
      { category: '问家宅', content: '宅运不佳。' },
      { category: '问疾病', content: '症重，宜慎。' },
      { category: '问婚嫁', content: '不宜。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 35,
    position: 5,
    judgments: [
      { category: '占问时运', content: '悔亡，失得勿恤，往吉无不利。' },
      { category: '问商业', content: '大吉，有利。' },
      { category: '问家宅', content: '家运大兴。' },
      { category: '问疾病', content: '可愈。' },
      { category: '问婚嫁', content: '良缘。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 35,
    position: 6,
    judgments: [
      { category: '占问时运', content: '晋其角，维用伐邑，厉吉无咎，贞吝。' },
      { category: '问商业', content: '有争竞，宜慎。' },
      { category: '问家宅', content: '宅运有变。' },
      { category: '问疾病', content: '症重，宜慎。' },
      { category: '问婚嫁', content: '有阻。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 36,
    position: 0,
    judgments: [
      { category: '占问时运', content: '运当大难，深宜晦藏。' },
      { category: '占问战征', content: '《象》曰"莅众"，适值用师之时，宜效明修栈道暗度陈仓之计，必得胜也。' },
      { category: '问营商', content: '卦象艰难，大众恐难取利，暗中尚有分肥。' },
      { category: '问功名', content: '《离》火被土所克，功名不显，显则反有灾害。' },
      { category: '问家宅', content: '家道不顺，或父子分居，尚可保全。' },
      { category: '问婚姻', content: '必非明媒正娶。' },
      { category: '问疾病', content: '是肝火内郁之症，治宜熄火。' },
      { category: '问讼事', content: '宜受曲罢讼，可以免祸。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 36,
    position: 1,
    judgments: [
      { category: '占问时运', content: '初运不佳，惟其善自保全，得以无害。' },
      { category: '问战征', content: '为营中粮食已尽，且宜暂退。' },
      { category: '问营商', content: '《明夷》者，恐资本有伤，运货远行，有中途受难之象，又恐主人啧有烦言也。' },
      { category: '问功名', content: '于飞垂翼，明示以不能腾达之象。' },
      { category: '问婚姻', content: '初爻与四相应，而反相害，婚姻不谐。' },
      { category: '问家宅', content: '此宅必是租典，非己屋也，故有主人；"三日不食"，有破灶不炊之象，不利，宜迁。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 36,
    position: 2,
    judgments: [
      { category: '占问时运', content: '目下运不甚佳，颇有伤残，幸得禄马相救，故吉。' },
      { category: '问战征', content: '左营之军不利，幸马队得力，得以转败为胜。' },
      { category: '问营商', content: '按策划不适时宜曰左计，知其营谋不合时，故有损失，幸得有马姓人出而调剂，则吉。' },
      { category: '问功名', content: '凡官级以降曰左，似不利也；惟值午年，或交午运，则吉。' },
      { category: '问疾病', content: '《离》二中虚，如陷进然，其人必陷入深坑；伤其左足，幸马力壮健，得一跃而出。' },
      { category: '问家宅', content: '必在左边柱足损伤，宜急修治。' },
      { category: '问婚姻', content: '《离》阴象，女子恐有足疾，不良于行，宜配午命人吉。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 36,
    position: 3,
    judgments: [
      { category: '占问时运', content: '大运不无破败，是宜退守；交冬令，从南出行，必得大利。' },
      { category: '问战征', content: '卦曰《明夷》，明日进兵，必有伤败，宜潜兵从南而入。《离》上爻曰，"王用出征，有嘉折首"，即合此占。' },
      { category: '问功名', content: '南方属文明，猎兽猎名，皆期其得。"大首"，魁首也，其必膺首选乎？故曰"志大得也"。吉。' },
      { category: '问婚姻', content: '婚礼莫雁射雀，亦取从禽之象，"得其大首"者，谓得其嘉偶。吉。' },
      { category: '问疾病', content: '当出避南方。吉。' },
      { category: '问失物', content: '可就宅南寻之，必得。' },
      { category: '问六甲', content: '生女。' },
      { category: '问家宅', content: '此宅《离》位南向，"大首"者，一乡之大富家也。吉。' }
    ]
  },
  {
    hexagramId: 36,
    position: 4,
    judgments: [
      { category: '占问时运', content: '爻象出明入暗，知为不利，不宜居家，还宜出门。' },
      { category: '问战征', content: '可潜入敌之左营，探听密计，出告大营，可胜也。' },
      { category: '问功名', content: '功名以高升为吉，"入于左腹"，《坤》为腹，是入于地也。不吉。' },
      { category: '问营商', content: '释名，"腹"，复也，富也。入于腹，即入于富也；获心，即称心也；"于出门庭"，是出家经商之象。' },
      { category: '问疾病', content: '是病在心腹，恐是内损之症，宜出门求医。' },
      { category: '问家宅', content: '此宅明堂左首，路有阻碍，出入不便。' },
      { category: '问婚姻', content: '女子腹已有孕，不利。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 36,
    position: 5,
    judgments: [
      { category: '占问时运', content: '目下正当困厄，不失其正，久后必亨。' },
      { category: '问战征', content: '主师不明，致有谋士逃亡之象。' },
      { category: '问营商', content: '必历经艰苦，方可获利。' },
      { category: '问功名', content: '时事日艰，不宜于进，只宜退守。' },
      { category: '问家宅', content: '主亲族不和。' },
      { category: '问疾病', content: '防有发狂之症。' },
      { category: '问婚姻', content: '宜罢婚。' },
      { category: '问讼事', content: '一时不直，久后自然明白。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 36,
    position: 6,
    judgments: [
      { category: '占问时运', content: '初运虽好，后运不佳，万事宜作退一步想，方可无咎。' },
      { category: '问功名', content: '宜晦藏遁迹，不宜自炫才华。' },
      { category: '问营商', content: '货价初次太昂，落后太贱，显有天渊之隔，宜得其平。' },
      { category: '问战征', content: '防攻山夺险，有坠入深渊之患。' },
      { category: '问婚姻', content: '有先富后贫之嫌。' },
      { category: '问家宅', content: '此宅面对高山，后临深渊，殊嫌地势低陷。' },
      { category: '问疾病', content: '初患气冲，后又下泄，难治。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 37,
    position: 0,
    judgments: [
      { category: '占问时运', content: '风得火而愈狂，火得风而益炽，正是时运全盛之会，然入邪则邪，入善则善，言行之间，最宜加勉。' },
      { category: '问营商', content: '《尔雅》云："风与火为庖"，"庖"，聚也，有屯聚货物之象。爻辞曰"有物""有恒"，物，货物，恒，恒久，谓其物不容急售，过后可获高价。' },
      { category: '问功名', content: '风行远，火炎上，有高升远到之象；言行者，出身加民之具，功名可必。' },
      { category: '问家宅', content: '防有火灾。' },
      { category: '问婚姻', content: '《家人》一卦，象取夫妇，《离》火《巽》风皆女，或长女为姊，中女为娣之象，或为两姓对结之亲。吉。' },
      { category: '问疾病', content: '是风火上升，痰多气喘之症，一时不治。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 37,
    position: 1,
    judgments: [
      { category: '占问时运', content: '目下好运初来，正当自知检束，斯无灾悔。' },
      { category: '问战征', content: '当行军之始，正宜整其步伐，严其号令，得以有胜无败。' },
      { category: '问营商', content: '是初次贩运，宜恪守商规。' },
      { category: '问功名', content: '是初次求名。宜遵公令，不得妄意干进。' },
      { category: '问家宅', content: '此宅墙围坚固，门户肃睦，治家者有条有则，约束详明。至四年后，可致饶富。吉。' },
      { category: '问疾病', content: '病是初起，宜自谨慎保养，必无灾害。初若不治，必致变症，则难治矣。' },
      { category: '问婚姻', content: '当初订姻好，知是家风清白，闺门素谨，可成。' },
      { category: '问讼事', content: '初讼罢之，则吉。' },
      { category: '问六甲', content: '是初胎，生女。' }
    ]
  },
  {
    hexagramId: 37,
    position: 2,
    judgments: [
      { category: '占问时运', content: '目下正当大运，但爻象重阴，只宜因人成事，不能独断独行。' },
      { category: '问战征', content: '此是偏将，必非主师，或是后营，主管粮食军饷，最为紧要，谨防勿失。' },
      { category: '问营商', content: '想是贩运粮食生意，吉。' },
      { category: '问功名', content: '难以遂意。' },
      { category: '问家宅', content: '此宅朝南，宅主必是妇人，家事不能专断，惟灶基最吉。' },
      { category: '问疾病', content: '幸胃口强健，可以无害。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 37,
    position: 3,
    judgments: [
      { category: '占问时运', content: '运限平平，终贵自勉，严谨刻苦，不自惮劳，当必获吉。若一味取乐，百事无成。' },
      { category: '问战征', content: '号令严明，万军畏服，纵不免杀戮过甚之患，而所谓自得成功。' },
      { category: '问营商', content: '想是外作商店，内作佳家，内外齐肃，家政严，店规谨，乃能获吉。否则，过和而流，将有名可问。' },
      { category: '问功名', content: '爻象专在宜家，功名尚缓。' },
      { category: '问家宅', content: '此宅家规严肃，吉。' },
      { category: '问婚姻', content: '九三之应在上九，曰"有孚"，知两姓相从，吉。' },
      { category: '问疾病', content: '九三属《离》为火，宜进凉剂，虽危得愈。' },
      { category: '问失物', content: '宜严急查询，可得，若宽缓则失矣。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 37,
    position: 4,
    judgments: [
      { category: '占问时运', content: '目下正当盛运，已富者克保其家，未富者即发其财，大吉之象。' },
      { category: '问战征', content: '国富兵强，粮饷充足，可进可退，吉无不利。' },
      { category: '问营商', content: '"利市三倍"，立致富饶，吉可知也。' },
      { category: '问功名', content: '官与财多相反，必须破财，乃可成名。' },
      { category: '问家宅', content: '必是巨室阀阅之家，大吉。' },
      { category: '问讼事', content: '财可通神，事无不了。' },
      { category: '问疾病', content: '必是身体肥胖，膏粱过度所致，药之即愈。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 37,
    position: 5,
    judgments: [
      { category: '占问时运', content: '运来福至，人心自然感通，何忧不吉？' },
      { category: '问战征', content: '王者之师，所向无敌。吉。' },
      { category: '问营商', content: '想此商业，必是奉公谋办，或是贡献品物，为王家之业也，吉。' },
      { category: '问功名', content: '恰如渭水付岩，有梦卜感通之象，吉。' },
      { category: '问家宅', content: '此宅想是公卿巨邸，吉。' },
      { category: '问疾病', content: '人身以心为君，五居《巽》木，必是肝木太强生风，心火生热。药宜熄火定风，使心气开通，可勿忧也。吉。' },
      { category: '问婚姻', content: '有选入宫闱之象。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 37,
    position: 6,
    judgments: [
      { category: '占问时运', content: '得人信服，得人敬畏，事无不成，往无不利，可行于近，亦可行于远，万事皆吉。十年好运，过此而终。' },
      { category: '问战征', content: '行车之道，有信则人不我欺，有威则人不我狎，赏罚无私，号令必行，王者之师也，故吉。' },
      { category: '问营商', content: '有信则万金可托，有威则百务皆修，商道之正也。' },
      { category: '问功名', content: '上爻处极位之地，必是身居上位，信义早孚，威望素著之大人也。' },
      { category: '问家宅', content: '此宅地位必高，为一乡之望也。吉。' },
      { category: '问婚姻', content: '两姓允从，吉。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 38,
    position: 0,
    judgments: [
      { category: '占问时运', content: '目下气运颠倒，惟宜正以处之。' },
      { category: '占问战征', content: '军情不协，上下异趣，宜防《睽》散。' },
      { category: '问功名', content: '上下不通，功名难望。' },
      { category: '问营商', content: '货价上落悬殊，能以人弃我取，尚有小利可望。' },
      { category: '问疾病', content: '病在上下焦，胸气隔绝，上有火，下有湿，医治棘手。' },
      { category: '问家宅', content: '此宅天盘地盘皆动，阖家上下不利，急宜迁避。' },
      { category: '问婚姻', content: '有二女皆愿受聘，大者性躁急，小者性宽柔。择而娶之。' },
      { category: '问讼事', content: '即可罢散。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 38,
    position: 1,
    judgments: [
      { category: '占问时运', content: '好运初来，灾悔已退，虽有丧失，不必计虑，即有恶人来侵，不必拒绝，自然无咎。' },
      { category: '问战征', content: '初次开战，虽有小败，后必大胜，强敌亦不能害我也。无咎。' },
      { category: '问营商', content: '新作贸易，失而必复，无须忧虑也。来者不拒，无须计较也。目下未见尽利，后必大亨。' },
      { category: '问功名', content: '现下虽无灾悔，未得成名，必待明年，至二爻得其巷遇，斯获显达。' },
      { category: '问家宅', content: '阉宅平顺，无悔，无咎。' },
      { category: '问失物', content: '不必寻觅，自得。' },
      { category: '问婚姻', content: '现下未成，待到六月，或到六年，必就，吉。在上九"非寇，婚媾"之辞。' },
      { category: '问讼事', content: '所讼必直，无咎。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 38,
    position: 2,
    judgments: [
      { category: '占问时运', content: '卦值乖《睽》，运本不佳，近始得有绝好际遇，往必有庆。' },
      { category: '问战征', content: '二五相敌，内为我兵，五为敌兵，曲巷相遇，白刃相接，此战未分胜负。' },
      { category: '问营商', content: '巷字从共，必是合伙共谋之业，当有一财主相遇，共为经营之象。' },
      { category: '问功名', content: '正是风云际遇之时。' },
      { category: '问家宅', content: '此宅在曲巷之内，近有贵人来会，相晤为欢，大庆。' },
      { category: '问疾病', content: '得遇良医，无咎。' },
      { category: '问婚姻', content: '《诗》所咏"邂逅相遇，适我愿兮"，此男妇私情，非正配也。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 38,
    position: 3,
    judgments: [
      { category: '占问时运', content: '运不得当，恐有刑伤之灾；三年后，得有好运。' },
      { category: '问战征', content: '车脱马逸，兵败将亡，不能前进，必待应军得力，得以始败终胜。' },
      { category: '问营商', content: '与人不合，非特不能获利，防有刑狱之厄，待后可成。' },
      { category: '问功名', content: '左掣右肘，动辄得咎，安能成名？晚运则佳。' },
      { category: '问婚姻', content: '初因男家疑忌，未免受辱，终得疑释完婚。' },
      { category: '问家宅', content: '此宅地位不当，前后左右，皆有牵制，宅中之人，时有头面伤残之祸，以朝山向午，《离》火方也。' },
      { category: '问疾病', content: '必是面上有疮，久后自愈。' },
      { category: '问讼事', content: '不免刑厄，终则自解。' },
      { category: '问失物', content: '后可寻得。' },
      { category: '问六甲', content: '生女，防面有伤痕。' }
    ]
  },
  {
    hexagramId: 38,
    position: 4,
    judgments: [
      { category: '占问时运', content: '性情孤介，不合时宜，幸得同志，差足免咎。' },
      { category: '问战征', content: '孤军深入，几致危殆，幸而获救，可以无咎。' },
      { category: '问营商', content: '孤客远行，货物不合销路，进退两难，得遇故乡旧友，方可脱售，平安无咎。' },
      { category: '问功名', content: '命运孤寒，难望显达，无咎而已。' },
      { category: '问家宅', content: '宅在孤村僻壤，惟有樵夫野老来往而已。' },
      { category: '问疾病', content: '病是目疾，得遇良医，可以无咎。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 38,
    position: 5,
    judgments: [
      { category: '占问时运', content: '劣运已退，得与同宗共事，可以无咎。' },
      { category: '问战征', content: '可勇跃前往，无咎。' },
      { category: '问营商', content: '防合伙者有侵食之患，然径行而往，终得有利。' },
      { category: '问功名', content: '得有同宗相助，乃能获庆。' },
      { category: '问家宅', content: '此宅是宗族旧屋，居住有庆。' },
      { category: '问疾病', content: '是肌肤之疾，易治也。' },
      { category: '问婚姻', content: '二与五为正应，是亲戚旧家，成则有庆。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 38,
    position: 6,
    judgments: [
      { category: '占问时运', content: '正当交运脱运之时，切宜息心定虑，毋动妄想，妄想一端，幻形百端，防生疑病。' },
      { category: '问战征', content: '营位太高，军力太孤，防有疑兵来袭。' },
      { category: '问营商', content: '目下货价，变迁百出，上落不一；时当盛夏，来客稀少，必待秋雨一通，可以获利。' },
      { category: '问功名', content: '现在牛怪蛇神，变动不一，待十年后，出《蹇》入《解》，可许发解。' },
      { category: '问婚姻', content: '前因疑忌不睦，后得完好，吉。' },
      { category: '问家宅', content: '此宅有变，防有鬼祟，遇婚嫁喜事，可以解释。' },
      { category: '问疾病', content: '杯弓蛇影，因疑成病，得破其疑，病自霍然。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 39,
    position: 0,
    judgments: [
      { category: '占问时运', content: '运当艰难，宜加奋勉，方可出险。' },
      { category: '占问战征', content: '入山穷水，复杂之地，进退两难，宜率六军，戮力向西南进攻，方可获利。' },
      { category: '问功名', content: '坎险《艮》止，功名有阻，返身加勉，五年后至上爻，《象》曰"利见大人，以从贵也"，成名可望。' },
      { category: '问营商', content: '水在山上，则水蓄而不流，有财不流通之象，营商者难之。' },
      { category: '问家宅', content: '此宅傍山，防有山上来水冲落，致损墙屋，宜改易其朝向，乃利。' },
      { category: '问婚姻', content: '山水本两相为偶，山下水高则为失偶，故有《蹇》。不成则已，成亦必有反悔。' },
      { category: '问疾病', content: '《蹇》为足疾，涉水登山，必不能往行也。' },
      { category: '问失物', content: '宜反从身上寻之。' },
      { category: '问讼事', content: '宜自返而罢讼，吉。' },
      { category: '问行人', content: '被中途发水所阻，大有险难，他日空身可归。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 39,
    position: 1,
    judgments: [
      { category: '占问时运', content: '好运未来，宜谨守以待。' },
      { category: '问战征', content: '有险在前，未可进往，宜暂退守。' },
      { category: '问营商', content: '售卖之处，适有危，不可贩货前往，须暂时待价。' },
      { category: '问功名', content: '从军效力，皆冒险犯难，获邀奖赏，故曰"来誉"。' },
      { category: '问家宅', content: '地位险阻，迁居不利。' },
      { category: '问疾病', content: '在初起，不必急往求医，宜退而自养。' },
      { category: '问婚姻', content: '不必急就，还宜待。吉。' },
      { category: '问失物', content: '缓之可得。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 39,
    position: 2,
    judgments: [
      { category: '占问时运', content: '目下气运尴尬，险难重重，主一身劳碌。' },
      { category: '问战征', content: '防军入险地，身被重围，有虎士元落凤坡之象。' },
      { category: '问营商', content: '为内地运货，中途被水，有人财两失之患。' },
      { category: '问功名', content: '为急公求名，名成而身莫保，邀身后之荣。' },
      { category: '问家宅', content: '此宅在艮山之中，向朝东北，险既重，不利。' },
      { category: '问婚姻', content: '二应五，主结贵亲；防后日夫君有难，身命难保。' },
      { category: '问讼事', content: '凶。' },
      { category: '问行人', content: '凶。' },
      { category: '问失物', content: '终不可得。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 39,
    position: 3,
    judgments: [
      { category: '占问时运', content: '运值多难，前进不利，不如退守。' },
      { category: '问战征', content: '有军出旋师之象。' },
      { category: '问营商', content: '有去而不来，贩货复回，转销内地之象。' },
      { category: '问功名', content: '为出使在外，改为内用。' },
      { category: '问家宅', content: '此宅后靠山，前临水，初欲他迁，后复归来，得以团聚为喜。' },
      { category: '问婚姻', content: '前欲他适，后得归来，可喜。' },
      { category: '问行人', content: '即日来，喜。' },
      { category: '问失物', content: '失而复得。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 39,
    position: 4,
    judgments: [
      { category: '占问时运', content: '运多蹇险，以其能联合众心，得以济险。' },
      { category: '问战征', content: '四爻阴柔，可知军力单薄，以其能与众军同心同德，联络一气，乃可出险。' },
      { category: '问功名', content: '"来连"者，有连升之象。' },
      { category: '问营商', content: '"来连"者，谓先后商客，皆相连而来；曰"当位实也"，"实"，充实，谓得赢满也。' },
      { category: '问家宅', content: '此宅必与邻屋比连，地位相当，家道殷实。' },
      { category: '问婚姻', content: '必是老亲结亲，重联订好，吉。' },
      { category: '问疾病', content: '此病必连绵已久，一时不愈。' },
      { category: '问讼事', content: '迟久可了。' },
      { category: '问行人', content: '流连在外，一时不归。' },
      { category: '问六甲', content: '生男，想是孪胎。' }
    ]
  },
  {
    hexagramId: 39,
    position: 5,
    judgments: [
      { category: '占问时运', content: '厄运将退，渐得化危为安。' },
      { category: '问战征', content: '前既被围，今幸得救兵齐来，得以一战出围。' },
      { category: '问功名', content: '位近至尊，足以匡济，大荣，吉。' },
      { category: '问营商', content: '众货辐辏，一时难以脱售。' },
      { category: '问家宅', content: '地近禁卫，当冲击疲难之区，车马纷逐之会，不宜民居，可改作会馆议院。' },
      { category: '问疾病', content: '此是危难大症，宜集众医会治，方可望愈。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 39,
    position: 6,
    judgments: [
      { category: '占问时运', content: '现下大难已退，大运将来，可以出面求仕。' },
      { category: '问战征', content: '大兵已集，可以一战，以出重围。' },
      { category: '问营商', content: '众商咸来，货价大涨，即此脱售可复本，亦可获利。' },
      { category: '问功名', content: '文名大振，可以"利见大人"。' },
      { category: '问家宅', content: '此宅地位高大，灾煞已退，吉曜照临，且得贵人扶助。' },
      { category: '问婚姻', content: '主贵。' },
      { category: '问讼事', content: '须从大审院判结。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 40,
    position: 0,
    judgments: [
      { category: '占问时运', content: '灾难解脱，大有奋发振作之象。' },
      { category: '占问战征', content: '威武一振，有大寇翦灭，小寇服从之象。' },
      { category: '问功名', content: '有声震百里，泽被群生之兆。' },
      { category: '问营商', content: '得时得令，"雷雨之动满盈"，大利。' },
      { category: '问婚姻', content: '《震》雷《坎》雨，阴阳交济，生育畅茂，吉。' },
      { category: '问家宅', content: '天盘有动，地盘有难，宜祈祷解免。' },
      { category: '问行人', content: '一时可归，防小有灾难，无咎。' },
      { category: '问讼事', content: '幸得宽宥无罪。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 40,
    position: 1,
    judgments: [
      { category: '占问时运', content: '困难初解，安时守分，自得无咎。' },
      { category: '问战征', content: '乍脱重围，宜自蓄锐养精，不可妄动，得保无咎。' },
      { category: '问营商', content: '不致耗失，亦为幸矣。' },
      { category: '问功名', content: '目下只可守旧而已。' },
      { category: '问家宅', content: '平安无害。' },
      { category: '问讼事', content: '宜和。' }
    ]
  },
  {
    hexagramId: 40,
    position: 2,
    judgments: [
      { category: '占问时运', content: '去邪归正，自得安吉。' },
      { category: '问战征', content: '"田"者猎兽，犹战之猎敌也。获狐者，犹获敌之渠魁也。得矢者，犹得敌之兵器也。故"贞吉"。' },
      { category: '问营商', content: '"田"者在猎兽，商者在猎利，"三"者多数，"黄"者黄金。必获厚利，吉。' },
      { category: '问功名', content: '曰"获"，曰"得"，功名可望，吉。' },
      { category: '问家宅', content: '此宅防有狐祟，须猎获之，乃吉。' },
      { category: '问婚姻', content: '此必先有小妾，而后纳正室也。黄者正色，为正配，吉。' },
      { category: '问疾病', content: '防是狐媚邪病，宜张弧矢以驱之，吉。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 40,
    position: 3,
    judgments: [
      { category: '占问时运', content: '运非不佳，但因素行不端，为人鄙笑。' },
      { category: '问战征', content: '战隙自我而开，以致群盗纷起，一时难平。' },
      { category: '问营商', content: '防有盗劫之患。' },
      { category: '问功名', content: '沐猴而冠，其能久乎？' },
      { category: '问家宅', content: '门户不自谨慎，或用人不当，致招窃盗。' },
      { category: '问婚姻', content: '两姓均非端正之家，是富而不仁者也，"可丑"。' },
      { category: '问讼事', content: '两造理皆不直。' },
      { category: '问行人', content: '满载而归，但来路不正。' },
      { category: '问失物', content: '已被窃负盗去，不得。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 40,
    position: 4,
    judgments: [
      { category: '占问时运', content: '行年已当强仕，但行运不当，全在因人成事。' },
      { category: '问战征', content: '防炮弹伤足，幸救兵得力，可以解围。' },
      { category: '问营商', content: '所获甚微，惟众心交孚，一二年后，可望厚利。' },
      { category: '问功名', content: '拇为足指，卑下已极，至五爻曰"君子维有解"必待下科，可望登榜。' },
      { category: '问家宅', content: '此宅地低下，不得其当，只可作行栈店屋。' },
      { category: '问婚姻', content: '得有力媒人说合，方可成事。' },
      { category: '问讼事', content: '有朋友出，交相解劝，得可息讼。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 40,
    position: 5,
    judgments: [
      { category: '占问时运', content: '正运亨通，群邪悉退。' },
      { category: '问战征', content: '不戮一人，不加一矢，外夷来服。' },
      { category: '问功名', content: '利君子，不利小人。' },
      { category: '问营商', content: '不劳苦计营谋，自然获利。' },
      { category: '问家宅', content: '此宅福曜照临，邪魔远避。' },
      { category: '问婚姻', content: '吉。' },
      { category: '问行人', content: '即归。' },
      { category: '问疾病', content: '外邪解散，正气来复，吉。' },
      { category: '问讼事', content: '理直者胜，理曲者服，即可罢讼。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 40,
    position: 6,
    judgments: [
      { category: '占问时运', content: '运途吉顺，出外或遇小寇，宜急防之。' },
      { category: '问战征', content: '防有敌兵劫掠城外，宜高阜伏矢以射之，必有获也。' },
      { category: '问营商', content: '运货出外，防有盗劫，宜严备御，非特无失，且可以获盗粮也，故曰"无不利"。' },
      { category: '问功名', content: '爻称公，必已贵显也，当立功于外。' },
      { category: '问家宅', content: '墉墙宜高，可备外窃。' },
      { category: '问婚姻', content: '《诗》云"弋凫与雁"，有射之象，吉。' },
      { category: '问讼事', content: '悖逆自解，利。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 41,
    position: 0,
    judgments: [
      { category: '占问时运', content: '目下行运不正，宜自惩忿。' },
      { category: '问战征', content: '山下有泽，防山下深处，有敌兵埋伏。' },
      { category: '问营商', content: '营商原在谋财，宜和气，不宜恃气，宜审利，不宜放利。' },
      { category: '问功名', content: '忿欲不除，虽有功名，恐不能保其终也。' },
      { category: '问婚姻', content: '卦自咸恒来，女悦而男止，夫妇之道，得其正也。' },
      { category: '问家宅', content: '此宅后有高山，前有深泽，地势颇险，宜开凿之使平。' },
      { category: '问讼事', content: '不使气，不贪财，讼自平矣。' },
      { category: '问失物', content: '不得。' },
      { category: '问六甲', content: '单月生男，双月生女。' }
    ]
  },
  {
    hexagramId: 41,
    position: 1,
    judgments: [
      { category: '占问时运', content: '已往莫追，目下宜急加勉，自可免咎。' },
      { category: '问战征', content: '宜速进兵，不可迟缓，辎重粮食，亦须"酌损"。' },
      { category: '问营商', content: '贩运宜速，审时度势，宜酌量前行，定可获利，必无咎也。' },
      { category: '问功名', content: '速往则得，迟缓无成。' },
      { category: '问婚姻', content: '即日迎娶，两姓好合。' },
      { category: '问家宅', content: '须速他迁，吉。' },
      { category: '问讼事', content: '即速了结罢讼。' },
      { category: '问失物', content: '速寻可得。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 41,
    position: 2,
    judgments: [
      { category: '占问时运', content: '好运方来，不减不加，万事得中，自然获利。' },
      { category: '问战征', content: '不必减粮，不必添兵，坚守中营，有胜无败；若鲁莽前往，恐有凶也。' },
      { category: '问营商', content: '货物合宜，不必减价，无不获利。' },
      { category: '问功名', content: '无荣无辱，青毡守旧。' },
      { category: '问婚姻', content: '两姓门户相当，吉。' },
      { category: '问家宅', content: '地位得中，不必添改，大利。' },
      { category: '问讼事', content: '平和。' },
      { category: '问失物', content: '原物无失。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 41,
    position: 3,
    judgments: [
      { category: '占问时运', content: '财运平平，少则获利，多则有损。利双月，不利单月。' },
      { category: '问战征', content: '宜从兑方，一路进军，自有援兵相助，有胜无败。' },
      { category: '问营商', content: '商业宜于一人独做，否则二人同办，再多则必有损。' },
      { category: '问功名', content: '须一人独往，必得成名。' },
      { category: '问婚姻', content: '得友，即得偶也，吉。' },
      { category: '问家宅', content: '宅在兑方，宅中丁口，每家只有两丁可断。' },
      { category: '问讼事', content: '两造成讼，为中有一人唆弄所致，去此一人，则讼了矣。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 41,
    position: 4,
    judgments: [
      { category: '占问时运', content: '目下虽有小灾，得救即疗，可以转忧为喜。' },
      { category: '问战征', content: '未免遭伤，医治可疗，无咎。' },
      { category: '问营商', content: '货宜减办，使之即往贩售，获利可喜。' },
      { category: '问功名', content: '一时难望。' },
      { category: '问婚姻', content: '四与初相应，初阳四阴，阴阳相合，必成可喜。' },
      { category: '问家宅', content: '此宅阴气过盛，宅眷致多疾病，祈祷可疗，无咎。' },
      { category: '问讼事', content: '"疾"者，害也，去其所害，讼自平矣。' },
      { category: '问行人', content: '有事他往，一时未归，有喜无咎。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 41,
    position: 5,
    judgments: [
      { category: '占问时运', content: '运途全盛，可得意外宠遇。' },
      { category: '问战征', content: '军事先卜，其兆大吉。' },
      { category: '问营商', content: '财运之来，虽辞不去。' },
      { category: '问功名', content: '"自天祐之，吉无不利"。' },
      { category: '问婚姻', content: '天作之合，吉。' },
      { category: '问家宅', content: '家业兴隆，不卜可知。' },
      { category: '问疾病', content: '病愈之后，且可得财，吉。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 41,
    position: 6,
    judgments: [
      { category: '占问时运', content: '目下绝无窒碍，所往皆利，大吉。' },
      { category: '问战征', content: '军队不须添减，率此以往，攻克战胜，无往不利，可"大得志也"。' },
      { category: '问营商', content: '货价无甚上落，往售皆可获利，大吉。' },
      { category: '问功名', content: '目下即可得志。' },
      { category: '问婚姻', content: '吉。' },
      { category: '问家宅', content: '此宅不必改造，自得吉利。' },
      { category: '问疾病', content: '当出外求医，无咎。' },
      { category: '问行人', content: '在外大吉，一时未必归家。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 43,
    position: 0,
    judgments: [
      { category: '占问时运', content: '目下气运强盛，财宜散，不宜聚，聚则有祸。' },
      { category: '问战征', content: '赏要明，罚要公，切勿夸张自伐，克减军粮。' },
      { category: '问营商', content: '获利颇厚，但利己利人，分财宜均，若靳而不施，必致众嫉。' },
      { category: '问功名', content: '泽上于天，有居高位之象；盈满致损，所当自警。' },
      { category: '问家宅', content: '泽上于天，防有水溢之患。' },
      { category: '问婚姻', content: '夬有决绝之义，且夬反为姤，姤曰勿用娶女，此婚不成。' },
      { category: '问讼事', content: '夬者决也，有断之义，一断便可了讼。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 43,
    position: 1,
    judgments: [
      { category: '占问时运', content: '负气太盛，任意妄动，动必得咎。' },
      { category: '问战征', content: '将微位卑，恃勇直前，必致败北，咎由自取也。' },
      { category: '问营商', content: '不度地位，不审机宜，率意贩货前往，不特伤财，更防损命，宜慎宜戒！' },
      { category: '问功名', content: '躁进取败。' },
      { category: '问婚姻', content: '门户不当，不合，合则有咎。' },
      { category: '问家宅', content: '此宅地势低下，迁居不利。' },
      { category: '问行人', content: '宜即归，可以免咎。' },
      { category: '问失物', content: '不必往寻，寻之反有余祸。' },
      { category: '问讼事', content: '宜即罢讼。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 43,
    position: 2,
    judgments: [
      { category: '占问时运', content: '目下运途中正，事事谨慎，即有意外之事，皆可坦然无患。' },
      { category: '问战征', content: '军事最患夜袭，宜时作警备，可以无忧。' },
      { category: '问营商', content: '贩运货物，盗警水火，总宜保险，使可无虑。' },
      { category: '问功名', content: '即可断结无忧。' },
      { category: '问家宅', content: '此宅阳刚过盛，二爻动而变离，火灾宜防。暮夜更当小心。' },
      { category: '问婚姻', content: '婚字从女，从昏，故称"昏礼"，有暮夜之象。诗云"弋凫与雁"，弋有戎象。"勿恤"，即有喜也。婚姻吉。' },
      { category: '问疾病', content: '日轻夜重，是阴虚火盛之症，当慎意调治，可以无患。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 43,
    position: 3,
    judgments: [
      { category: '占问时运', content: '目下运得其正，但阳气过盛，率意独行，未免被人疑忌，然幸可无咎。' },
      { category: '问战征', content: '孤军独入，防中途遇水有阻，然亦无咎。' },
      { category: '问营商', content: '孤客独行，虽得无咎，恐遇雨有阻，濡滞时日。' },
      { category: '问功名', content: '孤芳独赏，恐遭小人所忌。' },
      { category: '问家宅', content: '此屋门面壮丽，栋上恐有渗漏，致被濡湿，急宜修葺，无咎。' },
      { category: '问婚姻', content: '爻辞曰"独"，一时未得佳偶。' },
      { category: '问疾病', content: '面上浮肿，必是湿热之气，上冲所致，医治无咎。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 43,
    position: 4,
    judgments: [
      { category: '占问时运', content: '目下运途不当，作事颠倒，精神不安，所谋难成。' },
      { category: '问战征', content: '臀无肤，是见伤也；行次且，是欲退也；闻言不信，是号令不行也。以此行军，何能决胜乎！' },
      { category: '问营商', content: '心无主见，故贩售货物，每失机宜，获利殊难。' },
      { category: '问功名', content: '次且者，不进之状，焉得成名？' },
      { category: '问家宅', content: '此宅屋后无余地，屋前行路迁斜，为羊肠小径，居者尚无灾悔。' },
      { category: '问疾病', content: '剥肤之灾，其疥癞之患乎？防溃烂及耳，致两耳失聪。' },
      { category: '问婚姻', content: '始则踌躇不决，久之得以牵羊成礼。' },
      { category: '问讼事', content: '防有杖笞之灾。' },
      { category: '问行人', content: '一时不归。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 43,
    position: 5,
    judgments: [
      { category: '占问时运', content: '运得中正，万事无咎。' },
      { category: '问战征', content: '五为卦主，是主将也，率诸军以齐进；"中行"者，就大道而行，故得无咎。' },
      { category: '问营商', content: '夬，决去也。爻当五位，时令将过，货物宜决计速售，斯可无咎，否则有悔。' },
      { category: '问功名', content: '五为尊位，其名必显，惟宜远小人，近君子，斯可无咎。' },
      { category: '问家宅', content: '此宅蔓草丛生，几成荒废，当速剪除尽净，居住无咎。' },
      { category: '问婚姻', content: '五与二应，五居兑中，二居乾中，阴阳相合。"羊"取义于祥，有吉祥之兆，故无咎。' },
      { category: '问疾病', content: '五以阳居阳，气过盛，宜调剂得中，可以无咎。' },
      { category: '问讼事', content: '以正决邪，决去务尽，不使复萌，讼乃得吉。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 43,
    position: 6,
    judgments: [
      { category: '占问时运', content: '正运已退，更宜警惕，斯可免凶。' },
      { category: '问战征', content: '军事将毕，余孽犹在，所当重申号令，警严戒备，始得廓清。若偷安忘备，终必有凶。' },
      { category: '问营商', content: '上为卦之终，是货物脱售将尽，当重申后约，斯商业得以继续。"无号"，为无商业名目，其业必凶。' },
      { category: '问功名', content: '"无号"，为声名灭绝之象，凶。' },
      { category: '问家宅', content: '凡一宅之中，或书声，或歌声，或笑语声，以至鸡鸣狗吠，皆有声也，"无号"，则寂灭无闻，其家必凶。' },
      { category: '问疾病', content: '是阳尽阴息之症，痛痒不觉，叫号无声，其病危矣。凶。' },
      { category: '问婚姻', content: '媒妁无言，不成。' },
      { category: '问讼事', content: '冤莫能伸，讼不得直，凶。' },
      { category: '问行人', content: '未通音问，凶。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 44,
    position: 0,
    judgments: [
      { category: '占问时运', content: '好运盛行，能使四方闻名。' },
      { category: '问战征', content: '军令迅速，赏必信，罚必行，有席卷天下之势。' },
      { category: '问营商', content: '为商为利，宜贩运远方，可以随在获利。' },
      { category: '问功名', content: '有名扬四海之象。' },
      { category: '问婚姻', content: '婚礼所重，在父母之命，媒妁之言，犹政事之有诰命也。得其正，则天下可行也。' },
      { category: '问家宅', content: '此宅防有被风倾圯之虑。' },
      { category: '问疾病', content: '小儿为惊风，大人为肝风，防有四肢不仁，或手足牵拘之症。' },
      { category: '问讼事', content: '此讼牵连甚广，一时未得罢休。' },
      { category: '问失物', content: '窃者己远飏，难以再得。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 44,
    position: 1,
    judgments: [
      { category: '占问时运', content: '目下运途，有所牵制，不可妄动，妄动必凶。' },
      { category: '问战征', content: '初爻为出军之始，巽象阴柔，兵力必弱，显见固守则吉，躁进则凶。' },
      { category: '问营商', content: '利坐贾，不利行商。' },
      { category: '问功名', content: '宜守旧而已。' },
      { category: '问婚姻', content: '九家易曰："丝系于柅，犹女系于男"，正位夫内，故吉。' },
      { category: '问家宅', content: '此宅防有闺范不修之羞。' },
      { category: '问疾病', content: '此病是阴弱之症，宜安居静养。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 44,
    position: 2,
    judgments: [
      { category: '占问时运', content: '人生处世，安得相遇尽为君子？惟当曲意调护，不为小人所害，自得无咎。' },
      { category: '问功名', content: '鱼有化龙之象，"包有鱼"者，鱼已为其所包矣，则升腾可必也。"不利宾"，利必在己也。' },
      { category: '问营商', content: '"包"为包罗富有之象，众惟鱼矣。鱼亦有众多之象，主货物充盈，财利富厚。"不利宾"，为其利非外人所得窃取也。' },
      { category: '问战征', content: '马融曰，"鱼介鳞之物，兵象也"，鱼而能包，是必善用其兵者也。曰"不利宾"，宾即敌也，敌必可破矣。' },
      { category: '问婚姻', content: '鱼阴物，以阳包阴，姻事成矣。' },
      { category: '问家宅', content: '鱼为阴物，象取女子，此宅定是女子主政。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 44,
    position: 3,
    judgments: [
      { category: '占问时运', content: '气运柔弱，诸事迟疑，是以动辄有危。' },
      { category: '问战征', content: '欲进不进，因疑生危，不能得胜也。无大败亦幸矣。' },
      { category: '问营商', content: '贩运不快，安能获利？' },
      { category: '问功名', content: '尚须迟缓以待。' },
      { category: '问婚姻', content: '迟缓可成。' }
    ]
  },
  {
    hexagramId: 44,
    position: 4,
    judgments: [
      { category: '占问时运', content: '刚变而柔，运途不正，气量浅狭，是以多凶。' },
      { category: '问战征', content: '主将才力微薄，不能包容众军，防有兵变之祸。' },
      { category: '问营商', content: '"包无鱼"，有囊里空虚之象，何以获利？' },
      { category: '问功名', content: '鱼喜得水，人喜得名，无鱼则水涸，无名则人穷，故凶。' },
      { category: '问婚姻', content: '婚姻之道，重在生育，"包无鱼"，言无胎孕也。凶。' },
      { category: '问家宅', content: '象曰"远民"，此宅必在民居相远之地，是孤村也。恐有不测之灾。' },
      { category: '问疾病', content: '鱼阴象，无鱼是阴已亏极，阳不能包，必凶。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 44,
    position: 5,
    judgments: [
      { category: '占问时运', content: '运行中正，才力所及，自能包罗诸有，虽不言吉，吉可知矣。' },
      { category: '问营商', content: '生意虽不外木植瓜果等品，而包容甚广，自有大财可得。' },
      { category: '问功名', content: '五居尊位，功名自显，但进退荣辱，俱当安命。' },
      { category: '问战征', content: '堂堂之阵，正正之旗，王者之师也。逆者诛，顺者从，有包扫一切之势焉。' },
      { category: '问婚姻', content: '有瓜蓏绵绵之象。' },
      { category: '问疾病', content: '为热包寒之象。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 44,
    position: 6,
    judgments: [
      { category: '占问时运', content: '运至于上，运亦穷矣。' },
      { category: '问营商', content: '角逐者争利也，"姤其角"，为能得其首利也。盖吝在商人，"吝，无咎"焉。' },
      { category: '问功名', content: '有头角峥嵘之兆。世传魁星有角，"姤其角"是遇魁星也，功名大利。' },
      { category: '问战征', content: '角力角胜，皆有战象。角之字为刀下用，此战大有杀戮，是穷兵之祸也。' },
      { category: '问疾病', content: '想头角之上患疮，医治无咎。' },
      { category: '问婚姻', content: '上居乾之极，上穷返下，必是老夫而求女妻也。' },
      { category: '问六甲', content: '上穷而返，生男。' }
    ]
  },
  {
    hexagramId: 53,
    position: 1,
    judgments: [
      { category: '占问时运', content: '人微年少，运途初行，虽危无咎。' },
      { category: '问战征', content: '屯军江干，防有危厉，幸有谋言来告，得以免咎。' },
      { category: '问营商', content: '货物交易，防有小人从中作难，因约言早成，得以无害。' },
      { category: '问功名', content: '鸿运亨通，初虽在下，自有渐进之象。' },
      { category: '问婚姻', content: '女长男少，幼言既定，当以待年而嫁，无咎也。' },
      { category: '问家宅', content: '此宅临水，防小人有疾厄，然无大咎。' },
      { category: '问疾病', content: '不利小人，大人无咎。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 53,
    position: 2,
    judgments: [
      { category: '占问时运', content: '既得安乐，又得醉饱无忧，吉。' },
      { category: '问战征', content: '兵食充足，军心欢悦，自有安似磐石之象。' },
      { category: '问营商', content: '二爻居《巽》之中，《巽》为商，为利。就爻辞言"干"进"磐"，有渐进渐高之势，吉。' },
      { category: '问功名', content: '有嘉宾宴乐之象，成名必矣，吉。' },
      { category: '问婚姻', content: '二与五相应，即以二五为婚；二五皆吉，可咏百年偕老矣。' },
      { category: '问家宅', content: '此宅地基巩固，一门和乐，吉。' },
      { category: '问疾病', content: '饮食过度所致，宜消食安胃，病即日可愈。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 53,
    position: 3,
    judgments: [
      { category: '占问时运', content: '运途不正，防有外祸。' },
      { category: '问战征', content: '利于守御，不利往征。' },
      { category: '问营商', content: '难望获利，防有盗劫之虞。' },
      { category: '问功名', content: '惟从事军政，可以得名。' },
      { category: '问婚姻', content: '防有始乱终离之憾。' },
      { category: '问家宅', content: '此宅于生产不利。' },
      { category: '问疾病', content: '妇人生产，恐母子不能两全。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 53,
    position: 4,
    judgments: [
      { category: '占问时运', content: '运失其正，但以顺自处，随遇得安，亦可无咎。' },
      { category: '问营商', content: '聊有所得，差足免咎。' },
      { category: '问战征', content: '得其倚角，敌势已衰。' },
      { category: '问功名', content: '从事角逐，所得亦微。' },
      { category: '问疾病', content: '病在肝木太盛，宜顺气调养。' },
      { category: '问家宅', content: '此宅多寡居之妇，有遇人不淑之感。' },
      { category: '问行人', content: '在外失年，聊以将顺容身，一时不归。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 53,
    position: 5,
    judgments: [
      { category: '占问时运', content: '运途中正，三年后，无往不利，吉。' },
      { category: '问战征', content: '屯军大阜，三年后，所向无敌，吉。' },
      { category: '问功名', content: '三年后必成。' },
      { category: '问营商', content: '目下难望获利，至上爻自可独占厚利，盖在三岁后也。' },
      { category: '问婚姻', content: '得子稍迟，吉。' },
      { category: '问家宅', content: '宅在大阜之间，吉。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 53,
    position: 6,
    judgments: [
      { category: '占问时运', content: '气运正盛，可出而用也，吉。' },
      { category: '问战征', content: '从平陆进军，威仪显赫，攻无不克。' },
      { category: '问营商', content: '货美价高，定可获利。' },
      { category: '问功名', content: '出而用世，可以仪表天下。' },
      { category: '问婚姻', content: '吉。' },
      { category: '问家宅', content: '此宅地位崇高，瞻观有耀，吉。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 56,
    position: 0,
    judgments: [
      { category: '占问时运', content: '运未全盛，宜明以察之，慎以防之，即有灾害，可随即解脱。' },
      { category: '问战征', content: '须用火攻。' },
      { category: '问营商', content: '宜出外贩运，随来随售，不可留积。' },
      { category: '问功名', content: '火在山上，有光明远烛之象，升用在即。' },
      { category: '问婚姻', content: '即日可成。' },
      { category: '问家宅', content: '慎防火灾。' },
      { category: '问疾病', content: '是肝火上炎之症，其势可危，生死在即，宜慎。' },
      { category: '问讼事', content: '即日可了。' },
      { category: '问行人', content: '即归。' },
      { category: '问六甲', content: '上半月生女，下半月生男。' }
    ]
  },
  {
    hexagramId: 56,
    position: 1,
    judgments: [
      { category: '占问时运', content: '出身既微，行运亦陋，孤身作客，恐难获利。' },
      { category: '问营商', content: '资财微细，生业亦卑，难免灾祸。' },
      { category: '问功名', content: '虽得亦卑。' },
      { category: '问战征', content: '按五百人为旅，军力单薄，有败无胜。' },
      { category: '问家宅', content: '地位委琐龌龊，必小户之家也。慎可免灾。' },
      { category: '问婚姻', content: '《诗》"琐琐姻娅，则无臞仕"，知非名门大族也。' },
      { category: '问疾病', content: '有小灾悔，初起可治。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 56,
    position: 2,
    judgments: [
      { category: '占问时运', content: '有财有人，运途中正，自无忧也。' },
      { category: '问营商', content: '得财则可以谋利，得人则可以共事，千里作客，可以无忧矣。' },
      { category: '问功名', content: '是以财捐纳者。' },
      { category: '问战征', content: '资财，即军饷也，"童仆"，即军卒也，饷足兵强，攻无不克。' },
      { category: '问家宅', content: '必是寄居之宅，喜得财用充裕，童从顺正，家室和平，自无咎祸也。' },
      { category: '问婚姻', content: '有富室赘婿之象。' },
      { category: '问疾病', content: '旅处得病，喜有童仆，尽心服侍，可以调养痊愈。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 56,
    position: 3,
    judgments: [
      { category: '占问时运', content: '运途颠倒，破败重重，大为可危。' },
      { category: '问战征', content: '谨防火攻，尤虑军心涣散，不战自遁。' },
      { category: '问营商', content: '防有不测之祸，可危。' },
      { category: '问功名', content: '目下难望，必二年后，至五爻曰"终以誉命"，可以成名矣。' },
      { category: '问婚姻', content: '一时不成，难偕其老。' },
      { category: '问家宅', content: '防有祝融之灾。' },
      { category: '问疾病', content: '本人可愈，儿女或童仆，难以保全。' },
      { category: '问失物', content: '必是童仆所窃。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 56,
    position: 4,
    judgments: [
      { category: '占问时运', content: '盛运未至，所得亦仅耳。' },
      { category: '问营商', content: '出外贩运少有获利，未能满望。' },
      { category: '问功名', content: '一时未得，容待来年，定可成就也。' },
      { category: '问战征', content: '可以掳得敌粮，未能遽获大胜。' },
      { category: '问婚姻', content: '嫁资颇厚，但是偏房，非正嫡也。' },
      { category: '问家宅', content: '地位不当。' },
      { category: '问疾病', content: '是心疾也，因谋望不遂，忧郁所致。' },
      { category: '问失物', content: '可得。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 56,
    position: 5,
    judgments: [
      { category: '占问时运', content: '运途柔顺，小往大来，终有庆也。' },
      { category: '问营商', content: '虽小失，有大得也，名利兼全。' },
      { category: '问功名', content: '晚运亨通，声名上达。' },
      { category: '问战征', content: '有一翦成功之象。' },
      { category: '问家宅', content: '翚飞鸟革，善美堪称。' },
      { category: '问婚姻', content: '二五得应，世称佳偶。' },
      { category: '问疾病', content: '想是身临矢石，以忠殉难，得有赐命之荣。' },
      { category: '问六甲', content: '有桑弧蓬矢之兆，男喜也。' }
    ]
  },
  {
    hexagramId: 56,
    position: 6,
    judgments: [
      { category: '占问时运', content: '行运已极，高而无与，乐极悲来，凶之道也。' },
      { category: '问战征', content: '防有焚营劫寨之危。' },
      { category: '问营商', content: '先小利，后大损，凶灾叠至，可危可危。' },
      { category: '问功名', content: '有丧无得。' },
      { category: '问家宅', content: '有覆巢累卵之危。' },
      { category: '问婚姻', content: '先成后散，先喜后悲，凶。' },
      { category: '问疾病', content: '属牛者必凶。' },
      { category: '问六甲', content: '生女，不育。' }
    ]
  },
  {
    hexagramId: 60,
    position: 0,
    judgments: [
      { category: '占问时运', content: '运途中正，财源富有，惟宜外节出纳，内节身心。吉。' },
      { category: '问战征', content: '节制之军，登高涉险，可守可战。' },
      { category: '问营商', content: '泽有水，富饶之象。法制既精，议论亦确，无不获利也。' },
      { category: '问功名', content: '品行端正，律度精详，有鱼龙得水之象。' },
      { category: '问婚姻', content: '《坎》男《兑》女，水泽相成，吉。' },
      { category: '问家宅', content: '宅临大泽，家道富有，吉。' },
      { category: '问疾病', content: '病宜节饮食，慎行动。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 60,
    position: 1,
    judgments: [
      { category: '占问时运', content: '运途未盛，宜谨守户庭，得以免咎。' },
      { category: '问营商', content: '宜坐贾，不宜行商，无咎。' },
      { category: '问功名', content: '目下宜杜门静守，至四爻可以成名。' },
      { category: '问战征', content: '初当离散之余，军民乍聚，宜养其锐气，不宜出战。' },
      { category: '问婚姻', content: '初与四相应，四得承顺之道，即妇道之正也，故无咎。' },
      { category: '问家宅', content: '宜安居静养，无害。' },
      { category: '问失物', content: '尚在户庭之内，可寻得之。' },
      { category: '问行人', content: '尚未起行。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 60,
    position: 2,
    judgments: [
      { category: '占问时运', content: '运途方盛，时会亦好，咎在因循自误，为可惜也。' },
      { category: '问战征', content: '时可进取，乃畏首畏尾，固守不出，反致凶也。' },
      { category: '问营商', content: '货物充积，时价得宜，本可获利，乃因拘墟失时，反致耗损。《兑》为毁折，是失象也。' },
      { category: '问功名', content: '时会未逢，难望成名。' },
      { category: '问婚姻', content: '桃夭失时，难免旷怨，凶。' },
      { category: '问家宅', content: '门户闭锁，无人之象，凶。' },
      { category: '问疾病', content: '病由步履艰难，几成痿痹。' },
      { category: '问失物', content: '是内窃也。' },
      { category: '问讼事', content: '恐有囚禁之祸。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 60,
    position: 3,
    judgments: [
      { category: '占问时运', content: '壮不自检，老大徒悲，其将谁怨乎？' },
      { category: '问战征', content: '临时不谋，后悔难追。' },
      { category: '问营商', content: '当其获利，骄奢无度，一旦耗失，便致哀嗟，咎由自取耳。' },
      { category: '问婚姻', content: '有先喜后悲之象。' },
      { category: '问功名', content: '随得随失。' },
      { category: '问家宅', content: '三以阴居阳，地位不当，必致先富后贫。' },
      { category: '问疾病', content: '病由不节饮食所致，幸无大咎。' },
      { category: '问失物', content: '付之一叹，不须怨人。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 60,
    position: 4,
    judgments: [
      { category: '占问时运', content: '一路平安。' },
      { category: '问战征', content: '善战者在先安军心，军心安，则临危不惧，而所向有功。' },
      { category: '问营商', content: '四在外卦之始，必是初次贩货出外，能事事节俭，斯得安居外地，而所谋亦得亨通矣。' },
      { category: '问功名', content: '能承上意，必得成名。' },
      { category: '问婚姻', content: '四以阴居阴，得位承阳，自得家室安全。' },
      { category: '问家宅', content: '平安获吉。' },
      { category: '问疾病', content: '病由口入，能节饮食，自得安泰。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 60,
    position: 5,
    judgments: [
      { category: '占问时运', content: '运如嚼蔗，到老愈甘。' },
      { category: '问营商', content: '稼穑作甘，当以贩运谷米为吉。"往有尚"，往者往外也，尤当贩米，往外洋销售，定必获利。' },
      { category: '问功名', content: '苦尽甘来，功名必显。' },
      { category: '问家宅', content: '五爻得位，中央为甘，知此宅必地位中正，家风正直，节俭足以嘉尚。' },
      { category: '问婚姻', content: '女之嫁曰往"往有尚"，谓往而成礼。"甘"者，甘心相从，有百年好合之象，吉。' },
      { category: '问疾病', content: '病在中宫，甘则中满，须宜节食为要。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 60,
    position: 6,
    judgments: [
      { category: '占问时运', content: '运途亦正，为固执不通，以致终身穷苦。' },
      { category: '问营商', content: '机会已极，不知变通，以致穷迫，徒自苦耳。' },
      { category: '问功名', content: '其人则守正不阿，困苦自守，难望成名。' },
      { category: '问战征', content: '爻象重阴，柔弱无力，又当地穷势极，只知苦守不出，终必凶矣。' },
      { category: '问疾病', content: '阴盛阳衰，病势已极，凶。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 57,
    position: 0,
    judgments: [
      { category: '占问时运', content: '运途顺遂，百事盛宜。' },
      { category: '问战征', content: '军令之行，捷如风火，令出惟行，无可迟疑。' },
      { category: '问营商', content: '商业最宜随机应变，听命而行，斯可获利。' },
      { category: '问功名', content: '"风从虎"，有虎变之象焉。' },
      { category: '问婚姻', content: '凭父母之命，媒妁之言，礼之正也。夫唱妇随，百年偕老，吉。' },
      { category: '问家宅', content: '宅临泽水，宜与朋友同居。' },
      { category: '问疾病', content: '是风痹之症，须人扶持而行。' },
      { category: '问讼事', content: '须重申禀诉。' },
      { category: '问失物', content: '为风飘失，须重番寻觅，或可复得。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 57,
    position: 1,
    judgments: [
      { category: '占问时运', content: '运途不正，心神犹豫，是以谋事皆颠倒无成。' },
      { category: '问营商', content: '《巽》本为利，因疑而败，以断而成，知犹豫者必难获利也。' },
      { category: '问功名', content: '就武可成。' },
      { category: '问婚姻', content: '不在彬彬文士，而宜桓桓虎臣。' },
      { category: '问家宅', content: '此宅朝东南，地位不当，进退不便，宜改朝西为利。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 57,
    position: 2,
    judgments: [
      { category: '占问时运', content: '得神明保佑，运途多吉。' },
      { category: '问营商', content: '凡贩运货物，有不决者，宜问诸卜筮，自能迪吉。' },
      { category: '问功名', content: '得有神助，吉。' },
      { category: '问战征', content: '地位既低，进退两难，当此之时，惟告求神明，自可获吉。无咎。' },
      { category: '问婚姻', content: '卜之则吉。' },
      { category: '问家宅', content: '宜祷。' },
      { category: '问疾病', content: '宜祭祷床公床婆，自得无咎。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 57,
    position: 3,
    judgments: [
      { category: '占问时运', content: '目前运途卑屈，未免为人所贱。' },
      { category: '问战征', content: '一味委靡，力折志衰，难以克捷。' },
      { category: '问功名', content: '卑琐又卑，所得亦微矣。' },
      { category: '问营商', content: '巽顺过甚，未能与人争强，何能获利？' },
      { category: '问婚姻', content: '门户低微，或亦可重。' },
      { category: '问家宅', content: '屋宇狭小，必是贫穷之户。' },
      { category: '问讼事', content: '柔弱被欺，份当自取。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 57,
    position: 4,
    judgments: [
      { category: '占问时运', content: '运途正当获利，无悔有获。' },
      { category: '问战征', content: '从东南进兵，自得斩获有功。' },
      { category: '问功名', content: '当以献功获赏，出身成名。' },
      { category: '问营商', content: '当以采办皮革羽毛等品致富。' },
      { category: '问婚姻', content: '婚礼，古时弋凫射雀，亦田象。' },
      { category: '问疾病', content: '曰"悔亡"，病必可愈。' },
      { category: '问失物', content: '可得。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 57,
    position: 5,
    judgments: [
      { category: '占问时运', content: '逢丁癸日作事，无往不利，大吉。' },
      { category: '问营商', content: '生业宜取木爻，日辰宜用金日，初有小悔，后必大利，吉。' },
      { category: '问功名', content: '位得中正，爻曰"贞吉"，逢丁癸之年，必得成名。' },
      { category: '问战征', content: '其于师旅，必叮咛以告诫，其于地势，必周详以揆度。临事好谋，先后不怠，故战无不胜，大吉。' },
      { category: '问婚姻', content: '丁火癸水，水火相配，吉。' },
      { category: '问家宅', content: '其宅坐北向南，地位中正，大吉。' },
      { category: '问疾病', content: '三日可愈。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 57,
    position: 6,
    judgments: [
      { category: '占问时运', content: '运途不正，作事委靡，愈高愈危，有丧无得，凶。' },
      { category: '问战征', content: '身为主帅，畏首畏尾，必致丧师辱国，身亦危矣。' },
      { category: '问营商', content: '可断不断，因循失时，耗损必大。' },
      { category: '问功名', content: '必不能保其终也。' },
      { category: '问婚姻', content: '有惧内之象，难期偕老，凶。' },
      { category: '问家宅', content: '主有丧，凶。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 58,
    position: 0,
    judgments: [
      { category: '占问时运', content: '运途平平，能得众心，自然获吉，惟逢三六之年，不利。' },
      { category: '问战征', content: '屯兵陂泽之地，宜于两后营相约进攻，可以获胜。' },
      { category: '问营商', content: '得人扶助，可以获利。' },
      { category: '问功名', content: '赖朋友之力可成。' },
      { category: '问婚姻', content: '必是朋友旧好。' },
      { category: '问家宅', content: '宅临泽水，宜与朋友同居。' },
      { category: '问疾病', content: '宜延相熟医师并诊，方可全愈。' },
      { category: '问讼事', content: '宜请朋友公评，不必涉讼。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 58,
    position: 1,
    judgments: [
      { category: '占问时运', content: '运当初爻，以和为贵，万事获吉。' },
      { category: '问战征', content: '师克在和，民兵咸悦，有不战来归之象。' },
      { category: '问营商', content: '《兑》为正秋，万实告成，天地自然之美利也。营商得此，吉无不利。' }
    ]
  },
  {
    hexagramId: 58,
    position: 2,
    judgments: [
      { category: '占问时运', content: '运得中正，众心交孚，是以有吉，无悔。' },
      { category: '问战征', content: '上下一心，令出惟行，有匹夫不可夺之志，战无不克，吉。' },
      { category: '问营商', content: '贸易虽在逐利，要必以信为本，有信则彼此无欺，而商业乃可通行矣。' },
      { category: '问婚姻', content: '二五相孚，是阴阳相偶也，吉。' },
      { category: '问家宅', content: '"有孚挛如，富以其邻"，谓能与邻家，并力致富也。' },
      { category: '问功名', content: '《中孚》二爻曰，"我有好爵，吾与尔靡之"，有父子同升之吉。' },
      { category: '问疾病', content: '是因疑致疾，今既得相孚，灾悔自亡。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 58,
    position: 3,
    judgments: [
      { category: '占问时运', content: '人品卑鄙，专以谄笑求悦，未免为人所贱矣。' },
      { category: '问营商', content: '通商之来，固宜和悦相招，然悦不以道，尔许我虞，是失商道之正也。' },
      { category: '问功名', content: '奔竞而来，虽荣必败。' },
      { category: '问战征', content: '要皆招徕乌合之众也，不能久持。' },
      { category: '问婚姻', content: '有始合终离之象。' },
      { category: '问疾病', content: '病有外祟，其象本凶，三至四隔一爻，早则一日，迟则一月，可望愈快。' },
      { category: '问讼事', content: '是外来之祸，凶。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 58,
    position: 4,
    judgments: [
      { category: '占问时运', content: '运途未稳，逆则有忧，顺则有喜，万事宜斟酌行之。' },
      { category: '问营商', content: '"四多惧"，营商在外，必有忧惧不安之事，商量出之，方得有喜。' },
      { category: '问功名', content: '功名必从艰苦患难而来者，方得大就。' },
      { category: '问婚姻', content: '一时疑惧未成，必待媒妁再三说合，终得成合有喜。' },
      { category: '问家宅', content: '现下宅中不安，致多疾厄。《兑》为秋，必待秋时，得以平安有喜。' },
      { category: '问疾病', content: '病由心神不安所致，得逢喜事，胸怀宽悦自愈。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 58,
    position: 5,
    judgments: [
      { category: '占问时运', content: '位得其正，运当其盛，盛极则剥，尤当预防，能时时防剥，斯时时得盛矣。' },
      { category: '问战征', content: '"孚于剥"者，谓当生死存亡之地，军兵一心，感激奋勇，而不以为剥，诚可谓众志成城，无往不克矣。' },
      { category: '问营商', content: '剥者，剥削也，虽有剥削，而深信无疑，必有大利。' },
      { category: '问功名', content: '能安命，虽剥必亨。' },
      { category: '问疾病', content: '有剥肤之疾，速治则愈。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 58,
    position: 6,
    judgments: [
      { category: '占问时运', content: '上为卦之终，行运已极，必藉人引掖而能行，无吉无凶，平平而已。' },
      { category: '问功名', content: '虽得他人荐引，亦已晚矣。' },
      { category: '问营商', content: '得人引导，方可交易，上在卦外，是出洋经营也。"未光"者，未能大得利也。' },
      { category: '问战征', content: '《兑》属正西，"引兑"者，相引而入西也。是引兵向西，与三合队，但当上爻，时会已迟，恐未必能奏功也。' },
      { category: '问疾病', content: '内邪能引而外达，乃得望愈。' },
      { category: '问家宅', content: '宅地纯阴，与三合体，防有内外牵引之患。' },
      { category: '问婚姻', content: '爻象皆柔，恐是勾引而成，非夫妇之正礼也。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 59,
    position: 0,
    judgments: [
      { category: '占问时运', content: '运途亨通，有乘风破浪之概。' },
      { category: '问战征', content: '利用海军。' },
      { category: '问营商', content: '财水流通，得天神护佑，大利。' },
      { category: '问功名', content: '风随帆转，水到渠成，有即日成名之象。' },
      { category: '问婚姻', content: '中男长女，自成佳偶。' },
      { category: '问家宅', content: '宜祷告神祇，自然获福。' },
      { category: '问疾病', content: '"风行水上"，去而不留，病象危矣；"立庙"，有魂归窀穸之象，故凶。' },
      { category: '问失物', content: '难得。' },
      { category: '问六甲', content: '春夏生女，秋冬生男。' }
    ]
  },
  {
    hexagramId: 59,
    position: 1,
    judgments: [
      { category: '占问时运', content: '运多险难，幸而遇救，危而反吉。' },
      { category: '问战征', content: '初次临阵，赖战马精良，得以解围出险，故吉。' },
      { category: '问营商', content: '资本微薄，深幸同事相助，得以获利。' },
      { category: '问功名', content: '行午马运，必可成名。' },
      { category: '问家宅', content: '新建大厦，好有禄马临向，吉。' },
      { category: '问婚姻', content: '《乾》造以肖马者吉。' },
      { category: '问疾病', content: '病宜急治，得遇马姓医士为吉。' },
      { category: '问行人', content: '驿马已动，即日可归。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 59,
    position: 2,
    judgments: [
      { category: '占问时运', content: '运途顺适，得如所愿，灾悔俱亡。' },
      { category: '问营商', content: '运货贸易，得所凭依，可以如愿而偿也，吉。' },
      { category: '问功名', content: '所愿必遂。' },
      { category: '问战征', content: '虽当涣散败奔，得所依藉，可图恢复，何悔之有？' },
      { category: '问婚姻', content: '内卦《坤》体，二变为《乾》成《坎》，《坎》为中男；外卦《乾》体，四变为《坤》成《巽》，《巽》为长女，此配必女长于男。木水相生，佳偶也。' },
      { category: '问家宅', content: '此宅眷属有奔败之难，幸在外得所凭依，所谓适我愿也。' },
      { category: '问疾病', content: '郁郁不乐，隐几而卧，得遇良医，可以无忧。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 59,
    position: 3,
    judgments: [
      { category: '占问时运', content: '三处《坎》之极，是运当坎险之时，忘身赴难，得以出险，可免悔也。' },
      { category: '问战征', content: '能国而忘身，忠勇可嘉，去复何悔？' },
      { category: '问营商', content: '远货在外，跋涉风波，备尝艰苦，有重财轻命之象。' },
      { category: '问功名', content: '有杀身成仁，名垂竹帛之荣。' },
      { category: '问婚姻', content: '有捐躯尽节之志，可悲，可嘉。' },
      { category: '问家宅', content: '此宅临坎水之上，宅主宜出行在办，得可免灾。' },
      { category: '问行人', content: '未归。' },
      { category: '问六甲', content: '分娩在即，生男。' }
    ]
  },
  {
    hexagramId: 59,
    position: 4,
    judgments: [
      { category: '占问时运', content: '能解脱困难，复成基业，正大运亨通之时。' },
      { category: '问营商', content: '绝大手段，能散财济危，又能独成巨壑。' },
      { category: '问功名', content: '有独出冠时之概。' },
      { category: '问战征', content: '军容之盛，忽散忽聚，忽高忽低，忽而万马无声，忽而一丘高峙，变化之妙，有出意表者，此神化之兵也。' },
      { category: '问疾病', content: '散其外邪，又当聚其元气，病自疗矣。' },
      { category: '问家宅', content: '邻居旷远，独成一家，自得幽趣，吉。' },
      { category: '问讼事', content: '"涣其群"，其讼必解矣，吉。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 59,
    position: 5,
    judgments: [
      { category: '占问时运', content: '运位得正，语默动静，百事皆吉。' },
      { category: '问营商', content: '地位正当，货物流通，所到无不获利。' },
      { category: '问功名', content: '位近至尊，名闻天下，大吉。' },
      { category: '问战征', content: '号令严明，军威整肃，得奏汗马之勋。' },
      { category: '问婚姻', content: '必得贵婿。' },
      { category: '问家宅', content: '此宅非寻常百姓之家。' },
      { category: '问疾病', content: '一汗即愈。' },
      { category: '问六甲', content: '生女，主贵。' }
    ]
  },
  {
    hexagramId: 59,
    position: 6,
    judgments: [
      { category: '占问时运', content: '运途通达，灾去福来。' },
      { category: '问战征', content: '卦体从《乾》《坤》来，《坤》上曰"龙战于野，其血玄黄"，有战则两伤之象。' },
      { category: '问营商', content: '血者，资财也。商舶远出，贸易亨通，可以获利，自无忧也。' },
      { category: '问功名', content: '有投笔从军之象。' },
      { category: '问婚姻', content: '有远嫁之象。' },
      { category: '问家宅', content: '宅主防有血光之灾，远避可以无咎。' },
      { category: '问疾病', content: '是气血淤结之患，宜疏通脉络，可以免灾。' },
      { category: '问失物', content: '此物已去远，不可复得。' },
      { category: '问讼事', content: '宜远出避之，无咎。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 61,
    position: 0,
    judgments: [
      { category: '占问时运', content: '"泽上有风"，防有风波之险。' },
      { category: '问战征', content: '当以不嗜杀人为心，斯为心戚孚，所向无敌。' },
      { category: '问营商', content: '宜仔细酌议，宽缓行事，斯得免害。' },
      { category: '问功名', content: '一时罪狱未平，功名难望。' },
      { category: '问婚姻', content: '婚媾致寇，因之速狱，宜慎。' },
      { category: '问家宅', content: '主有讼狱之灾。' },
      { category: '问疾病', content: '危则危矣，一时生命可保。' },
      { category: '问讼事', content: '一时未了。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 61,
    position: 1,
    judgments: [
      { category: '占问时运', content: '阳刚当令，用心专一，不惑于他途，故吉。' },
      { category: '问营商', content: '安于本业，见异不迁，以交冬令为利。' },
      { category: '问功名', content: '有志竟成。' },
      { category: '问战征', content: '《巽》初爻曰"利武人之贞"，从禽从戎，其义相同，所当专心一志，踊跃前进，自可获胜。吉。' },
      { category: '问婚姻', content: '有从一而终之象。' },
      { category: '问疾病', content: '病可无虞，但恐有他变，变则危矣。' },
      { category: '问讼事', content: '恐有别生枝节。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 61,
    position: 2,
    judgments: [
      { category: '占问时运', content: '此唱彼和，适得我愿，正当运途亨通之会。' },
      { category: '问营商', content: '主客同心，气谊相投，有交相获利之象。' },
      { category: '问功名', content: '有父子同升之庚。' },
      { category: '问战征', content: '上下一体，如以臂使手，以手使指，一气相连，有进则共进，退则共退之象，未易攻击者。' },
      { category: '问婚姻', content: '得夫妇唱随之乐。' },
      { category: '问疾病', content: '是传染之症。' },
      { category: '问家宅', content: '必是贵显之家，且得孝贤之子。' }
    ]
  },
  {
    hexagramId: 61,
    position: 3,
    judgments: [
      { category: '占问时运', content: '目下运途颠倒。' },
      { category: '问营商', content: '忽盈忽亏，忽成忽败，皆由主谋不定。' },
      { category: '问功名', content: '升降无常，荣辱随之。' },
      { category: '问战征', content: '强敌在前，难以制胜。' },
      { category: '问婚姻', content: '反复未成。' },
      { category: '问家宅', content: '宅神不安，事多颠倒。' },
      { category: '问疾病', content: '时重时轻，防有鬼祟。' },
      { category: '问行人', content: '欲归复止，一时未定。' },
      { category: '问失物', content: '防得而复失。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 61,
    position: 4,
    judgments: [
      { category: '占问时运', content: '运当全盛，宜保泰持盈，去私从公，得以无咎。' },
      { category: '问营商', content: '"月几望"，喻财利之丰盈；"马匹亡"，喻谋事之快利。吉。' },
      { category: '问功名', content: '有春风得意之象。' },
      { category: '问战征', content: '宜于月夜进攻，马脱蹄，兵衔枚，奋勇而上，定可获胜。' },
      { category: '问婚姻', content: '愿望颇丰，"匹亡"者，恐不久有丧偶之灾。' },
      { category: '问疾病', content: '三五之期不利。' },
      { category: '问家宅', content: '此宅阴气太盛，恐同居中，难免死亡之祸。' },
      { category: '问行人', content: '十四五可归。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 61,
    position: 5,
    judgments: [
      { category: '占问时运', content: '所谋所求，无不称心。' },
      { category: '问营商', content: '同心协力，合伙经营，无不获利。' },
      { category: '问功名', content: '有求必成。' },
      { category: '问战征', content: '军心团结，戮力同心，自能制胜。' },
      { category: '问婚姻', content: '有二人同心，百年好合之庆。' },
      { category: '问家宅', content: '一家和乐，百室盈止。' },
      { category: '问疾病', content: '病由肝风，致手足牵挛，带病延年，尚无咎也。' },
      { category: '问讼事', content: '防有桎梏之灾。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 61,
    position: 6,
    judgments: [
      { category: '占问时运', content: '运途亦盛，但虚而无实，转觉可危。' },
      { category: '问营商', content: '场面颇广，声势亦宏，有外观而无内蕴，恐其不能久也。' },
      { category: '问功名', content: '绳盗灵声，君子所耻。' },
      { category: '问婚姻', content: '恐难偕老。' },
      { category: '问家宅', content: '此宅有牝鸡司晨之象，家业难保，凶。' },
      { category: '问疾病', content: '肝风作痛，喊叫声声，病状颇苦，凶。' },
      { category: '问讼事', content: '势将上控，凶。' },
      { category: '问六甲', content: '生女，小儿善啼，恐难育。' }
    ]
  },
  {
    hexagramId: 62,
    position: 0,
    judgments: [
      { category: '占问时运', content: '运途清高，有不屑于同污流俗之概。' },
      { category: '问战征', content: '屯营山上，地位过高，进退俱难。' },
      { category: '问营商', content: '因一时价值过高，不合时宜，买卖均难。' },
      { category: '问功名', content: '以其不谐时俗，反为人忌。' },
      { category: '问婚姻', content: '想是老夫女妻，年岁相去过远。' },
      { category: '问家宅', content: '此宅想在高山。' },
      { category: '问疾病', content: '是过寒过热之症，须调剂得中。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 62,
    position: 1,
    judgments: [
      { category: '占问时运', content: '不安本分，妄思风腾上进，凶。' },
      { category: '问营商', content: '力小而图大，位卑而谋高，不自量力，必致败也。' },
      { category: '问功名', content: '宜卑小自安。' },
      { category: '问战征', content: '初在《艮》下，宜按兵不动。' },
      { category: '问婚姻', content: '宜门户相当，不宜攀结高亲。' },
      { category: '问家宅', content: '屋宇以低小为宜。' },
      { category: '问疾病', content: '神魂飞越，凶。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 62,
    position: 2,
    judgments: [
      { category: '占问时运', content: '运途平顺，不得其全，犹得其半，亦可无咎矣。' },
      { category: '问营商', content: '贸资以往，虽未得满载而归，亦足称十得其五矣。' },
      { category: '问功名', content: '不得其上，已获其中。' },
      { category: '问战征', content: '已得斩其将，拔其旗，夫复何咎？' },
      { category: '问疾病', content: '药力未到。' },
      { category: '问婚姻', content: '恐非正配。' },
      { category: '问家宅', content: '宅神不安。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 62,
    position: 3,
    judgments: [
      { category: '占问时运', content: '运途不正，谨慎自防，尚可免祸。' },
      { category: '问营商', content: '贩运出外，防遇盗劫之凶，宜勿前进。' },
      { category: '问功名', content: '切弗往求，求则有祸。' },
      { category: '问婚姻', content: '非婚媾，则寇雠也，宜防。' },
      { category: '问家宅', content: '有凶祸临门，宜谨防之。' },
      { category: '问疾病', content: '防是刀伤，凶。' },
      { category: '问失物', content: '不必追寻，方可免灾。' },
      { category: '问讼事', content: '防干大辟。' },
      { category: '问六甲', content: '生男，难育。' }
    ]
  },
  {
    hexagramId: 62,
    position: 4,
    judgments: [
      { category: '占问时运', content: '运以当可之谓时，勿宜妄动轻进。' },
      { category: '问营商', content: '得可而止，切勿过贪。' },
      { category: '问功名', content: '不求躁进，自得巷遇之庆，若妄动希荣，恐反遭祸。' },
      { category: '问战征', content: '四刚而失位，宜勿进攻，乃可无咎。' },
      { category: '问婚姻', content: '自有良缘，得时则遇，宜勿急急媒聘。' },
      { category: '问家宅', content: '安居为宜，无用迁移。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 62,
    position: 5,
    judgments: [
      { category: '占问时运', content: '运途平平，难成大事，只可小受。' },
      { category: '问营商', content: '小利可占。' },
      { category: '问功名', content: '伏处山林，当有弓旌下逮。' },
      { category: '问战征', content: '敌于山穴中，设有埋伏，宜先攻取之。' },
      { category: '问婚姻', content: '是钻穴隙以相从者，非正娶也。' },
      { category: '问天时', content: '大旱。' },
      { category: '问失物', content: '当就穴地中觅之。' },
      { category: '问疾病', content: '宜用针刺之法治之。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 62,
    position: 6,
    judgments: [
      { category: '占问时运', content: '高而愈危，进而愈厉，不知退守，凶由自取也。' },
      { category: '问功名', content: '躁进取祸。' },
      { category: '问营商', content: '既不遇时，又复妄进，必致取败。' },
      { category: '问战征', content: '凡行军前进，不遇敌兵，知敌军必于暗地设伏，宜即退军，否则必陷险难。' },
      { category: '问婚姻', content: '防坠奸媒之计。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 63,
    position: 0,
    judgments: [
      { category: '占问时运', content: '运途全盛，盛极必衰，须防后患。' },
      { category: '问战征', content: '大难既平，大险既定，战胜功成，还宜图始保终，毋贻后患。' },
      { category: '问营商', content: '目下货物，得时得价，正当满足，须留后步。' },
      { category: '问功名', content: '居高思危，得防其终。' },
      { category: '问婚姻', content: '有好合百年之兆。' },
      { category: '问家宅', content: '大厦既成，苟完苟合，贻谋孔远。' },
      { category: '问疾病', content: '大病既痊，更宜自保。' },
      { category: '问讼事', content: '毋再涉讼。' },
      { category: '问六甲', content: '春夏生女，秋冬生男。' }
    ]
  },
  {
    hexagramId: 63,
    position: 1,
    judgments: [
      { category: '占问时运', content: '运未脱险，当自奋勉，可以无咎。' },
      { category: '问营商', content: '初次经营，跋涉多艰，前而不止，虽危得济，无咎。' },
      { category: '问功名', content: '先难后获。' },
      { category: '问战征', content: '虽有车脱马蹶之危，一鼓而进，当必可获胜也。' },
      { category: '问家宅', content: '初次迁居，虽此宅或轮奂不美，或首尾不完，居之无咎。' },
      { category: '问婚姻', content: '火为水妃，初聘则吉。' },
      { category: '问疾病', content: '初病，虽危无咎。' },
      { category: '问六甲', content: '初胎生女。' },
      { category: '问失物', content: '物已沾水，当就车中觅之，可得。' },
      { category: '问行人', content: '在途，稍有水灾，无咎。' }
    ]
  },
  {
    hexagramId: 63,
    position: 2,
    judgments: [
      { category: '占问时运', content: '小小得失，切勿介意，方得脱大难，成大功也。' },
      { category: '问营商', content: '有失而复得之象。' },
      { category: '问功名', content: '七年内，定可复职。' },
      { category: '问战征', content: '中途被劫，丧其辎重，七日内，必获胜仗。' },
      { category: '问婚姻', content: '早则七月，迟则七年，可复团聚。' },
      { category: '问家宅', content: '其宅被人居，七年后，即可归还原主。' },
      { category: '问疾病', content: '七日必愈。' },
      { category: '问失物', content: '不久可得。' },
      { category: '问六甲', content: '七日内可产，生女。' }
    ]
  },
  {
    hexagramId: 63,
    position: 3,
    judgments: [
      { category: '占问时运', content: '忍苦耐劳，所谋必成。' },
      { category: '问营商', content: '数载经营，方可获利。' },
      { category: '问功名', content: '辛苦而成。' },
      { category: '问战征', content: '劳师久征，所攻虽得，然亦惫矣。' },
      { category: '问婚姻', content: '三年内可完配。' },
      { category: '问家宅', content: '此宅阴象太重，三年后，方可居住。' },
      { category: '问疾病', content: '此病一时无恙，三年内，必难保全。' },
      { category: '问讼事', content: '三年可了，防小人又复生事，宜戒。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 63,
    position: 4,
    judgments: [
      { category: '占问时运', content: '运当全盛，然不预防，衰即立至，所宜谨戒。' },
      { category: '问营商', content: '如舟行，中流舟漏，急宜补修。' },
      { category: '问功名', content: '有忽赐忽褫之惧。' },
      { category: '问战征', content: '夺帜易帜，胜当虑败，所贵临事而惧。' },
      { category: '问婚姻', content: '古人多以衣服比夫妇，为不可喜新而弃旧也。' },
      { category: '问疾病', content: '是老弱之症也。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 63,
    position: 5,
    judgments: [
      { category: '占问时运', content: '已盛则退，方盛则进，宜保俭约，毋侈奢华，吉凶皆由自取也。' },
      { category: '问战征', content: '盛气在西，宜顺天修德，不宜暴兵耀武。' },
      { category: '问营商', content: '合伙同业，殷富者亦奢，不如俭约者，实获其利也。' },
      { category: '问功名', content: '已成者宜慎，未成者大可望也。' },
      { category: '问婚姻', content: '宜就西邻订姻，吉。' },
      { category: '问家宅', content: '宅以西首为吉。' },
      { category: '问疾病', content: '宜祷。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 63,
    position: 6,
    judgments: [
      { category: '占问时运', content: '好运已过，深为可危，宜慎。' },
      { category: '问战征', content: '上处坎险之极，上为首，恐首将有不利。' },
      { category: '问营商', content: '头番买卖，必难获利。' },
      { category: '问功名', content: '可许夺元。' },
      { category: '问婚姻', content: '元配有灾，续弦无咎。' },
      { category: '问家宅', content: '此宅长房不利。' },
      { category: '问讼事', content: '防首领难保。' },
      { category: '问疾病', content: '患在首面，可危。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 64,
    position: 0,
    judgments: [
      { category: '占问时运', content: '运途颠倒，诸事须慎。' },
      { category: '问战征', content: '营垒器具，各失所宜，不相为用，急宜慎重审察，斯可免败。' },
      { category: '问营商', content: '货物失当，地位不合，所当谨慎处置，方可获利。' },
      { category: '问功名', content: '未也。' },
      { category: '问婚姻', content: '门户不合。' },
      { category: '问家宅', content: '方向倒置，须当改易。' },
      { category: '问疾病', content: '上下焦血络不通，宜升不升，宜降不降，药方最宜审慎。' },
      { category: '问失物', content: '辨明方位，可以寻得。' },
      { category: '问六甲', content: '上月生女，下月生男。' }
    ]
  },
  {
    hexagramId: 64,
    position: 1,
    judgments: [
      { category: '占问时运', content: '不审前后，不顾进退，鲁莽从事，是昏而无知者也。' },
      { category: '问营商', content: '前既失败，后又不戒，覆辙相仍，其将何以了事乎？' },
      { category: '问功名', content: '龙头既失，骥尾亦必难附。' },
      { category: '问婚姻', content: '流离首尾，团聚难矣。' },
      { category: '问家宅', content: '此宅前门后户，方位不正。' },
      { category: '问疾病', content: '病在下身。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 64,
    position: 2,
    judgments: [
      { category: '占问时运', content: '运如轻车渡水，中道以济，无往不利。' },
      { category: '问营商', content: '有满载而归之象。' },
      { category: '问功名', content: '二与五应，五为君，二为臣，二五皆吉，是君臣相济也。有后车以载之象。' },
      { category: '问战征', content: '有曳柴伪遁之谋。' },
      { category: '问婚姻', content: '有桓少君鹿车共挽之风，必得贤妇，吉。' },
      { category: '问家宅', content: '有轮奂并美之象。' },
      { category: '问疾病', content: '必是胸腹作鸣，辘辘如车声，宜开通三焦，使气机舒展，自愈。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 64,
    position: 3,
    judgments: [
      { category: '占问时运', content: '宜镇静待时，躁动则凶。' },
      { category: '问战征', content: '宜会集海军，水陆并进，则凶者吉矣。' },
      { category: '问营商', content: '以舟运为利。' },
      { category: '问功名', content: '有涉川作楫之材。' },
      { category: '问婚姻', content: '《诗》云"造舟为梁，亲迎于渭"，迎娶则吉，往赘则凶。' },
      { category: '问疾病', content: '《艮》为狐，病由狐祟所致，宜涉川以避。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 64,
    position: 4,
    judgments: [
      { category: '占问时运', content: '有此大运，"贞吉，悔亡"，名利俱全。' },
      { category: '问战征', content: '率军远征，奏凯而还，得以荣邀赐命。' },
      { category: '问营商', content: '行商远出，财利丰盈。' },
      { category: '问功名', content: '声名远震，得承天宠。' },
      { category: '问婚姻', content: '三年可成。' },
      { category: '问家宅', content: '贞吉。' },
      { category: '问疾病', content: '"鬼方"二字不祥，三年后恐难保。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 64,
    position: 5,
    judgments: [
      { category: '占问时运', content: '运当全盛，百事皆吉。' },
      { category: '问战征', content: '《师》卦曰"师贞，丈人吉"，可并占之。' },
      { category: '问营商', content: '其营业必关系政府公干，或为军饷，或为军器，得沾朝廷之余泽，故吉。' },
      { category: '问功名', content: '有入觐天颜之象。' },
      { category: '问家宅', content: '此宅大吉，当邀旌赐之劳。' },
      { category: '问婚姻', content: '"君子好逑"，必得。' },
      { category: '问六甲', content: '生女，主贵。' }
    ]
  },
  {
    hexagramId: 64,
    position: 6,
    judgments: [
      { category: '占问时运', content: '《坎》难已平，众心欢乐，能知撙节，可以永保无咎。' },
      { category: '问战征', content: '此为得胜班师，饮酒策勋之时也。' },
      { category: '问营商', content: '已得厚利而归，从此量入为出，富可永保矣。' },
      { category: '问功名', content: '有得而复失之患。' },
      { category: '问疾病', content: '必是饮食不节所致。' },
      { category: '问讼事', content: '《序卦》曰"饮食必有讼"，知其讼必由于酗酒来也。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 42,
    position: 0,
    judgments: [
      { category: '占问时运', content: '迅雷烈风，正当运途振作之际，改旧换新，在此时也。' },
      { category: '问战征', content: '电逐风行，正可一鼓而平。' },
      { category: '问营商', content: '有利则贸易，无则改售，宜迅速，不宜迟缓。' },
      { category: '问功名', content: '风雷合益，大得志也。' },
      { category: '问疾病', content: '是肝木太盛之症，治宜损阳扶阴。' },
      { category: '问婚姻', content: '震男巽女，天然配合。' },
      { category: '问家宅', content: '此宅防有雷击风摧之患，完者宜修葺之改作之，朽者宜改作之。' },
      { category: '问讼事', content: '返躬自省，怒息气平，讼事自罢。' },
      { category: '问失物', content: '已经迁改变易，不可复得。' },
      { category: '问六甲', content: '单月男，双月女。' }
    ]
  },
  {
    hexagramId: 42,
    position: 1,
    judgments: [
      { category: '占问时运', content: '好运初交，可以与作大事，无不如意。吉。' },
      { category: '问战征', content: '兵队初交，即可一战以成大功，有吉无咎。' },
      { category: '问营商', content: '初次营业，资本既厚，经营亦大，可获大利，且能悠久无咎。' },
      { category: '问功名', content: '可望大魁天下，大吉。' },
      { category: '问家宅', content: '此宅新造，屋宇宽大，大吉无咎。' },
      { category: '问婚姻', content: '大吉。' },
      { category: '问讼事', content: '此讼为公众大事，非关一己私愤也。无咎。' },
      { category: '问行人', content: '在外正当谋事立业，一时未归。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 42,
    position: 2,
    judgments: [
      { category: '占问时运', content: '主得意之外财，且能世守，永吉。' },
      { category: '问战征', content: '古者行军先卜，出师必祷，此爻均吉，其战必克。"自外来也"，可由外而攻之也。' },
      { category: '问营商', content: '贝货即货币也，"十"，数之盈也；"或益之"者，疑有神助也。营商得此爻，必获厚利，永吉。' },
      { category: '问功名', content: '古者命相举贤，皆从枚卜，既得吉兆，其显可知，故曰永吉。' },
      { category: '问疾病', content: '祷之即愈。' },
      { category: '问婚姻', content: '《震》《巽》为长男长女，卜凤之兆，自昔称祥，百年好合，故得永吉。' },
      { category: '问家宅', content: '二至四为《坤》，《坤》为安，为土，有安宅之象。《坤》"利永贞"故曰，"永贞吉"。此宅可以久居也。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 42,
    position: 3,
    judgments: [
      { category: '占问时运', content: '运途多歉，以其素行诚实，人皆信之，可以无咎。' },
      { category: '问战征', content: '兵本凶事，又陷危地，幸众军同心戮力，得奔告大营，获救出险，无咎。' },
      { category: '问功名', content: '先苦后甘，先难后获。' },
      { category: '问营商', content: '谚云"欲求富，走险路"。' },
      { category: '问家宅', content: '此宅多凶，惟有中行之德，斯能逢凶化吉。' },
      { category: '问婚姻', content: '恐从丧服中成亲，然无咎也。' },
      { category: '问讼事', content: '须诉之上官，乃得准信，罢讼。' },
      { category: '问失物', content: '恐涉词讼。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 42,
    position: 4,
    judgments: [
      { category: '占问时运', content: '目下有难，宜择善地暂避。' },
      { category: '问战征', content: '宜退兵移营，急请救援。' },
      { category: '问营商', content: '宜禀告店主，改迁别地，另开市面。' },
      { category: '问功名', content: '不成，须改就别业。' },
      { category: '问家宅', content: '宜迁居。' },
      { category: '问婚姻', content: '须别寻媒妁。' },
      { category: '问失物', content: '不得。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 42,
    position: 5,
    judgments: [
      { category: '占问时运', content: '运得正中，吉。' },
      { category: '问战征', content: '罚必信，赏必公，战无不克，大吉。' },
      { category: '问营商', content: '以义为利，诚实相交，利益与共，以此为商，利益广矣。' },
      { category: '问功名', content: '实至名归，大吉。' },
      { category: '问家宅', content: '此为仁里德门，勿问而知为善人之室也，大吉。' },
      { category: '问婚姻', content: '非亲即友，必是旧交，"勿问元吉"。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 42,
    position: 6,
    judgments: [
      { category: '占问时运', content: '好运已退，贪心过甚，防有意外之祸。' },
      { category: '问战征', content: '不待添兵加饷，即可进击。' },
      { category: '问营商', content: '专求利己，所谓不夺不厌，必启争端，凶。' },
      { category: '问功名', content: '夺人之功以为名，其名必不久也，凶。' },
      { category: '问家宅', content: '此宅地位太高，有害无利，不可久居。' },
      { category: '问婚姻', content: '恐不能偕老。' },
      { category: '问讼事', content: '讼事无恒，转凶为吉。' },
      { category: '问行人', content: '防中途有盗劫之患，凶。' },
      { category: '问失物', content: '或已打破，不可得也。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 45,
    position: 0,
    judgments: [
      { category: '占问时运', content: '气运平顺，但能安不忘危，自得欢乐无忧。' },
      { category: '问战征', content: '兵凶器，战危事，惟能临事而惧，好谋而成，可无意外之虞也。' },
      { category: '问营商', content: '萃有财聚之象，然聚必有散，盈必有亏，亦理之循环，所当时时预防。' },
      { category: '问功名', content: '宜由武功得名。' },
      { category: '问婚姻', content: '匪寇婚媾，易每以寇婚对言，盖防兵祸，犹防女祸也。惟能预防，自可无咎。' },
      { category: '问家宅', content: '泽上于水，防有大水入屋之象。' },
      { category: '问疾病', content: '防胸腹有水胀之症，宜预为调治。' },
      { category: '问行人', content: '中途兵阻，一时难归。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 45,
    position: 1,
    judgments: [
      { category: '占问时运', content: '运当初交，一顺一逆，反复无常，得所救援，可以无咎。' },
      { category: '问功名', content: '忽荣忽辱，由于中心无主也。' },
      { category: '问营商', content: '有初无终，聚散不定，不能获利，仅可免咎而已。' },
      { category: '问战征', content: '统军出征，防有兵变之忧。' },
      { category: '问婚姻', content: '有始乱之，而终娶之之象。' },
      { category: '问疾病', content: '此病忽号忽笑，由于心神昏乱，往而求医，必无咎也。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 45,
    position: 2,
    judgments: [
      { category: '占问时运', content: '运得正中，吉。' },
      { category: '问功名', content: '可望汲引而进。' },
      { category: '问营商', content: '"引"，牵引也，想是合众生意，必可获吉，但须答愿酬神。' },
      { category: '问战征', content: '古者出师必祭，于内曰类，于野曰冯是也，盖祭神以誓师也。吉。' },
      { category: '问婚姻', content: '二应于五，是二五订婚也，故曰"引吉"。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 45,
    position: 3,
    judgments: [
      { category: '占问时运', content: '运途平平，无可获利也。' },
      { category: '问功名', content: '功名不利，反被人鄙。' },
      { category: '问营商', content: '货物虽多，不售可嗟，何所获利？惟转运他处，可得无咎。' },
      { category: '问战征', content: '有兵而不得其用，反致怨嗟，在主将无御众之才也。' },
      { category: '问婚姻', content: '未免兴怨偶之嗟。' },
      { category: '问疾病', content: '胸膈积滞作痛，致声声叫苦，以两便不利所致，利则可以无咎。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 45,
    position: 4,
    judgments: [
      { category: '占问时运', content: '气运大好，无往不吉，但于地位不当，宜慎。' },
      { category: '问功名', content: '大吉，但恐德不称位。' },
      { category: '问营商', content: '得财得利大吉；宜作退一步想，方能有始有终。' },
      { category: '问战征', content: '战胜攻克，大吉大利；防功高震主，谤毁随之。' },
      { category: '问婚姻', content: '四与初为正应，即为正配，吉；但门第恐不甚相当也。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 45,
    position: 5,
    judgments: [
      { category: '占问时运', content: '得位得权，运当全盛，自可无咎。' },
      { category: '问营商', content: '财则聚矣，信尚未也，能守其正，业自可久。' },
      { category: '问功名', content: '位则高矣，望则隆矣，更宜修德履正。' },
      { category: '问战征', content: '三军既集，大业可成，更宜推诚相与，可保永终。' },
      { category: '问婚姻', content: '位尊金多，可称贵婿。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 45,
    position: 6,
    judgments: [
      { category: '占问时运', content: '人必年老运退，极至穷极悲苦，为可悯也。然必有怜而救援者，得以无咎。' },
      { category: '问营商', content: '孤客无伴，途穷日暮，大可悲虑，幸而得救，无咎。' },
      { category: '问功名', content: '时衰运极，难望成名。' },
      { category: '问战征', content: '有军众叛离，主将孤立之象。' },
      { category: '问婚姻', content: '有生离死别之悲。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 46,
    position: 0,
    judgments: [
      { category: '占问时运', content: '得春生之气，运途当日进日盛。' },
      { category: '问功名', content: '有指日高升之象。' },
      { category: '问营商', content: '积累锱铢，可渐成富饶巨室。' },
      { category: '问战征', content: '宜平地架列木梯，可以登高攻城。' },
      { category: '问婚姻', content: '顺为妇德，有以妾作嫡之象。' },
      { category: '问家宅', content: '此宅初时低小，近将改造大厦。' },
      { category: '问疾病', content: '是肝木春旺之症，若不顺气宽养，势将日积日重，颇为可危。' },
      { category: '问货价', content: '有逐步腾贵之象。' },
      { category: '问秋收', content: '风雨调顺，年谷丰登。' },
      { category: '问行人', content: '一路顺风，且积蓄颇丰。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 46,
    position: 1,
    judgments: [
      { category: '占问时运', content: '运途大顺，求名求利，无不如下志，大吉。' },
      { category: '问功名', content: '一举成名，大吉。' },
      { category: '问营商', content: '货价高升，大可获利。' },
      { category: '问战征', content: '升高窥望，得识敌情，一战可得胜也，大吉。' },
      { category: '问婚姻', content: '两姓允合，大吉。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 46,
    position: 2,
    judgments: [
      { category: '占问时运', content: '运途得中，必有喜事临门。' },
      { category: '问营商', content: '商业全凭信实，有信卖买进出，无诈无虞，自能永远，且可获利。' },
      { category: '问功名', content: '定有泥金报喜。' },
      { category: '问战征', content: '出师必祭，信为兵家之要，得信则三军一心，无战不克矣。' },
      { category: '问婚姻', content: '二五交孚，阴阳合德，大喜。' },
      { category: '问六甲', content: '单月生男，双月生女。' }
    ]
  },
  {
    hexagramId: 46,
    position: 3,
    judgments: [
      { category: '占问时运', content: '目下运途恰好，渐进渐盛。' },
      { category: '问营商', content: '市廛谓之趋虚，言就虚地，会集货物而成市邑，可见商业日盛也。' },
      { category: '问功名', content: '《升》本发达之象，初方"允"，二则"孚"，至三则已升而在上，可无疑也。' },
      { category: '问战征', content: '经此兵燹，城邑空虚，"升虚邑"，夺取空城矣。' },
      { category: '问疾病', content: '必是虚弱之症无疑。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 46,
    position: 4,
    judgments: [
      { category: '占问时运', content: '事顺适，吉而无咎。' },
      { category: '问战征', content: '古者祷战，祈克于上帝，然后接敌，此即用享之义也。享而后战，其必克矣，吉。' },
      { category: '问营商', content: '货物之生也，多取于山林川谷之间。祭法，民之取财用者，必祭之。谓祭之可获利也。吉。' },
      { category: '问功名', content: '"亨于岐山"，易侯而王，大吉之兆。' },
      { category: '问疾病', content: '宜祷。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 46,
    position: 5,
    judgments: [
      { category: '占问时运', content: '平生志愿，无不得遂，大吉之兆。' },
      { category: '问功名', content: '拾级而登，荣宠已极。' },
      { category: '问营商', content: '五为中数，凡营财之道，不宜过盈，以得中为吉，故曰"贞吉"。' },
      { category: '问战征', content: '凡攻城，必用梯阶，所以升高也。城必可克，故吉。' },
      { category: '问婚姻', content: '五与二相应，爻曰"升阶"，有攀结高亲之象，故二曰"有喜"。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 46,
    position: 6,
    judgments: [
      { category: '占问时运', content: '好运已过，且待后运重来，可以得利。' },
      { category: '问战征', content: '有率军夜进，误入幽谷之象，利于息，待天明可出险也。' },
      { category: '问营商', content: '防有人财两失之患。' },
      { category: '问功名', content: '《升》至于上，功名已显，防身后萧条。' },
      { category: '问婚姻', content: '恐不得偕老。' },
      { category: '问六甲', content: '生女，恐不育。' }
    ]
  },
  {
    hexagramId: 47,
    position: 0,
    judgments: [
      { category: '占问时运', content: '困穷至此，宜自安命。' },
      { category: '问战征', content: '是为孤城危急之时，惟竭力图存，生死在所不计也。' },
      { category: '问功名', content: '名成则身难保，身存则名恐败，惟善自处之。' },
      { category: '问营商', content: '资财既竭，时事又危，爻取往凶来吉，不如归来，得可免困。' },
      { category: '问婚姻', content: '《象》曰"刚揜"，男必天命，女必守寡。易位为节，女必能守节成名。' },
      { category: '问家宅', content: '宅中有枯井，防致损命。' },
      { category: '问讼事', content: '不特讼不能直，且防因讼损命。' },
      { category: '问行人', content: '在外困苦不堪，且有生命之忧。' },
      { category: '问疾病', content: '肾水亏弱，症象已危。' },
      { category: '问失物', content: '坠入深潭之下，不可复得。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 47,
    position: 1,
    judgments: [
      { category: '占问时运', content: '厄运初来，渐入苦境，三年后可望顺适。' },
      { category: '问战征', content: '兵陷险地，如司马氏军入葫芦谷。' },
      { category: '问营商', content: '是贩运材木生意，木在深谷，困于发运。' },
      { category: '问功名', content: '卑下之象，名必不显。' },
      { category: '问疾病', content: '"株木""幽谷"，有棺椁山丘之象，凶。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 47,
    position: 2,
    judgments: [
      { category: '占问时运', content: '爻象富贵，运非不佳，惜其不知撙节，反为富贵所困也。' },
      { category: '问战征', content: '防有因酒食误事，遂致败北，主将困而招褫绯之辱。' },
      { category: '问营商', content: '因商起家，膏粱文绣，足以荣亨，但再往则有凶也。' },
      { category: '问功名', content: '功名已显，但恐为功名所困耳。' },
      { category: '问疾病', content: '是逸乐过甚，醉饱无度。宜祷。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 47,
    position: 3,
    judgments: [
      { category: '占问时运', content: '命运尴尬，进退两难，凶。' },
      { category: '问战征', content: '上布矢石，下设陷阱，前进则身多危，后退则膏已陷，大凶之象。' },
      { category: '问功名', content: '身将不保，奚以名为？' },
      { category: '问营商', content: '卜例，妻为财爻，官即命官，既丧其命，又失其财，大凶。' },
      { category: '问婚姻', content: '防有悼亡之戚。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 47,
    position: 4,
    judgments: [
      { category: '占问时运', content: '运非不好，但地位不当，致多疑惧，未免为人所鄙。' },
      { category: '问战征', content: '迟缓不进，以致车辙靡乱，幸得救援，不至终败。' },
      { category: '问营商', content: '办事不力，致运载货物，中途失陷，急救得全。' },
      { category: '问功名', content: '始困终亨。' },
      { category: '问疾病', content: '病势迟缓，已非一日，想是驰驱劳顿致损。爻曰"有终"，其命永终矣。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 47,
    position: 5,
    judgments: [
      { category: '占问时运', content: '命运刚强，刚则必折，防有损伤。作事宜筹度舒迟，乃可变祸为福。' },
      { category: '问战征', content: '主败，须徐缓收兵，可图后胜。' },
      { category: '问营商', content: '货物底面，防有溃烂损伤，须拆看收拾，徐徐出售，无咎。' },
      { category: '问功名', content: '防富贵后，致有刑伤，宜祷。' },
      { category: '问疾病', content: '病在头足，徐徐调养，求神医治，可愈。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 47,
    position: 6,
    judgments: [
      { category: '占问时运', content: '目下苦运已终，本可脱难，缘其心神不安，未能立作变计，一旦改悔，即可获吉。' },
      { category: '问功名', content: '困穷既久，行将风云变动，一举成名。吉。' },
      { category: '问营商', content: '"困于葛藟"，必是包扎货物，久不得售，今当时价发动，即可获利。吉。' },
      { category: '问战征', content: '爻曰"征吉"，《象》曰"吉行"，其中虽有灾悔，定可因悔得吉也。' },
      { category: '问疾病', content: '此病必缠绵已久，神志不安，当迁地静养，自然痊愈。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 48,
    position: 0,
    judgments: [
      { category: '占问时运', content: '目下交木水相生之运，正可相助成事。' },
      { category: '问战征', content: '有水灭木之象，水军有厄，宜劳力相助，可以出险。' },
      { category: '问功名', content: '木上有水，有得春雨发生之象，功名可望。' },
      { category: '问营商', content: '有利过于本之象，吉。' },
      { category: '问家宅', content: '此屋栋柱，恐有水湿溃烂之患，宜急修葺。' },
      { category: '问婚姻', content: '坎男巽女，男上于女，阴阳之正也，吉。' },
      { category: '问疾病', content: '肾水暴溢，宜急调治。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 48,
    position: 1,
    judgments: [
      { category: '占问时运', content: '为时过运衰，不为世用。' },
      { category: '问战征', content: '有兵器朽旧，不克制胜之患。' },
      { category: '问营商', content: '货物陈腐，不可贩售。' },
      { category: '问功名', content: '年老无用。' },
      { category: '问疾病', content: '是旧症也，不治。' },
      { category: '问六甲', content: '生男，防难育。' }
    ]
  },
  {
    hexagramId: 48,
    position: 2,
    judgments: [
      { category: '占问时运', content: '所得者小，所失者大矣。' },
      { category: '问战征', content: '误中敌计，军入幽谷，致破釜缺养而不得出。' },
      { category: '问功名', content: '弋获虚名，其何能久？' },
      { category: '问营商', content: '为贪意外之财，致失本分之利。' },
      { category: '问疾病', content: '是下漏之症，医治可愈。' },
      { category: '问六甲', content: '生男，防此儿有残疾。' }
    ]
  },
  {
    hexagramId: 48,
    position: 3,
    judgments: [
      { category: '占问时运', content: '怀才不用，命为之也。' },
      { category: '问战征', content: '兵器既修，士卒可用，惜无主将，以致士气颓丧，为可惜也。' },
      { category: '问营商', content: '明见货物辐辏，可以获利，不知贩运，徒诿无用耳。' },
      { category: '问功名', content: '有才无命，为世所弃；两年后至五爻，可望登用。' },
      { category: '问疾病', content: '必是心神不安之症，宜饮井泉可愈。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 48,
    position: 4,
    judgments: [
      { category: '占问时运', content: '正当运途改变之时，宜自修饬，不特无咎，可望上进。' },
      { category: '问战征', content: '诗云"修我矛戟，与子偕作"，在此时也。' },
      { category: '问营商', content: '宜整理旧业，自可获利。' },
      { category: '问功名', content: '修身立名，二三年后，可大得志。' },
      { category: '问六甲', content: '有弄瓦之象，生女。' }
    ]
  },
  {
    hexagramId: 48,
    position: 5,
    judgments: [
      { category: '占问时运', content: '家道必寒，幸运得其时，可望进用。' },
      { category: '问营商', content: '井出寒泉，喻言财源之长也，可望获利。' },
      { category: '问功名', content: '品行中正，可享鼎养之荣。' },
      { category: '问婚姻', content: '家风清白，同甘共苦，夫妇之正也。' },
      { category: '问疾病', content: '是外寒内热之症，宜服寒凉之剂。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 48,
    position: 6,
    judgments: [
      { category: '占问时运', content: '功德在世，信用在人，"大成""元吉"，运之极盛者也。' },
      { category: '问功名', content: '有大用大受之象，非一官一邑之微也。' },
      { category: '问营商', content: '商务会集，利益浩繁，可久可大，无往不吉。' },
      { category: '问战征', content: '凡军将发则撤幕，"勿幕"，即撤幕前进也。一战功成，故曰"大成"。吉。' },
      { category: '问疾病', content: '幕亦作暮，言旦夕可即愈也，吉。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 49,
    position: 0,
    judgments: [
      { category: '占问时运', content: '譬如有水之处，忽而出火，是气运之反常也，宜顺时改变，乃吉。' },
      { category: '问战征', content: '屯兵之地，防溪谷林木间着火，最宜谨慎。' },
      { category: '问营商', content: '兑为金，金入火则金熔矣，消耗之象。宜迁地贸易，乃可无咎。' },
      { category: '问功名', content: '龙门变化，烧尾之象，吉。' },
      { category: '问婚姻', content: '卦体上泽下火，泽有火，是水被火所制，夫为妻所制也。革者有出妻改娶之象。' },
      { category: '问家宅', content: '此宅防有火灾，急宜改迁。' },
      { category: '问疾病', content: '是肾水枯涸，肝火上炎之症，宜改延良医，顺时调养。' },
      { category: '问讼事', content: '此事本无中生有，灾自外来。宜改易讼词，揆度时日，其辩自明，其讼得直。' },
      { category: '问六甲', content: '生女。凡占此卦，皆女象，惟出月过时，变则成男。' }
    ]
  },
  {
    hexagramId: 49,
    position: 1,
    judgments: [
      { category: '占问时运', content: '好运初来，犹宜固守，不可妄动。' },
      { category: '问战征', content: '兵队初交，宜先立巩固之基，未可妄事更张也。' },
      { category: '问营商', content: '商业初成，宜先立巩固之基，未可妄事更张也。' },
      { category: '问功名', content: '初出求名，其才未充，其时尚早，必待四五年后，方能变化腾达。' },
      { category: '问婚姻', content: '男女之年尚幼，未可拟亲，俟三年后，可以成就。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 49,
    position: 2,
    judgments: [
      { category: '占问时运', content: '行土运可以兴事立业，大佳。' },
      { category: '问战征', content: '宜择戊己日，行军接战，必可获胜。' },
      { category: '问营商', content: '于摄绵土生意最宜。凡新立买卖，必择土日开市大吉。' },
      { category: '问功名', content: '戊年或交土运必可成名。' },
      { category: '问婚姻', content: '可称嘉偶。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 49,
    position: 3,
    judgments: [
      { category: '占问时运', content: '当此有事之秋，一不谨慎，则有凶危立至，宜再三筹度而行，方得众人信服。从此而往，时运大佳。' },
      { category: '问战征', content: '兵，凶事也，危事也，发军之日，先宜号令申明，斯信则人任，往无不利也。' },
      { category: '问营商', content: '未计其盈，宜先防其亏。贸易之道，以信为主，必得众商信从，乃可获利。' },
      { category: '问功名', content: '必三试可就。' },
      { category: '问婚姻', content: '得三人为媒，可成。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 49,
    position: 4,
    judgments: [
      { category: '占问时运', content: '曰"悔亡"，曰"吉"，是灾悔既亡，而吉运来也。万事皆可改作，无不如志。' },
      { category: '问战征', content: '改旗易辙，重振军令，可以开国，可以辟地，可以转败为胜，吉。' },
      { category: '问营商', content: '必是旧业重兴，大可得利。' },
      { category: '问功名', content: '改武就文，可以成名。' },
      { category: '问婚姻', content: '不利原聘，利重婚。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 49,
    position: 5,
    judgments: [
      { category: '占问时运', content: '如此大运，非"首出庶物"之大人，不克当此。若常人占得此爻，必能光前裕后，大振家声。' },
      { category: '问战征', content: '虎臣桓桓，威声早著，可不战而来降也。' },
      { category: '问营商', content: '白虎属西方之宿，西属秋，防货价至秋，大有变动。宜先订定价，自可获利，吉。' },
      { category: '问功名', content: '《乾》曰"云从龙，风从虎"，言各得其际会也，吉。' },
      { category: '问婚姻', content: '俗以白虎为不利，婚事未占先孚，犹言未嫁而先从也，为女不贞之象。' },
      { category: '问六甲', content: '象本生女，一变则为男。' }
    ]
  },
  {
    hexagramId: 49,
    position: 6,
    judgments: [
      { category: '占问时运', content: '运当全盛，光华显著，惟宜守成，无事纷更。' },
      { category: '问战征', content: '军用多取兽名，兕甲虎贲，皆用之以焕其文而扬其威也。上六爻已终，谓战已定，宜罢兵退守，不可前往。' },
      { category: '问营商', content: '创业以来，有名有利，已臻美备，此后宜知足谨守。' },
      { category: '问功名', content: '上居卦之终，功名早极，劝令功成身退，所谓"人死留名，豹死留皮"也。' },
      { category: '问婚姻', content: '上与三应，九三阳也，上六阴也，三日"三就，有孚"，当再三遂合，自可成就，吉。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 50,
    position: 0,
    judgments: [
      { category: '占问时运', content: '木上升，火上炎，有日进日上之象，大可成事立业。' },
      { category: '问战征', content: '践主帅之位，率三军之命，正有如火如荼之势，马到功成，此其时也。' },
      { category: '问功名', content: '贵不可言。' },
      { category: '问营商', content: '木生火，鼎烹物，得其自然之利，可不劳而获也。' },
      { category: '问家宅', content: '防有祝融之灾，宜谨慎。' },
      { category: '问疾病', content: '必是肝火上冲之症，宜以泄肝顺气治之。' },
      { category: '问婚姻', content: '爻为相生，鼎为重器，必是正配，又得内助。' },
      { category: '问讼事', content: '火势正旺，一时未得罢休，宜定心安命，自然得直。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 50,
    position: 1,
    judgments: [
      { category: '占问时运', content: '有因祸得福，转败为成之兆。' },
      { category: '问营商', content: '初次小损，后获大利，且有商地成家之象。' },
      { category: '问功名', content: '有荣封之喜。' },
      { category: '问婚姻', content: '是为小妾，必生贵子。' },
      { category: '问疾病', content: '腹有宿积，利在下泻，无咎。' },
      { category: '问六甲', content: '生男，宜于庶出。' }
    ]
  },
  {
    hexagramId: 50,
    position: 2,
    judgments: [
      { category: '占问时运', content: '运途正直，奸邪自远，无往不吉。' },
      { category: '问功名', content: '"实"者，实获也。名成之后，多有忌嫉者之，宜慎防之。' },
      { category: '问营商', content: '曰"鼎有实"，即所谓囊有财也，宜防匪人盗窃。' },
      { category: '问婚姻', content: '二与五应，五变为姤，《姤》曰"勿用娶女"。"仇"，怨偶也，"不我能即"，是不娶也。' },
      { category: '问疾病', content: '阳为实，是实热之症，宜对症调治，吉。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 50,
    position: 3,
    judgments: [
      { category: '占问时运', content: '运非不佳，但妄意变改，以致所行辄阻，是以有悔也。' },
      { category: '问功名', content: '目下虽美不售，改就他途，反多灾悔。' },
      { category: '问营商', content: '业有改迁，致货物呆滞，须俟三年后，可复兴也。' },
      { category: '问战征', content: '兵队有变，恐粮食被劫。' },
      { category: '问婚姻', content: '恐有悔婚改适之变，所谓"失其义"也。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 50,
    position: 4,
    judgments: [
      { category: '占问时运', content: '运途颠覆，小则损折，大则刑戮，甚为可惧。' },
      { category: '问战征', content: '有损兵折将之祸。' },
      { category: '问功名', content: '未成者难望，已成者必败。' },
      { category: '问营商', content: '资财覆灭，且有身命之忧。' },
      { category: '问婚姻', content: '必男女均有足疾，且于家道不利。' },
      { category: '问六甲', content: '生女，防有残疾。' }
    ]
  },
  {
    hexagramId: 50,
    position: 5,
    judgments: [
      { category: '占问时运', content: '运途贵重，贞守得福。' },
      { category: '问功名', content: '大贵之象。' },
      { category: '问营商', content: '信息明了，贩运便捷，可获厚利。' },
      { category: '问战征', content: '防有洞胸贯耳之灾。' },
      { category: '问婚姻', content: '"黄耳""金铉"，贵兆也，主联姻贵族。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 50,
    position: 6,
    judgments: [
      { category: '占问时运', content: '温润和平，无往不利。' },
      { category: '问战征', content: '六师既张，进无不克，大吉。' },
      { category: '问功名', content: '位趋鼎铉，大吉。' },
      { category: '问营商', content: '美玉待沽，其价必善，无往不利也。' },
      { category: '问婚姻', content: '如金如玉，大吉。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 51,
    position: 0,
    judgments: [
      { category: '占问时运', content: '运当发动，防其过盛，宜谨慎敛抑，可免丧失。' },
      { category: '问战征', content: '有连日接战之象，须临时知惧。' },
      { category: '问营商', content: '震雷出滞，滞者，积滞货件，一时皆得出而销售。《象》曰"洊雷，震"，知有一二番好卖买也。' },
      { category: '问功名', content: '雷者生发之气，"洊雷"，则有连捷之象。' },
      { category: '问家宅', content: '宅基防有动作，上爻曰"于其邻"，必近邻有兴造之役，宜祭祷。' },
      { category: '问婚姻', content: '《震》为长男，旁通为《巽》，《巽》长女，佳偶也。' },
      { category: '问疾病', content: '是肝木太盛之症，防有变动，可惧。' },
      { category: '问六甲', content: '生男。' },
      { category: '问失物', content: '一动乃见。' }
    ]
  },
  {
    hexagramId: 51,
    position: 1,
    judgments: [
      { category: '占问时运', content: '好运新来，万事皆可振作。先难后易，先忧后乐，百般获吉。' },
      { category: '问战征', content: '初时敌势奋勇，可惧，后得胜捷，可喜。' },
      { category: '问营商', content: '商业新兴，百般可惧，待经营成就，既获利益，随时欢乐，无不得吉。' },
      { category: '问功名', content: '谚云"吃甚苦中苦，方为人上人"，自有先难后获之象。' },
      { category: '问婚姻', content: '此婚始有忧惧，后得欢乐，吉。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 51,
    position: 2,
    judgments: [
      { category: '占问时运', content: '运途尴尬，不无丧失，幸可复得。' },
      { category: '问战征', content: '一受惊恐，粮饷俱失，移营高阜，危殆已极，幸而得之，未为胜也。' },
      { category: '问营商', content: '得失相偿，然亦危矣。' },
      { category: '问功名', content: '既得患失，既失患得，品亦卑矣。' },
      { category: '问婚姻', content: '主夫妻不睦，防有携资潜逃之患。无须追究，缓即来归。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 51,
    position: 3,
    judgments: [
      { category: '占问时运', content: '运途不当，宜谨益加谨，谨慎而行，必无灾咎。' },
      { category: '问战征', content: '《震》卦全体，皆处危惧之地，"苏苏"，谓死而重生，此战难望获胜，仅得逃生而已。' },
      { category: '问营商', content: '销路不得其当，宜改行别路，可免耗失。' },
      { category: '问功名', content: '"位不当"，谓才不胜任也，虽得亦危。' },
      { category: '问婚姻', content: '门户不当。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 51,
    position: 4,
    judgments: [
      { category: '占问时运', content: '正运已过，精力既衰，虽欲振作，终觉致远恐泥也。' },
      { category: '问战征', content: '战争之交，所谓"一鼓作气"，至三至四，则勇已衰，若鲁莽前进，防车马陷入泥淖，被敌所困。' },
      { category: '问营商', content: '商业亦佳，但挥财如泥沙，恐终不能积蓄也。' },
      { category: '问功名', content: '有曳尾泥涂之象，宜退不宜进也。' },
      { category: '问婚姻', content: '遂则必遂，惟相隔如云泥，或名分有上下之别，或道路有南北之分。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 51,
    position: 5,
    judgments: [
      { category: '占问时运', content: '运得中正，虽经历多险，终可完成大事。' },
      { category: '问战征', content: '贩货往来，保无危厉。万万曰亿，财利甚巨，或小有挫损，大必无丧也。' },
      { category: '问功名', content: '此功名必从患难来，可占大用，成大功。' },
      { category: '问婚姻', content: '防婚姻完后，家有祭葬大事。' },
      { category: '问六甲', content: '生男，主贵。' }
    ]
  },
  {
    hexagramId: 51,
    position: 6,
    judgments: [
      { category: '占问时运', content: '时当震惊将定，妄进则凶，静守则吉。' },
      { category: '问功名', content: '位高必危，正宜退守，可保无咎。' },
      { category: '问营商', content: '变动已定，不可过贪，见他人亏折，更宜谨守，乃得无咎。' },
      { category: '问战征', content: '时本一战可定，闻邻近营队有变，急宜往救，不得坐视。' },
      { category: '问婚姻', content: '《震》与《巽》有夫妇之象，想近时即有媒妁来言。' },
      { category: '问六甲', content: '生男，防有目疾。' }
    ]
  },
  {
    hexagramId: 52,
    position: 0,
    judgments: [
      { category: '占问时运', content: '时运平平，宜退守，不宜妄动。' },
      { category: '问战征', content: '宜各守疆界，不得驰域外之想。' },
      { category: '问营商', content: '宜确守本业，不得贪意外之财。' },
      { category: '问功名', content: '宜守旧，毋干幸进。' },
      { category: '问家宅', content: '此宅地位虽狭，不可妄行改造。' },
      { category: '问婚姻', content: '命由前定，不可贪富嫌贫。' },
      { category: '问讼事', content: '不可以曲作直。' },
      { category: '问失物', content: '当在原处寻之，可得。' },
      { category: '问疾病', content: '止者终也，带病延年而已。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 52,
    position: 1,
    judgments: [
      { category: '占问时运', content: '运途初交，宜守稳步，不可妄进，自得无咎。' },
      { category: '问战征', content: '屯军山足，宜静守，不宜妄动。' },
      { category: '问营商', content: '宜知足。' },
      { category: '问功名', content: '初步虽微，不失其正。' },
      { category: '问婚姻', content: '百年好合，无咎。' },
      { category: '问六甲', content: '生女，防有足疾。' }
    ]
  },
  {
    hexagramId: 52,
    position: 2,
    judgments: [
      { category: '占问时运', content: '运途有阻，宜裹足不前，不宜随心而动。' },
      { category: '问战征', content: '止，不进也，坚守不动，又无外援，是以戚戚也。' },
      { category: '问营商', content: '货物止而不售，甚为可忧。' },
      { category: '问功名', content: '不得寸进，又苦无大力之援。' },
      { category: '问疾病', content: '"腓"，病也，《诗》云"百卉具腓"，为秋风所虐也。此病亦必是秋症，恐非药力所能救援也。甚为可忧。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 52,
    position: 3,
    judgments: [
      { category: '占问时运', content: '运途顺逆，皆当顺时，强制者危。' },
      { category: '问战征', content: '两军相对，各争疆界，安得划界自守乎？自守者危矣。' },
      { category: '问营商', content: '货物务在流通，乃可获利，况今万国通商，输入输出，互相交易，若闭关自限，必穷之道也，可危甚矣。' },
      { category: '问功名', content: '专守一艺者，必非大器。' },
      { category: '问婚姻', content: '婚姻之道，本由天合，若苟守门户，不能成两姓之欢。' },
      { category: '问六甲', content: '生女，防难产。' }
    ]
  },
  {
    hexagramId: 52,
    position: 4,
    judgments: [
      { category: '占问时运', content: '运途柔顺，能保其身，自得无咎。' },
      { category: '问战征', content: '难望进取，但于我身无所伤败，咎复何有？' },
      { category: '问营商', content: '只能保本。' },
      { category: '问功名', content: '无得无失。' },
      { category: '问疾病', content: '是带病延年之症。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 52,
    position: 5,
    judgments: [
      { category: '占问时运', content: '运得中正，故无悔忧。' },
      { category: '问战征', content: '行军之际，最忌谣言妄作，惑乱军心，"艮其辅"使不妄言，斯号令严明，所向无敌矣。' },
      { category: '问营商', content: '商情犹如军情，消息不容漏泄，"艮其辅"，则言得其要矣。' },
      { category: '问功名', content: '巧言必黜，昌言则拜，言得中正，立谈可取卿相也。' },
      { category: '问疾病', content: '必是牙关紧闭，口不出声，得能发声，病乃可治。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 52,
    position: 6,
    judgments: [
      { category: '占问时运', content: '运途至此，无可复进，惟厚益加厚，是以得吉。' },
      { category: '问战征', content: '地位至上已极，要在兵力加厚，无不获吉。' },
      { category: '问营商', content: '是上手生意，价高物美，获利必厚。' },
      { category: '问功名', content: '必应上选，吉。' },
      { category: '问婚姻', content: '吉。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 53,
    position: 0,
    judgments: [
      { category: '占问时运', content: '如木在高山，得逢春生发之象。' },
      { category: '问战征', content: '防三军前进，在深山茂林之处，有敌兵埋伏。' },
      { category: '问营商', content: '山藏货财，木能生发，且《巽》为商，利市三倍，得此卦象，自必能逐渐得利也。' },
      { category: '问功名', content: '足膺贤才之选。' },
      { category: '问婚姻', content: '必是贤德淑女，是以"君子好逑"。' },
      { category: '问家宅', content: '必是德门仁里，君子居之。' },
      { category: '问疾病', content: '是木克土之症，宜安居调养。' },
      { category: '问六甲', content: '望前生者男，望后生者女。' }
    ]
  },
  {
    hexagramId: 53,
    position: 1,
    judgments: [
      { category: '占问时运', content: '人微年少，运途初行，虽危无咎。' },
      { category: '问战征', content: '屯军江干，防有危厉，幸有谋言来告，得以免咎。' },
      { category: '问营商', content: '货物交易，防有小人从中作难，因约言早成，得以无害。' },
      { category: '问功名', content: '鸿运亨通，初虽在下，自有渐进之象。' },
      { category: '问婚姻', content: '女长男少，幼言既定，当以待年而嫁，无咎也。' },
      { category: '问家宅', content: '此宅临水，防小人有疾厄，然无大咎。' },
      { category: '问疾病', content: '不利小人，大人无咎。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 53,
    position: 2,
    judgments: [
      { category: '占问时运', content: '既得安乐，又得醉饱无忧，吉。' },
      { category: '问战征', content: '兵食充足，军心欢悦，自有安似磐石之象。' },
      { category: '问营商', content: '二爻居《巽》之中，《巽》为商，为利。就爻辞言"干"进"磐"，有渐进渐高之势，吉。' },
      { category: '问功名', content: '有嘉宾宴乐之象，成名必矣，吉。' },
      { category: '问婚姻', content: '二与五相应，即以二五为婚；二五皆吉，可咏百年偕老矣。' },
      { category: '问家宅', content: '此宅地基巩固，一门和乐，吉。' },
      { category: '问疾病', content: '饮食过度所致，宜消食安胃，病即日可愈。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 53,
    position: 3,
    judgments: [
      { category: '占问时运', content: '运途不正，防有外祸。' },
      { category: '问战征', content: '利于守御，不利往征。' },
      { category: '问营商', content: '难望获利，防有盗劫之虞。' },
      { category: '问功名', content: '惟从事军政，可以得名。' },
      { category: '问婚姻', content: '防有始乱终离之憾。' },
      { category: '问家宅', content: '此宅于生产不利。' },
      { category: '问疾病', content: '妇人生产，恐母子不能两全。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 53,
    position: 4,
    judgments: [
      { category: '占问时运', content: '运失其正，但以顺自处，随遇得安，亦可无咎。' },
      { category: '问战征', content: '得其倚角，敌势已衰。' },
      { category: '问营商', content: '聊有所得，差足免咎。' },
      { category: '问功名', content: '从事角逐，所得亦微。' },
      { category: '问婚姻', content: '此宅多寡居之妇，有遇人不淑之感。' },
      { category: '问疾病', content: '病在肝木太盛，宜顺气调养。' },
      { category: '问行人', content: '在外失年，聊以将顺容身，一时不归。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 53,
    position: 5,
    judgments: [
      { category: '占问时运', content: '运途中正，三年后，无往不利，吉。' },
      { category: '问战征', content: '屯军大阜，三年后，所向无敌，吉。' },
      { category: '问营商', content: '目下难望获利，至上爻自可独占厚利，盖在三岁后也。' },
      { category: '问功名', content: '三年后必成。' },
      { category: '问婚姻', content: '得子稍迟，吉。' },
      { category: '问家宅', content: '宅在大阜之间，吉。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 53,
    position: 6,
    judgments: [
      { category: '占问时运', content: '气运正盛，可出而用也，吉。' },
      { category: '问战征', content: '从平陆进军，威仪显赫，攻无不克。' },
      { category: '问营商', content: '货美价高，定可获利。' },
      { category: '问功名', content: '出而用世，可以仪表天下。' },
      { category: '问婚姻', content: '吉。' },
      { category: '问家宅', content: '此宅地位崇高，瞻观有耀，吉。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 54,
    position: 0,
    judgments: [
      { category: '占问时运', content: '一时发动，恐难持久。' },
      { category: '问战征', content: '地雷陡发，足以制胜，恐一胜以后，兵力疲敝，无以保终。' },
      { category: '问营商', content: '货价升动，卖客喜悦，但恐不能图终。' },
      { category: '问功名', content: '进不以道，防有后悔。' },
      { category: '问婚姻', content: '徒恋一时情欲之私者，难期百年偕老也。' },
      { category: '问家宅', content: '地磐有动，已嫁之妇，不宜同居母家。' },
      { category: '问疾病', content: '"永终"二字，独于占病不利，显见命限已终。' },
      { category: '问讼事', content: '可以终结。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 54,
    position: 1,
    judgments: [
      { category: '占问时运', content: '运途低微，祇可依人成事而已。' },
      { category: '问战征', content: '非主帅也，能以偏帅制胜，吉。' },
      { category: '问营商', content: '不能自主，听命而行，幸得获利，吉。' },
      { category: '问功名', content: '偏禅之位。' },
      { category: '问婚姻', content: '此婚始有忧惧，后得欢乐，吉。' },
      { category: '问六甲', content: '生女，防有足疾。' }
    ]
  },
  {
    hexagramId: 54,
    position: 2,
    judgments: [
      { category: '占问时运', content: '运途不正，宜幽贞自守。' },
      { category: '问战征', content: '能察幽窥微，有料敌如神之妙。' },
      { category: '问营商', content: '以其窥察商情，有独见之明，颇有暗得之利。' },
      { category: '问功名', content: '以高尚不仕为贵。' },
      { category: '问婚姻', content: '此女宜作偏房，若在嫡室，恐反目不和。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 54,
    position: 3,
    judgments: [
      { category: '占问时运', content: '运途尴尬，受人抑制，是宜忍耐，后可得伸。' },
      { category: '问战征', content: '待时可愈。' },
      { category: '问营商', content: '货价低落，不能获利，过后可望提升。' },
      { category: '问功名', content: '所得卑微。' },
      { category: '问婚姻', content: '必非正娶。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 54,
    position: 4,
    judgments: [
      { category: '占问时运', content: '须知顺时而动，行运有时，躁进无益。' },
      { category: '问战征', content: '最宜审时度势，无取躁急轻进，致损兵力。' },
      { category: '问营商', content: '待时得价，自可获利。' },
      { category: '问功名', content: '躁进必败。' },
      { category: '问婚姻', content: '待年而归。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 54,
    position: 5,
    judgments: [
      { category: '占问时运', content: '事事谦抑，不敢自夸，不敢自满，运途得中，是以吉也。' },
      { category: '问战征', content: '降尊居贱，能得军心；从月夜进兵，出敌不备，可得全胜。' },
      { category: '问营商', content: '前进货品，不如后进者良，约在望前可售，必得高价。' },
      { category: '问功名', content: '如有兄弟，同出求名，弟必获隽。' },
      { category: '问婚姻', content: '当有二女同归，吉。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 54,
    position: 6,
    judgments: [
      { category: '占问时运', content: '万事不利。' },
      { category: '问战征', content: '糗粮不备，戈矛不修，以斯从征，必败之道。' },
      { category: '问营商', content: '资本既虚，货物又匮，奚以获利？' },
      { category: '问功名', content: '空手求名，其何能得？' },
      { category: '问婚姻', content: '婚娶不正，维家之索。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 55,
    position: 0,
    judgments: [
      { category: '占问时运', content: '气运旺盛，但当丰不忘歉，斯丰可长保矣。' },
      { category: '问战征', content: '雷电皆至，见兵威显赫，声势远扬，攻战必克。' },
      { category: '问营商', content: '财利丰盛，但须公平谨守，否则恐有讼狱牵连。' },
      { category: '问功名', content: '雷电有威名发达之象，宜任刑官。' },
      { category: '问婚姻', content: '世称雷为公，电为母，是天合也。' },
      { category: '问家宅', content: '宅向东南，财气颇丰。' },
      { category: '问疾病', content: '是肝火上升之症，宜泄肝泻火之剂，尤宜静养。' },
      { category: '问失物', content: '皆速追究，可得。' },
      { category: '问行人', content: '防有讼事纠缠。' },
      { category: '问六甲', content: '单月生男，双月生女。' }
    ]
  },
  {
    hexagramId: 55,
    position: 1,
    judgments: [
      { category: '占问时运', content: '得其相助，可有十年好运。' },
      { category: '问战征', content: '两敌相遇，当速进兵，十日外，恐有败象。' },
      { category: '问营商', content: '当有巧当货物可售，旬日之内，即可获利，过旬则不利。' },
      { category: '问功名', content: '"邂逅相遇，适我愿兮"，即日当有佳报。' },
      { category: '问婚姻', content: '姻缘相当，即日可成，迟则不谐。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 55,
    position: 2,
    judgments: [
      { category: '占问时运', content: '能以蒙难艰贞，自得逢凶化吉。' },
      { category: '问战征', content: '屯军于丰林茂草之间，伏藏不发，往则恐有不利；必待敌兵内应，一发必得大胜。吉。' },
      { category: '问营商', content: '见识不明，浑如白昼昏暗，不能办事，致生疑忌。当以至诚待人，得人扶助，方可获利。' },
      { category: '问功名', content: '始凶终吉。' },
      { category: '问婚姻', content: '始疑终谐。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 55,
    position: 3,
    judgments: [
      { category: '占问时运', content: '运途颠倒，明明白昼，浑如黑夜，防有灾祸。幸一时身命，尚无恙也。' },
      { category: '问战征', content: '"沛"或作旆，谓幡旆飘扬，率军前进，防风云有变，卒时昏暗，右军有失。' },
      { category: '问营商', content: '防货价涨落不测，致被耗折。' },
      { category: '问功名', content: '终不可用。' },
      { category: '问婚姻', content: '田园荒芜，水草从生，右庑已倾，暂居而已，终不可用也。' },
      { category: '问六甲', content: '生女。' }
    ]
  },
  {
    hexagramId: 55,
    position: 4,
    judgments: [
      { category: '占问时运', content: '曩时被人蒙蔽，今能翻然改作，得好际遇，可以获吉。' },
      { category: '问战征', content: '兵入幽谷，不知去路，不见天日，幸遇向导，得以前行也。' },
      { category: '问营商', content: '前因货物，真赝混杂，难以销售，今始得遇受主，方可获利。' },
      { category: '问功名', content: '得此绝好际遇，名可立就，吉。' },
      { category: '问婚姻', content: '良缘巧遇，吉。' },
      { category: '问六甲', content: '生男。' }
    ]
  },
  {
    hexagramId: 55,
    position: 5,
    judgments: [
      { category: '占问时运', content: '盛运大来，实至名归，吉莫大焉。' },
      { category: '问战征', content: '可不战而成功也，奏凯而还，得邀封赏，吉。' },
      { category: '问营商', content: '货物往来，无不获利，更可得名。' },
      { category: '问功名', content: '得膺恩赏，名利兼全，大吉。' },
      { category: '问婚姻', content: '天合良缘，门楣既显，嫁资亦丰，吉。' },
      { category: '问六甲', content: '生男，主贵。' }
    ]
  },
  {
    hexagramId: 55,
    position: 6,
    judgments: [
      { category: '占问时运', content: '有屋无人，大凶之象。' },
      { category: '问战征', content: '营垒空虚，败亡之象。' },
      { category: '问营商', content: '货物空存，无人经理，凶。' },
      { category: '问功名', content: '身既不保，名于何有？' },
      { category: '问婚姻', content: '凶。' },
      { category: '问六甲', content: '生男，防不育。' }
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
    const hexagramJudgments = getMultipleJudgments(hexagram.id, 0);
    if (hexagramJudgments && hexagramJudgments.length > 0) {
      hexagram.multipleJudgments = hexagramJudgments;
    }
    hexagram.lines.forEach((line: HexagramLine) => {
      const judgments = getMultipleJudgments(hexagram.id, line.position);
      if (judgments && judgments.length > 0) {
        line.multipleJudgments = judgments;
      }
    });
  });
}

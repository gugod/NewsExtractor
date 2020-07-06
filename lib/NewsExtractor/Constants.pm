package NewsExtractor::Constants;
use v5.18;
use utf8;
use warnings;

our %RE;
our @EXPORT_OK = (
    '%RE',
    'NEWSPAPER_NAMES',
    'CATEGORY_NAMES'
);

use constant {
    NEWSPAPER_NAMES => [
        'Anue鉅亨',
        'ETtoday新聞雲',
        'ETtoday旅遊雲',
        'NOWnews 今日新聞',
        'PChome 新聞',
        'TSNA',
        'TVBS',
        'TVBS新聞網',
        'VOGUE',
        'beauty美人圈',
        '一零一傳媒',
        '三立新聞網  SETN.COM',
        '三立新聞網',
        '上報',
        '中國時報',
        '中央社 CNA',
        '中央社',
        '中央通訊社',
        '中時電子報',
        '中華日報新聞網',
        '健康遠見',
        '台灣好新聞 TaiwanHot.net',
        '天下雜誌',
        '女人迷Womany',
        '妞新聞 niusnews',
        '工商時報',
        '數位台灣地方新聞',
        '新頭殼 Newtalk',
        '新頭殼',
        '旺報',
        '法新社',
        '無綫新聞',
        '聯合新聞網',
        '自由娛樂',
        '自由影音',
        '自由時報電子報',
        '自由財經',
        '自由電子報',
        '自由評論網',
        '自立晚報',
        '芋傳媒 TaroNews',
        '華視新聞',
        '蕃新聞',
        '蘋果新聞網｜蘋果日報',
        '蘋果日報',
        '鉅亨網',
        '鏡週刊',
        '阿波羅網手機版',
        '青年日報',
        '風傳媒',
        '食力 foodNEXT',
        'Storm.mg',
        '國語日報',
        '經濟日報',
        '快點TV',
        'USTV 非凡電視台',
        'NOW健康',
        'Taiwan News',
        '翻報',
        '翻爆 - 翻報',
        '澎湖時報',
        'ETtoday星光雲',
        '台灣時報 | 電子報',
        '大紀元',
        '大纪元',
        'Taipei Times',
        '台視新聞',
        'The News Lens 關鍵評論網',
        '立場新聞',
        '農傳媒',
        '報導者 The Reporter',
        '眾新聞',
        '中華日報',
        '中華新聞雲',
        '中視新聞',
    ],

    CATEGORY_NAMES => [
        '兩岸',
        '台灣政經',
        '台股新聞',
        '台股新聞',
        '國際',
        '國際政經',
        '地方',
        '娛樂',
        '政治',
        '生活',
        '生活發現',
        '產經',
        '社會',
        '社會新聞',
        '科技',
        '美股',
        '美股',
        '軍視界',
        '運動',
        '重點新聞',
        '雜誌',
        '社論',
        '立場報道',
        '苗中彰投雲',
        '旅遊頻道',
        '文化+',
    ],
};

$RE{newspaper_names} = '(?:' . join('|', map { qr($_) } @{ NEWSPAPER_NAMES() }) . ')';
$RE{category_names} = '(?:' . join('|', map { qr($_) } @{ CATEGORY_NAMES() }) . ')';

1;

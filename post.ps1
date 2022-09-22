$branch = 'pcysl';
$folder = './trans/prepare/';

function PostParent([string]$name, [string]$title, [string]$tags, [string]$parent) {
echo "post ${name}";
./SCP.exe page upload ${branch} ${name} -w ${folder} --title "${title}" --parent-page "${parent}";
./SCP.exe forum ensure ${branch} ${name};
./SCP.exe page update-tags ${branch} ${name} "${tags}";
}

function Post([string]$name, [string]$title, [string]$tags) {
echo "post ${name}";
./SCP.exe page upload ${branch} ${name} -w ${folder} --title "${title}";
./SCP.exe forum ensure ${branch} ${name};
./SCP.exe page update-tags ${branch} ${name} "${tags}";
}

# Post 'test-subjects' '「実験対象」(B82SW/9KL74/Y4P1K)' 'en goi-format 深淵目録 _mc&d アイリス・ダーク mc&d プロメテウス サーキック';
# PostParent 'scp-4051' 'SCP-4051' 'en scp keter 深淵目録 生命 シメリアン博士 倫理委員会 異次元 人間型 ライナー・ミラー 批評者スポットライト 知性 自我 時空間' 'site-17-hub';
# PostParent 'the-beast-beneath-the-library' '図書館の下のザ・ビースト' 'en 補足 深淵目録 探査 ライナー・ミラー' 'scp-4051'
# Post 'scp-4855' 'SCP-4855' 'en scp euclid 深淵目録 生命 認識災害 人間型 情報災害 ミーム 精神影響 神経 知性 自我';
# Post 'scp-5576' 'SCP-5576' 'en scp euclid 深淵目録 共著 生命 人間型 蘇生 知性 自我 時間';
# Post 'scp-5715' 'SCP-5715' 'en scp keter 深淵目録 k-クラスシナリオ 生命 不定形 人間型 pattern-screamer 知性 自我 時間';
# Post 'scp-5947' 'SCP-5947' 'en scp thaumiel 深淵目録 共著 動物 死体 外部エントロピー exquisite-corpse2020 食物 破壊不可能 mc&d 何者でもない 魚類 自己複製 画像差し止め';
# Post 'scp-6086' 'SCP-6086' 'en アダルト 見出し';
# PostParent 'adult:scp-6086' 'SCP-6086' 'en scp neutralized 深淵目録 生命 art-exchange 倫理委員会 人間型 蘇生 知性 自己修復 自我 アダルト リダイレクト' 'site-17-hub';
# Post 'scp-6111' 'SCP-6111' 'en 6000 scp safe 共著 深淵目録 シメリアン博士 文書 倫理委員会 異次元 場所 瞬間移動';
# PostParent 'scp-6113' 'SCP-6113' 'en scp esoteric-class 深淵目録 生命 シメリアン博士 倫理委員会 幻覚 人間型 知識 可視光 液体 場所 変身 観測 現実改変 知性 自我 瞬間移動 変容 未収容' 'site-17-hub';
# Post 'scp-6969' 'SCP-6086' 'en アダルト 見出し';
# Post 'adult:scp-6969' 'SCP-6969' 'en 6000 アダルト 遺伝子 keter ループ 記憶影響 神経 生殖 scp 性的 時間 未収容 リダイレクト';
# Post 'scp-6969-j' 'SCP-6086' 'en アダルト 見出し';
# Post 'adult:scp-6969-j' 'SCP-6969-J' 'en scp esoteric-class ジョーク アダルト 深淵目録 概念 財団製 世界オカルト連合 移動不可能 破壊不可能 情報災害 k-クラスシナリオ 精神影響 性的 骨格 変容 未収容 リダイレクト';
# PostParent 'fragment:scp-5947-1' 'SCP-5947' 'en フラグメント' 'scp-5947';
# PostParent 'fragment:scp-5947-2' 'SCP-5947' 'en フラグメント' 'scp-5947';
# PostParent 'fragment:scp-5947-3' '自動監視記録' 'en フラグメント' 'scp-5947';
# for ($i = 0; $i -lt 5; $i++) {
#     PostParent "fragment:scp-6113-${i}" "Scp 6113 ${i}" 'en フラグメント' 'scp-6113';
# }
# for ($i = 1; $i -lt 3; $i++) {
#     PostParent "adult:scp-6969-j-${i}" "End of Sex Fragment ${i}" 'en フラグメント アダルト リダイレクト' 'adult:scp-6969-j';
# }
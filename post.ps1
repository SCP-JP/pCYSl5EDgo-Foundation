$branch = 'pcysl';
$folder = './others/prepare/';
$file = '.ftml';
$forum = '.forum.ftml';
function PostParent($name, $title, $tags, $parent) {
$filename = $name.Replace(':', ' ');
./SCP.exe page upload $branch $name "${folder}${filename}${file}" --title $title --parent $parent;
./SCP.exe page update-tags $branch $name $tags;
./SCP.exe forum post-page $branch $name "${folder}${filename}${forum}" --file --title 'オーサーポスト及びライセンス表記';
}

function Post($name, $title, $tags) {
$filename = $name.Replace(':', ' ');
./SCP.exe page upload $branch $name "${folder}${filename}${file}" --title $title;
./SCP.exe page update-tags $branch $name $tags;
./SCP.exe forum post-page $branch $name "${folder}${filename}${forum}" --file --title 'オーサーポスト及びライセンス表記';
}

function PostNoTag($name, $title) {
$filename = $name.Replace(':', ' ');
./SCP.exe page upload $branch $name "${folder}${filename}${file}" --title $title;
./SCP.exe forum post-page $branch $name "${folder}${filename}${forum}" --file --title 'オーサーポスト及びライセンス表記';
}

Post('note-your-name-is-nobody', 'メモ: あなたの名前は「何者でもない」', 'en goi-format 何者でもない _何者でもない 放浪者の図書館');
Post('apas', '自動パッシブ記憶処理システム Ver. 17.09', 'en tale 深淵目録');
for ($i = 0; $i -lt 5; $i++) {
    PostParent("fragment:apas-${i}", "apas-${i}", 'en フラグメント', 'apas');
}

Post('he-who-screws-with-reality', '現実玩弄者である彼は', 'en tale 深淵目録');
Post('systems-patch', 'システムパッチ', 'en tale 深淵目録');
Post('scp-4175', 'SCP-4175', 'en scp esoteric-class 深淵目録 シメリアン博士 倫理委員会 人間型 知性');
Post('scp-4260', 'SCP-4260', 'en scp euclid 深淵目録 k-クラスシナリオ エントロピー 人間型 現実改変 蘇生 管理者');
Post('scp-4855', 'SCP-4855', 'en scp euclid 深淵目録 生命 認識災害 人間型 情報災害 ミーム 精神影響 神経 知性 自我');
Post('scp-5097', 'SCP-5097', 'en scp esoteric-class 深淵目録 外部エントロピー 財団製 人間型 時空間 未収容 非現実部門');
Post('scp-5576', 'SCP-5576', 'en scp euclid 深淵目録 共著 生命 人間型 蘇生 知性 自我 時間');
Post('scp-5715', 'SCP-5715', 'en scp keter 深淵目録 k-クラスシナリオ 生命 不定形 人間型 pattern-screamer 知性 自我 時間');
Post('scp-5947', 'SCP-5947', 'en scp thaumiel 深淵目録 共著 動物 死体 外部エントロピー exquisite-corpse2020 食物 破壊不可能 mc&d 何者でもない 魚類 自己複製 画像差し止め');
Post('scp-6086', 'SCP-6086', 'en scp neutralized 深淵目録 生命 art-exchange 倫理委員会 人間型 蘇生 知性 自己修復 自我 アダルト');
Post('scp-6113', 'SCP-6113', 'en scp esoteric-class 深淵目録 生命 シメリアン博士 倫理委員会 幻覚 人間型 知識 可視光 液体 場所 変身 観測 現実改変 知性 自我 瞬間移動 変容 未収容');

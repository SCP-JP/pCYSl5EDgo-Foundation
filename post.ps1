$branch = 'pcysl';
$folder = './others/prepare/';
$file = '.ftml';
$forum = '.forum.ftml';
function Post($name, $title, $tags) {
$filename = $name.Replace(':', ' ');
./SCP.exe page upload $branch $name "${folder}${filename}${file}" --title $title;
./SCP.exe page update-tags $branch $name $tags;
./SCP.exe forum post-page $branch $name "${folder}${filename}${forum}" --file;
}

Post('apas', '自動パッシブ記憶処理システム Ver. 17.09', 'en tale 深淵目録');
for ($i = 0; $i -lt 5; $i++) {
$url = "fragment:apas-${i}";
./SCP.exe page upload $branch $url "${folder}fragment apas-${i}${file}" -p 'apas';
./SCP.exe page update-tags $branch $url 'en フラグメント';
./SCP.exe forum post-page $branch $url "${folder}fragment apas-${i}${forum}" --file;
}

Post('he-who-screws-with-reality', '現実玩弄者である彼は', 'en tale 深淵目録');
Post('note-your-name-is-nobody', 'メモ: あなたの名前は「何者でもない」', 'en goi-format 何者でもない _何者でもない 放浪者の図書館');
Post('scp-4175', 'SCP-4175', 'en scp esoteric-class 深淵目録 シメリアン博士 倫理委員会 人間型 知性');
Post('scp-4260', 'SCP-4260', 'en scp euclid 深淵目録 エントロピー 人間型 k-クラスシナリオ 現実改変 蘇生 管理者');
Post('scp-4855', 'SCP-4855', 'en scp euclid 深淵目録 生命 認識災害 人間型 情報災害 ミーム 精神影響 神経 知性 自我');
Post('scp-5097', 'SCP-5097', 'en scp esoteric-class 深淵目録 外部エントロピー 財団製 人間型 時空間 未収容 非現実部門');

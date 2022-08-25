$branch = 'pcysl';
$folder = './others/prepare/';
$file = '.ftml';
$forum = '.forum.ftml';
function Post($name, $title, $tags) {
./SCP.exe page upload $branch apas "${folder}${name}${file}" --title $title;
./SCP.exe page update-tags $branch apas $tags;
./SCP.exe forum post-page $branch apas "${folder}${name}${forum}" --file;
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

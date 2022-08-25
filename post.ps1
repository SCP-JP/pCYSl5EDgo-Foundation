$branch = 'pcysl';
$folder = './others/prepare/';
$file = '.ftml';
$forum = '.forum.ftml';

./SCP.exe page upload $branch apas "${folder}apas${file}" -t "自動パッシブ記憶処理システム Ver. 17.09";
./SCP.exe page update-tags $branch apas 'en tale 深淵目録';
./SCP.exe forum post-page $branch apas "${folder}apas${forum}" --file;
for ($i = 0; $i -lt 5; $i++) {
$url = "fragment:apas-${i}";
./SCP.exe page upload $branch $url "${folder}fragment apas-${i}${file}" -p 'apas';
./SCP.exe page update-tags $branch $url 'en フラグメント';
./SCP.exe forum post-page $branch $url "${folder}fragment apas-${i}${forum}" --file;
}

./SCP.exe page upload $branch apas "${folder}apas${file}" -t "自動パッシブ記憶処理システム Ver. 17.09";
./SCP.exe page update-tags $branch apas 'en tale 深淵目録';
./SCP.exe forum post-page $branch apas "${folder}apas${forum}" --file;
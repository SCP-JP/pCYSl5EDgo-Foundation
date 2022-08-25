$branch = 'pcysl';
function PostParent([string]$name, [string]$title, [string]$tags, [string]$parent) {
$filename = $name.Replace(':', ' ');
./SCP.exe page upload ${branch} ${name} "./others/prepare/${filename}.ftml" --title "${title}" --parent "${parent}";
./SCP.exe page update-tags ${branch} ${name} "${tags}";
}

function Post([string]$name, [string]$title, [string]$tags) {
$filename = $name.Replace(':', ' ');
./SCP.exe page upload ${branch} ${name} "./others/prepare/${filename}.ftml" --title "${title}";
./SCP.exe page update-tags ${branch} ${name} "${tags}";
}

function PostForum([string]$name) {
$filename = $name.Replace(':', ' ');
./SCP.exe forum post-page ${branch} ${name} "./others/prepare/${filename}.forum.ftml" --file --title 'オーサーポスト及びライセンス表記';
}

Post 'note-your-name-is-nobody' 'メモ: あなたの名前は「何者でもない」' 'en goi-format 何者でもない _何者でもない 放浪者の図書館';
Post 'he-who-screws-with-reality' '現実玩弄者である彼は' 'en tale 深淵目録';
Post 'somnambulant-directives-take-the-helm' '夢見指令権力掌握' 'en tale 深淵目録';
Post 'systems-patch' 'システムパッチ' 'en tale 深淵目録';
Post 'test-subjects' '「実験対象」(B82SW/9KL74/Y4P1K)' 'en goi-format 深淵目録 _mc&d アイリス・ダーク mc&d プロメテウス サーキック';
Post 'without-you' 'アンタがいないとなあ' 'en tale';
Post 'apas' '自動パッシブ記憶処理システム Ver. 17.09' 'en tale 深淵目録';
Post 'hurt' '愛別離苦' 'en tale 深淵目録 批評者スポットライト';
Post 'scp-4175' 'SCP-4175' 'en scp esoteric-class 深淵目録 シメリアン博士 倫理委員会 人間型 知性';
Post 'scp-4260' 'SCP-4260' 'en scp euclid 深淵目録 k-クラスシナリオ エントロピー 人間型 現実改変 蘇生 管理者';
Post 'scp-4855' 'SCP-4855' 'en scp euclid 深淵目録 生命 認識災害 人間型 情報災害 ミーム 精神影響 神経 知性 自我';
Post 'scp-5097' 'SCP-5097' 'en scp esoteric-class 深淵目録 外部エントロピー 財団製 人間型 時空間 未収容 非現実部門';
Post 'scp-5576' 'SCP-5576' 'en scp euclid 深淵目録 共著 生命 人間型 蘇生 知性 自我 時間';
Post 'scp-5715' 'SCP-5715' 'en scp keter 深淵目録 k-クラスシナリオ 生命 不定形 人間型 pattern-screamer 知性 自我 時間';
Post 'scp-5947' 'SCP-5947' 'en scp thaumiel 深淵目録 共著 動物 死体 外部エントロピー exquisite-corpse2020 食物 破壊不可能 mc&d 何者でもない 魚類 自己複製 画像差し止め';
Post 'scp-6086' 'SCP-6086' 'en scp neutralized 深淵目録 生命 art-exchange 倫理委員会 人間型 蘇生 知性 自己修復 自我 アダルト';
Post 'scp-6113' 'SCP-6113' 'en scp esoteric-class 深淵目録 生命 シメリアン博士 倫理委員会 幻覚 人間型 知識 可視光 液体 場所 変身 観測 現実改変 知性 自我 瞬間移動 変容 未収容';
PostParent 'fragment:scp-4260-0' 'SCP-4260 - レベル2/4260' 'en フラグメント' 'scp-4260';
PostParent 'fragment:scp-4260-1' 'SCP-4260 - レベル5/4260' 'en フラグメント' 'scp-4260';
PostParent 'fragment:scp-5947-1' 'SCP-5947' 'en フラグメント' 'scp-5947';
PostParent 'fragment:scp-5947-2' 'SCP-5947' 'en フラグメント' 'scp-5947';
PostParent 'fragment:scp-5947-3' '自動監視記録' 'en フラグメント' 'scp-5947';
for ($i = 0; $i -lt 5; $i++) {
    PostParent "fragment:scp-6113-${i}", "scp-6113-${i}", 'en フラグメント' 'scp-6113';
}
for ($i = 0; $i -lt 5; $i++) {
    PostParent "fragment:apas-${i}" "apas-${i}" 'en フラグメント' 'apas';
}

PostForum 'note-your-name-is-nobody';
PostForum 'he-who-screws-with-reality';
PostForum 'somnambulant-directives-take-the-helm';
PostForum 'systems-patch';
PostForum 'test-subjects';
PostForum 'without-you';
PostForum 'apas' ;
PostForum 'hurt' ;
PostForum 'scp-4175';
PostForum 'scp-4260';
PostForum 'scp-4855';
PostForum 'scp-5097';
PostForum 'scp-5576';
PostForum 'scp-5715';
PostForum 'scp-5947';
PostForum 'scp-6086';
PostForum 'scp-6113';
PostForum 'fragment:scp-4260-0';
PostForum 'fragment:scp-4260-1';
PostForum 'fragment:scp-5947-1';
PostForum 'fragment:scp-5947-2';
PostForum 'fragment:scp-5947-3';
for ($i = 0; $i -lt 5; $i++) {
    PostForum "fragment:scp-6113-${i}";
}
for ($i = 0; $i -lt 5; $i++) {
    PostForum "fragment:apas-${i}";
}
#let showAnswers = sys.inputs.at("showAnswers", default: "no") == "yes" or false

// GLOBAL CONFIGURATION STARTS

#set page(
  paper: "a3",
  columns: 2,
  flipped: true,
  margin: (
    top:2cm,
    bottom:1cm,
    left:1.5cm,
    right:1.5cm),
  numbering: "第 1 页 共 1 页"
)

#set par(justify: true)

#set text(
  size: 12pt,
  font: "NotoSans CJK SC"
) 

#set image(width: 60%)

#show link: underline

// BODY STARTS

#if showAnswers [
  #rect(fill: yellow, width: 100%, inset: 1cm)[
    #align(center)[
      此文档为教师用版本。
    ]
  ]
]

#align(center)[
  #image("title.png",
  width: 50%)
]

#align(center)[
  #text(size: 20pt, weight: 700)[
    初星学園 プロデューサー科 入学試験
  ]

  #text(size: 15pt, weight: 700)[
    上級
  ]
]

+ 选择、判断、填空题的解答直接写在试卷上。考试结束后，试卷上交。
+ 考试开始前，请先在试卷的指定区域内填写プロデューサー ID，否则作答无效。
+ 如对试题有疑议，请联系#link("https://idolmaster-official.jp/news/01_11480")[考试中心]。
+ 葛城リーリヤ赛高。


#v(1.5cm)

#columns(2, gutter: 11pt)[
  #align(center)[
    プロデューサー ID

    #table(
      columns:8,
      rows:1,
      inset: 12pt,
      align: center,
    )

    #colbreak()

    #table(
      columns:4,
      rows:2,
      inset: 12pt,
      align: horizon,
      table.header([题号],[一],[二],[总分])
      )
  ]
]

#let question(question, mark, image_path, body) = {
  block(width: 100%, breakable: false)[
    === 第#{question}問（配点#{mark}）

    #align(center)[#image(image_path)]

    #body

    #v(1cm)
  ]
}

#let answers(a, b, c, d, actualAnswer: 1) = [
  #align(center)[
    #table(
      columns: 4,
      rows: 1,
      inset: 12pt,
      align: center,
      stroke: none,
      // answers
      table.cell(
        fill: if showAnswers and actualAnswer == 1 {aqua} else {none}
      )[A. #a],
      table.cell(
        fill: if showAnswers and actualAnswer == 2 {aqua} else {none}
      )[B. #b],
      table.cell(
        fill: if showAnswers and actualAnswer == 3 {aqua} else {none}
      )[C. #c],
      table.cell(
        fill: if showAnswers and actualAnswer == 4 {aqua} else {none}
      )[D. #d],
    )
  ]
]

== 第一部分：选择题（72分）

#question(
  1,
  8,
  "q1.png",
  )[
  新入生首席として初星学園に入学した花海 咲季。 彼女が「入学試験で一番得意な科目」として答えたのは、次のうちどれか。

  #answers(
    "ボーカル",
    "ダンス",
    "ビジュアル",
    "筆記",
    actualAnswer: 2)
]

#question(
  2,
  8,
  "q2.png",
  )[
  歌が得意な月村 手毬。彼女の楽曲「Luna say maybe」の冒頭として正しい歌詞を選べ。

  #answers(
    "あのね。",
    "あのね、",
    "あのね――",
    "あのね…",
    actualAnswer: 1)
]

#question(
  3,
  8,
  "q3.png",
  )[
  お金がなくてもオシャレはしたい藤田 ことね。初星学園には私服で登校している彼女の服に書いてある文字は次のうちどれか。

  #answers(
    "summerFES",
    "Spring",
    "Sakana!",
    "Sekaiichi kawaii watashi",
    actualAnswer: 2)
]

#question(
  4,
  8,
  "q4.png",
  )[
  初星学園の寮長を担う有村 麻央。そんな彼女にも苦手な科目があり、それは次のうちどれか。

  #answers(
    "世界史",
    "日本史",
    "英語",
    "体育",
    actualAnswer: 2
  )
]

#question(
  5,
  8,
  "q5.png",
  )[
  日本のアニメが好きな葛城 リーリヤ。彼女の好きなアニメの名前は、次のうちどれか。

  #answers(
    "ふわっとブレザーつむじちゃん",
    "完全燃焼！ゼンカイブレイバー",
    "我が子を喰らう。",
    "時空戦記クロノストライカー",
    actualAnswer: 1
  )
]

#question(
  6,
  8,
  "q6.png",
  )[
  箱入り娘として育てられてきた倉本 千奈。そんな彼女の苦手な食べ物は次のうちどれか。

  #answers(
    "炭酸飲料",
    "牛乳",
    "ピーマン",
    "寿司",
    actualAnswer: 1
  )
]

#question(
  7,
  8,
  "q7.png",
  )[
  葛城 リーリヤとのお出かけが大好きな紫雲 清夏。彼女がリーリヤとゲームセンターで取ったぬいぐるみは次のうちどれか。

  #answers(
    "白い狼",
    "青いたぬき",
    "黒い狐",
    "砂漠のライオン",
    actualAnswer: 3
  )
]

#question(
  8,
  8,
  "q8.png",
  )[
  筆記満点、実技0点で入試に合格した篠澤 広。彼女の入学試験の成績として正しい順位を選べ。

  #answers(
    "下から2番目",
    "最下位",
    "1位",
    "3位",
    actualAnswer: 1
  )
]

#question(
  9,
  8,
  "q9.png",
  )[
  みんなのお姉さんとして慕われる姫崎 莉波。彼女の身長として正しいものは次のうちどれか。

  #answers(
    "166cm",
    "158cm",
    "162cm",
    "170cm",
    actualAnswer: 1
  )
]

// #pagebreak()

== 第二部分：选择题（28分）

#question(
  10,
  4,
  "q10.png",
  )[
  初星コミュにも登場している花海 佑芽。彼女がプロデューサーにプロデュースを依頼した理由を選べ。

  #answers(
    "お姉ちゃんのおすすめ",
    "直感",
    "勝ちたい人がいる",
    "恩返し",
    actualAnswer: 2
  )
]

#question(
  11,
  4,
  "q11.png",
  )[
  月村 手毬と幼馴染の秦谷 美鈴。彼女の出身地を答えよ。

  #answers(
    "京都府",
    "大阪府",
    "兵庫県",
    "奈良県",
    actualAnswer: 1
  )
]

#question(
  12,
  4,
  "q12.png",
  )[
  生徒会長でもある十王 星南。彼女が学園パンフレットに登場した際の肩書を答えよ。

  #answers(
    "次期生徒会長",
    "前年度プリマステラ",
    "生徒代表",
    "学園長の孫",
    actualAnswer: 1
  )
]

#question(
  13,
  4,
  "q13.png",
  )[
  初星学園の建学年を答えよ。

  #v(2cm)

  #if showAnswers [
    #align(center)[
      #table(
      columns: 1,
      rows: 1,
      inset: 12pt,
      align: center,
      stroke: none,
      fill: aqua,
      [1990年]
    )
    ]
  ]
]

#question(
  14,
  4,
  "q14.png",
  )[
  初星学園校歌の曲名を答えよ。

  #answers(
    "標",
    "初",
    "貴",
    "采",
    actualAnswer: 1
  )
]

#question(
  15,
  4,
  "q15.png",
  )[
  赤枠で囲われている、この子の名前を答えよ。

  #answers(
    "はつみちゃん",
    "はつねちゃん",
    "はじめちゃん",
    "あさりちゃん",
    actualAnswer: 1
  )
]

#question(
  16,
  4,
  "q16.png",
  )[
  初星学園にアイドル科が設立される礎となった、学園長「十王 邦夫」の考えを選べ。

  #answers(
    "才あるものは、斯くあるべし",
    "夢を抱いて、個性を磨き、健やかに成長するべし",
    "仲間と共に、育む個性",
    "君と出会い、夢に翔ける",
    actualAnswer: 1
  )
]
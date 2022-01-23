#  PaperCouponManager

紙のクーポン券をまとめて管理するアプリケーション


# 概要

紙のクーポンの「画像・商品名・店名・割引率（値）・期限・メモ」を登録して、一覧表示で管理します。
表示画面は「未使用・使用済・ゴミ箱」のエリアに区分けされており、クーポンがどの状態なのか把握できます。
未使用のクーポンをカレンダー形式で表示するエリアも設けています。
また期限が迫ってきたクーポンがあればプッシュ通知で知らせてくれます。


# 制作背景

私は紙のクーポン券をよく利用するのですが、使用期限や残りの枚数を把握するのに苦労していました。
そこで所持しているクーポンをアプリで一括管理できないかと考え、このアプリの制作を決めました。
アプリで管理ができれば様々なクーポンを所持していても、期限切れを減らしたり効率の良い買物ができます。
現在デジタルのクーポンが多く使用されていますが、紙のクーポンの需要もまだあると考えております。


# DEMO

## 状態ごとのクーポン一覧表示エリア
- スワイプで「未使用・使用済・ゴミ箱」のエリアを切り替えることができます。
- 登録されたクーポンは「商品名・店名・割引率(値)」が表示されます。

## クーポン登録機能
- 「画像・商品名・店名・割引率（値）・期限・メモ」を入力してクーポンを登録します。
- 画像はカメラ撮影かアルバムから登録できます。
- 店名はあらかじめタグで登録しておいたものから選択することができます。

## クーポン詳細表示機能
- 一覧のクーポンをタップすると登録した内容を確認できます。
- クーポンの編集・削除・状態の切り替えを行うことができます。

## カレンダー表示機能
- 未使用のクーポンをカレンダー形式で表示します。
- 使用期限のクーポンがある日付にマークを表示します。
- 日付をタップするとその日が期限のクーポンを表示できます。


# 実装予定の内容

## 店名タグ登録機能
- 店名を登録しておき、クーポン登録の際に選択できるようにして入力の手間を減らします。
- 表示色を登録することで一覧表示の際に視覚的に判断しやすくなります。

## プッシュ通知機能
- 本日(設定で日付変更可)期限を迎えるクーポンがある場合、通知してくれます。

## ソート・絞り込み機能
- 一覧表示で店名で絞り込んだり、並び順を変更したりできます。
- 登録日でソートをかけると、誤って登録してしまったクーポンをすぐに探すことができます。

## 設定変更機能
- 何日前に通知を行うか設定することができます。
- 期限が切れているクーポンを自動的にゴミ箱エリアへ移動するか設定できます。

# DB設計

## couponテーブル

| Column    | Type   |
| --------- | ------ |
| state     | Int    |
| image     | NSData |
| item      | String |
| store     | Int    |
| discount  | Int    |
| dueDate   | NSDate |
| memo      | String |
| createdAt | NSDate |

### Association
- belongs_to :tag


## tagテーブル
| Column    | Type   |
| --------- | ------ |
| name      | String |
| color     | Int    |

### Association
- has_many :coupons
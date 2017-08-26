# terraform-drone-with-gcp
terraform and drone with gcp.

## version
- Drone drone/drone:0.7.x (0.7.1)
- Terraform hashicorp/terraform:latest (0.10.2)

## Drone Secrets の Sample
- export GOOGLE_CREDENTIALS={ "type": "service_account", "... your project credential file json" }
- export GOOGLE_PROJECT=your-google-project-id
- export BACKEND_CONFIG_BUCKET=your-terraform-remote-state-unique-bucket

## 必要なもの
- 動いている Drone
- Drone と連携設定されているコードリポジトリ (GitHub, GitLab 等)
  - 連携可能なコードリポジトリは [Drone Admin Guide](http://readme.drone.io/admin/) 参照
- Google Cloud Platform のアカウント と プロジェクト

## 準備
terraform state 保持 bucket を作成する。
Sample では your-terraform-remote-state-unique-bucket

terraform 操作 サービスアカウントを作成する。
権限は適切に、Demo では、 Project.編集者

サービスアカウント の 鍵を発行する
Sample では { "type": "service_account", "... your project credential file json" }

## Drone からプロジェクト起動
1. Drone へ　アクセス
- Drone login > Account から プロジェクトを選択する
- Drone > <your project> > Secrents
  - GOOGLE_CREDENTIALS, GOOGLE_PROJECT, BACKEND_CONFIG_BUCKET を設定する
- sample project を変更し commit push する
- Drone のビルドが実行される

---

## 困ったときは
- Drone に渡されている変数を参照したい
  - commands に export を書く
  - drone が 定義している変数 [User Guide > Env Reference](http://readme.drone.io/usage/environment-reference/)

---

## 参考
- [Terraform](https://www.terraform.io/)
- [Drone](http://docs.drone.io/)
- [Google Cloud Platform](https://cloud.google.com/)

# ベースイメージとして公式のGoイメージを使用
FROM golang:latest

# 作業ディレクトリを設定
WORKDIR /app

# ソースコードをコンテナにコピー
COPY . .

# Goのアプリケーションをビルド
RUN go build -o main .

# ポート8081を公開
EXPOSE 8081

# コンテナ起動時に実行するコマンド
CMD [ "./main" ]

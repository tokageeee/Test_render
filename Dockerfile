# ベースイメージ
FROM python:3.11-slim

# 作業ディレクトリ
WORKDIR /app

# 必要ファイルをコピー
COPY app.py /app

# Flask をインストール
RUN pip install flask gunicorn

# コンテナ起動時に実行するコマンド
CMD ["gunicorn", "-b", "0.0.0.0:8080", "app:app"]

# curl -sSL get.docker.com | sh
docker run -dit \
  -v $PWD/ql/data:/ql/data \
  -p 5700:5700 \
  # 部署路径非必须，以斜杠开头和结尾，比如 /test/
  -e QlBaseUrl="/" \
  --name qinglong \
  --hostname qinglong \
  --restart unless-stopped \
  whyour/qinglong:latest

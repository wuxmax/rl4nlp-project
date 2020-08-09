docker build -t qait-img .

docker run -dt -v $(pwd)/fasttext/crawl-300d-2M.vec:/app/crawl-300d-2M.vec qait-img sh
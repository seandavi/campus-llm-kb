# Render the book to _book/
render:
    quarto render

# Push _book/ to the gh-pages branch (skips re-render)
publish:
    quarto publish gh-pages --no-render

# Render then publish in one step
deploy: render publish

# Example script to generate HTML and push to local gh-pages directory.

#build site from markdown
jekyll build

# remove old files
rm -R ../other/mbh038.github.io/cv/*

# re-add new
cp _site/index.html ../other/mbh038.github.io/cv/.
cp -R _site/media ../other/mbh038.github.io/cv/.

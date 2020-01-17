#!/bin/bash

rm -f my-hugo-blog.tar.gz
rm -rf public/
HUGO_ENV=production hugo
tar -zcvf my-hugo-blog.tar.gz public/
scp my-hugo-blog.tar.gz dod:~/
ssh dod 'tar -xvf my-hugo-blog.tar.gz'

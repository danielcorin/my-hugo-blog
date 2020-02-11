---
title: "Migrating to Hugo"
date: 2020-01-11T19:00:53-08:00
draft: false
tags:
    - code
    - go
    - meta
---

This is now my third attempt at migrating from [Jekyll](https://jekyllrb.com/) to [Hugo](https://gohugo.io/). I'm writing this post before I finish the migration. Luckily, because this is my third attempt, I'm confident I will see it through to the end.

After following the Hugo [quickstart guide](https://gohugo.io/getting-started/quick-start/), I imported my Jekyll posts

```
hugo import jekyll ../../my-blog/ . --force
```

enabled syntax highlighting

```
hugo gen chromastyles --style=monokai > syntax.css
```

and turned on the configurations for highlighting adding the following to my `config.toml` file:

{{< highlight toml >}}
[markup]
  [markup.highlight]
    codeFences = true
    guessSyntax = true
    hl_Lines = ""
    lineNoStart = 1
    lineNos = false
    lineNumbersInTable = false
    noClasses = true
    style = "monokai"
    tabWidth = 2

pygmentsUseClasses=true
{{< / highlight >}}

For backwards, compatibility, I also added [aliases](https://gohugo.io/content-management/urls/#yaml-front-matter) so that direct links to the old blog would continue to point to the same page in the new blog.

For example, for [this post](/posts/2019-05-29-unix/) (/posts/2019-05-29-unix/), I added the following to the yaml frontmatter:

{{< highlight yaml >}}
aliases:
    - /code/2019/05/29/unix.html
{{< / highlight >}}

so that [this link](/code/2019/05/29/unix.html) (/code/2019/05/29/unix.html) would work as well.

Adding aliases had to be done manually but I don't have too many posts so it worked out okay.

🍻

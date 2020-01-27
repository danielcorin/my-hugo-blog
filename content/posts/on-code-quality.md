---
title: "On code quality"
date: 2020-01-24T16:36:45-08:00
draft: true
---

Engineers often speak about the topic of code quality. Teams and companies make specific and targeted efforts to keep the quality of their codebases high.
Activities like "spring cleaning", "test Fridays", "Fixit week" and others pay tribute to how important some see it to keep codebases clean and fix complex, hariy issues that take more than a day or two of time and focus to solve. 

Some of us (I do) can talk about the problem of "poor quality code", "bad code", or "spaghetti code" as if the code wasn't written by engineers just like ourselves, but the bottom line is, every engineer can likely find a piece of code they wrote that they aren't proud of today.
I once had specific commits from a microservice I wrote under a tight two day timeline, highlighted in a company wide "engucation" course on "how not to write commit messages".
It doesn’t feel good to have work you’re not proud of paraded in front of every engineering new hire, even if just as an example.
However, on a smaller scale, I was guilty of the same thing.
I’d read old code in microservices our team maintained and disparage it as "spaghetti." Do so is kind of a temporary coping mechanism but ultimately just complaining doesn't improve the state of the code or our teams ability to maintain or built upon it.
More importantly, it really didn’t do anything productive to address the reason the poor code was written in the first place. 

I’ll propose a few strategies I’ve developed to try and turn an unavoidable part of life as an engineer into an opportunity for us to help each other continue to learn and get better at the work we do. 

You inevitability find a file or function that is the perfect combination of unreadable and poorly named, misusing design patterns and languages features, violating abstractions and code base conventions.

1. Check to see if the pattern exists elsewhere. I tend to see the same snippet of code get used and re-used all over the place -- copied between [handlers, controllers and gateways](https://about.sourcegraph.com/go/gophercon-2019-how-uber-go-es#standardizing-code-structure), across codebases, from internal and external Stack posts. Copying code is great and fast, especially when the code is good. When the code is bad, copying the code gets the job done, but proliferates bad patterns and code entropy increases. If you identify the source of the bad pattern, you can correct/improve it at its source, then author a change or changes to help others from doing the same in the future.

1. Consider if the codebase uses patterns that encourage the contributes you want. Does the code that already exists in the codebase look like new code you'd want added? Are you violating separations of concerns? Do your unit tests properly mock out the layer and packages you're not testing? Chances are, if you're not happy with the state of your codebase today, you won't be happy with how new contributes look either. Figure out what your gold standard looks like and point contributors to that an example of what their code should look like, while acknowledging that you're working towards a state where more things look like that gold standard. I'll admit this is easier said than done -- there seems to be a bias to maintain the status quo, even when better alternatives are known. Given this bias, its helpful to be proactive, telling new contributors something like, "It would be great if you could follow the pattern we use in the users gateway even though it's different from most of the other ones. That's is our north star for how new contributions should look."

1. Pretend for a second that you were the one who wrote the code.
Except, sometimes you don't have to pretend -- you read code, think "hmm, this is not the way I'd do this", and it turns out, you `git blame` and realize you literally wrote it yourself, months or years earlier.
Between when you wrote this code and later admonished yourself for the bad code you wrote you've learned some things that have made you believe you could have done better.
Maybe you've come to understand the codebase better, become more familiar with effective abstractions or came up with a design pattern that better fits the use case.
Or maybe you're just not in as much of a rush this time as your were last time.
Regardless of whether you wrote the code or not, there's a learning which is "I think I know a way to do it better."
Capture that and engage with the author to discuss why they chose not to do it the way you would have. Maybe they'll learn something or maybe you will, and next time, consider leaving a comment or doc on why you did something that may seem non-obvious to another informed contributor.

Automate as much of the above as possible (not the 1 on 1 conversations). Add linting rules and build-time enforcements that explain and encourage the right types of contribution. You want the author to know as soon as possible when they're diverging from a pattern or standard you want to maintain. Lastly, be empathetic and assume all contributions are made in good faith. You'll find that standards for "good code" differ between individuals and companies, so when you find someone who does things differently than you, understanding that you may disagree on standards, but do align on _some_ standards and commit to abide by them.

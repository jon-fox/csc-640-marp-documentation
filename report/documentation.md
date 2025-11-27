# Documentation

### Documentation Basics

Something super close to my own heart is documentation. This was especially critical pre AI, maybe not so much now. Although I still run into a good number of gotchas.

What makes documentation useful is a good title so other devs can easily find it when searching for relevant docs for their use case.

So something like 'API Setup' probably isn't as useful as 'API Gateway Infrastructure setup with Authentication'. The latter title gives far more context and is specific to AWS APIs with the callout of Authentication.

Step by step and Screenshots are the biggest. The best documentation is written while walking through the implementation step by step with plenty of screenshots along the way.

Here is an example of something I've published to be publically available (can't show internal enterprise docs of course)

[Example Documentation Published to Medium](https://medium.com/aws-tip/aws-sso-setup-with-organizations-for-terraform-cli-assumable-roles-922348c015bb)

---

### Documentation as Code

Code should be self documenting is a common cliche that often gets repeated.

This is valid for certain languages and less so for others. So for example, python is super easy to read and for the most part, understand what is going on. Java, however, is not. It can be difficult to discern what is happening in Java because of the layers of abstractions being used.

Anyone using AI (which is most folks these days) knows that most models include comments in the code they write. I often find these comments too verbose for a lot of these cases and they can be really noisy.

Comments in code are awesome, but they should be used when something isn't clear or could be confusing. Especially with multithreaded py functions, it is good to have a solid doc string to say what this function does and what it interacts with. Making use of keywords to catch a devs eye is important. So for python we have NOTE, HACK, etc. Those keywords can be great as callouts for reminders, fixes, etc.

Also including github issue links in code I've found can be super useful. Even for me with my own code it is good to see an issue that outlines why I made a dev decision because of a library's limitation or design.

### What I look for in Docs

In my own experience when looking at docs to solve a problem I have or looking for information there are a few of things I'm watching for.

I want the docs to get right to the point. I dont want a huge generic preamble that tells me nothing. 

I want clear examples with code. So many times folks who write documentation do not include code or only snippets. At least link to the source code, it is so frustrating when a snippet is missing context for how it is being used or doesn't work in isolation because of dependency issues.

Plenty of screenshots, this is the biggest. Step by steps with screenshots can be quickly skimmed and used as a reference.

### How I do it

I've written some really popular internal documentation in a few companies. This is great for my own reference as well as for other devs, and gives me visibility outside my immediate team/org.

When I've struggled developing something of my own that had many gotchas, internal limitations, etc. I'll put together some thorough documentation.

This can also be great for other team members. If you ever leave or switch teams then your docs live on and can be maintained in your absence.

I follow the wants I listed above. I make sure to include Step by Step instructions, pre requisites, plenty of screenshots, and a reference table with links.

The best time to write docs is right after the implementation I find. So after its fresh in my memory I'll walk through each piece, take screenshots, and include each step.

Being too verbose is FAR BETTER than skipping over steps and leaving the person using your docs wondering how you got from A -> B.
# General Principles

Some general principles I follow up


## Fail Fast

It's important to not over analyze everything and get to writing code. I do believe architecting solutions is a good pre requisite, but am also cautious of over architecting.

Often times when architecting there is a gap between the high level overview and the actual implementation limitations that are learned during development.


## Don't Repeat Yourself

This one is pretty cliche these days, but I think its a useful thing to keep in mind when writing software.

It's important to reuse functionality. This way it can be extended and maintained in one place.


## Separation of Concerns

Microservicing can be a good approach but there is definitely a spectrum. Over microservicing has its own problems with maintenance of many separate services along with their deployments. While massive monoliths can be difficult to maintain for reasons in the inverse.

Authentication scattered across 14 endpoint files means updating auth touches 14 files. Authentication in middleware means one place, one change.

If changing the database requires touching API route handlers, your concerns aren't separated. Good separation means swapping the database only touches the database layer.

Finding the right balance whether microservices vs monolith or code organization depends on team size and complexity. Start simple and split when you need to.


## Environment Isolation

Dev, staging, and prod should be as similar as possible but completely isolated.

All of the environmental differences we have should be configurable. So we have ymls or the equivalent that contain the configs we need for separate environments.

In the case of cloud environments we can store the configurations in the cloud environment and pull from there during run/build time. 


## Automate Repetitive Tasks

If it becomes a repetitive task then we should automate it, like homework 4.

**Manual process:**
- SSH into server
- Pull latest code
- Run migrations
- Restart service
- Check logs

**Scripted:**
```bash
./deploy.sh staging
```

This way we can kick off the script whenever we make changes or deploy, and can mostly be assured that the behaviour is the same.


## Iterate and optimize over time

This is a big one for me. Don't try to solve every problem at the outset or over optimize.

First we need to actually develop and deploy an MVP like application. From there we can iterate and optimize based on user feedback and metrics.

It's important to collect good metrics like API calls, CPU usage, etc. From there we have a benchmark to compare iterations against.


## Keep It Simple

Probably one of the most important to me.

High complexity becomes so difficult to maintain and iterate on. It also becomes difficult for other developers to understand and maintain later.

Developing low complexity applications can actually be difficult. I've found this especially true with AI. AI so often wants to implement the most complex solution possible. Understanding code and what you are doing helps immensely when guiding AI solutions.



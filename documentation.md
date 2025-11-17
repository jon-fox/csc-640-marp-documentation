# Documentation as Quality

### Documentation is Code

If nobody can figure out how to use your software, it might as well not exist. Documentation isn't something you add at the end. It's a core part of building quality software.

---

## Types of Documentation

#### README
First thing anyone reads. Needs to answer:
- What does this do?
- How do I get it running?
- How do I test it?

For HW4, the README covers .env setup, NGINX config, database initialization, and how to run tests. A new developer should be able to start contributing in 15 minutes, not 2 days.

#### API Documentation
Each endpoint needs its URL, HTTP method, required parameters, auth requirements, and example requests with responses.

I documented all 14 HW4 endpoints with working curl examples. That way people can copy-paste and actually use the API instead of guessing.

#### Code Comments
Comments explain why you did something, not what you did. The code already shows what.

Good comment: `// Hash password to prevent plaintext exposure in database breaches`

Bad comment: `// Set password to hashed password`

#### Setup Scripts
Shell scripts are self-documenting if written clearly. `start_server.sh` shows the exact NGINX commands needed. No ambiguity.

---

### Living Documentation

Code changes. Documentation has to change with it, or it becomes actively misleading.

> Outdated documentation is worse than no documentation because it wastes time and creates confusion.

When I added Docker to HW4, I updated the README immediately. When environment config changed, I updated .env.example. Treat documentation updates like code updates.

---

## Environment Configuration

`.env.example` shows what variables are needed without exposing actual secrets:

```
DB_HOST=localhost
DB_NAME=your_database
DB_USER=your_username
DB_PASS=your_password
```

Developers copy it to `.env` and fill in real values. `.env` stays in `.gitignore` so secrets don't leak.

---

**Key Takeaways**

Good documentation saved me when switching between machines. Endpoint docs served as a contract when building test scripts. The README reduced questions because the answers were already written.

*Time spent writing docs is time saved answering the same questions repeatedly.*

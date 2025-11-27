# Testing and Quality Assurance

### Why Testing Matters

Untested code is likely to contain issues

Manual testing locally is definitely a good start and can catch issues. 

Automated tests catch edge cases and errors after code changes.

Integration tests are great and ensure that the entire app works end-to-end as expected. These can be integrated into your CICD pipelines to ensure apps function as expected prior to deploying.

---

## Cost of Bugs

- Find it while coding: Fix it immediately, minimal cost
- Find it during QA: Someone files a ticket, you context-switch back, big cost
- Find it in production: Users affected, emergency fix, reputation hit, max cost

> Testing can prevent bugs from reaching produciton. Although it won't catch every edge case or environmental difference, it provides a good line of defense against bugs be introduced during initial deployment or further iterations.

---

## Testing Approaches in my HW4

#### Automated API Testing
Built `test_api.sh` that hits all 14 endpoints. Tests auth, validates parameters, checks error handling.

Runs the entire suite in seconds. Catches regressions immediately after changes. Also doubles as API documentation through examples.

Swagger docs for apis are awesome for local dev and even higher envs. It provides an easy interface for developers and other users to leverage when interacting/testing the endpoints for APIs.

#### Browser-Based Testing
Created `test.html` with forms for each endpoint and live response display.

Good for visual confirmation and testing the actual user experience.

A lot of things can be automated, but in my experience UI testing is still very much a manual visual check by developers. Checking the UI prior to pushing/deploying changes still(for now at least) needs a human touch.

#### Database Testing
Directly queried the database to verify foreign keys work, cascading deletes happen correctly, data integrity holds.

Database testing can be difficult, especially in enterprise systems. A huge reason(especially with cloud) is the differences in compute/storage across envs. It can be hard to replicate PROD usage in lower envs. 

The infra cost of completely replicating PROD in lower environments can also be hard to justify. So iteration and usage metrics can be useful for estimations, but often we won't get it perfect on the first iteration.

All of that being said, ensuring data integrity, data quality, and testing apps integration is important. Ensuring that when the application is running in PROD that it isn't encountering unforeseen table locking, read/write issues is important, and can be tested for in the lower envs.

---

### What Good Tests Cover

**Happy path** - normal usage with valid data produces expected results

**Error cases** - invalid inputs return useful error messages instead of crashing

**Edge cases** - empty strings, null values, max lengths, special characters all handled

**Security** - auth actually prevents unauthorized access, SQL injection attempts fail safely

**Breaking Changes** - arguably the most important to me. Breaking changes being caught before being deployed to production is a big saver of time and prod issues.

---

# How to Build Quality Software

A concise, actionable guide.

---

## The Process

### 1. Plan First
- Define your API endpoints and data model before coding
- Break work into milestones (database → CRUD → auth → features)
- Know what success looks like

### 2. Secure by Default
- Validate all user input (type, length, format)
- Use parameterized queries or ORMs
- Environment variables for credentials, never hardcode
- Require auth for any write operations

### 3. Test as You Build
- Write automated tests: happy path, error cases, edge cases
- Run tests after every change
- Tests catch bugs and enable safe refactoring

### 4. Keep Code Simple
- One function, one job
- Don't repeat yourself
- Separate concerns (DB/logic/HTTP in different layers)
- Meaningful names over clever code

### 5. Use Frameworks Wisely
- Leverage frameworks for auth, routing, validation
- Understand fundamentals first
- Framework complexity must justify productivity gains

### 6. Document What Matters
- README: setup, requirements, how to run
- API docs: endpoints, parameters, examples
- Comments: explain why, not what

### 7. Version Control Discipline
- Commit working code in small chunks
- Clear commit messages
- `.gitignore` for secrets and build artifacts

### 8. Handle Errors Properly
- Fail fast with specific messages
- Proper HTTP status codes
- Log details for debugging, not for users

### 9. Deploy Consistently
- Docker for identical environments
- Script deployments
- Monitor logs and errors in production

---

## HW4 Example

The [REST API PHP Server Project](https://github.com/jon-fox/rest-api-php-server-project) demonstrates these principles in practice:

**Stage 1 (Raw PHP):** 200+ lines of repeated auth code, manual SQL everywhere, fragile.

**Stage 2 (Laravel):** 40% less code, framework handles security, tests confirm nothing broke during migration.

**Key lesson:** Small disciplined choices compound. Validate input, write tests, update docs. Quality is process, not accident.

---

## Quick Reference

| Principle | Action |
|-----------|--------|
| Don't trust input | Validate everything at the boundary |
| Avoid repetition | Extract shared logic to functions |
| Catch bugs early | Write automated tests |
| Keep secrets safe | Use .env files, not hardcoded values |
| Make errors clear | Specific messages + proper status codes |
| Stay organized | Separation of concerns, small functions |

Quality software isn't complicated. It's deliberate.

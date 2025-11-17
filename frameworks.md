# Why Frameworks Matter

### The Problem with Raw Code

Stage 1 of HW4 used raw PHP. Every single endpoint needed manual request parsing, input validation, database connections, error handling, and response formatting. That's 200+ lines of repeated boilerplate code.

When I needed to update authentication, I had to touch every file. Adding a new endpoint meant copying an existing one and hoping I didn't miss anything.

---

## What Frameworks Provide

#### Routing
Laravel maps URLs to functions automatically. No more manual parsing.

Before: Manual URL parsing and routing logic everywhere
After: `Route::get('/agents', [AgentController::class, 'index']);`

#### ORM (Object-Relational Mapping)
Database queries become normal method calls. SQL injection protection comes built-in.

Before: Manual prepared statements, parameter binding, error checking
After: `Agent::where('status', 'active')->get();`

#### Validation
Input validation becomes configuration instead of code.

Before: Endless isset() checks and manual error messages
After: `$request->validate(['name' => 'required|string|max:255']);`

#### Authentication
Middleware handles auth once. Your controllers focus on actual business logic.

Before: Every endpoint manually checks bearer tokens
After: `Route::middleware('auth:sanctum')->group()` protects everything inside

#### Environment Configuration
Database credentials and secrets go in .env files, not hardcoded in your source.

Before: Credentials scattered through files or worse, committed to git
After: `DB_HOST=localhost` in .env, with .env in .gitignore

---

### Docker: Consistent Environments

Docker ensures dev, testing, and production environments are identical. Same PHP version, same database, same configuration.

New developers run `docker compose up` and they're coding in minutes instead of spending a day installing dependencies.

## Framework Trade-offs

Frameworks add complexity. There's a learning curve. You're trading direct control for productivity.

But for most projects, you'll ship features faster and maintain code easier. That's why frameworks exist.

---

**Example: HW4 Migration**

Migrating from raw PHP to Laravel cut the codebase by 40% while adding features. Authentication bugs from Stage 1 vanished because Laravel's auth is battle-tested. Adding a new endpoint went from 30 minutes to 5 minutes.

> That's the whole point of quality software. Frameworks handle the mundane stuff correctly so you can focus on building actual value.

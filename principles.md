# Quality Software Principles

## SOLID Principles

**Single Responsibility** - A class should do one thing well. Don't build god classes that handle everything.

**Open/Closed** - You should be able to add features without rewriting existing code.

**Liskov Substitution** - If you swap a subclass for its parent class, things shouldn't break.

**Interface Segregation** - Don't force classes to implement methods they'll never use.

**Dependency Inversion** - Depend on abstractions, not concrete implementations. High-level code shouldn't care about low-level details.

---

### DRY (Don't Repeat Yourself)

Copy-pasted code means you have to fix the same bug in five different places. When you see the same logic twice, pull it into a function.

*In HW4, database connection logic lives in one spot. Change the connection string once, everything updates.*

### KISS (Keep It Simple)

Clever code is hard to debug. Simple code is obvious. Future you will thank present you for writing boring, readable code.

### YAGNI (You Aren't Gonna Need It)

Don't build features for hypothetical future requirements. Build what you need right now, and build it properly.

---

## Separation of Concerns

Database queries belong in models. Business logic goes in controllers. Display logic stays in views. Mixing these together creates unmaintainable spaghetti.

*In HW4, authentication happens in middleware, not scattered across every endpoint. Each piece of code has a clear job.*

## Fail Fast

Check for errors early and return clear messages. Don't let invalid data propagate through your system and cause cryptic failures later.

HW4 validates required fields immediately. Missing a parameter returns "400 Bad Request" right away, not a confusing database error.

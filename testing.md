# Testing and Quality Assurance

### Why Testing Matters

Untested code has bugs. You just haven't found them yet.

Manual testing catches obvious problems. Automated tests catch edge cases. Regression tests make sure your fixes actually stay fixed.

---

## Cost of Bugs by Stage

- Find it while coding: Fix it immediately, 1x cost
- Find it during QA: Someone files a ticket, you context-switch back, 10x cost
- Find it in production: Users affected, emergency fix, reputation hit, 100x cost

> Testing shifts bug discovery earlier, which saves exponential time and money.

---

## Testing Approaches in HW4

#### Automated API Testing
Built `test_api.sh` that hits all 14 endpoints. Tests auth, validates parameters, checks error handling.

Runs the entire suite in seconds. Catches regressions immediately after changes. Also doubles as API documentation through examples.

*Downside: Doesn't test how things look in a browser.*

#### Browser-Based Testing
Created `test.html` with forms for each endpoint and live response display.

Good for visual confirmation and testing the actual user experience.

*Downside: Manual process, doesn't record results for regression testing.*

#### Database Testing
Directly queried the database to verify foreign keys work, cascading deletes happen correctly, data integrity holds.

---

### What Good Tests Cover

**Happy path** - normal usage with valid data produces expected results

**Error cases** - invalid inputs return useful error messages instead of crashing

**Edge cases** - empty strings, null values, max lengths, special characters all handled

**Security** - auth actually prevents unauthorized access, SQL injection attempts fail safely

---

## Lessons Learned

Writing tests for Stage 1 revealed auth bugs I completely missed during development. The test scripts forced me to think about what behavior I actually expected. Having automated tests made the Laravel migration way less scary because I could confirm everything still worked.

> Tests aren't optional if you care about quality.

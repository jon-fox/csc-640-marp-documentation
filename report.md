# Quality Software Documentation
**Author:** Jon Fox  
**Course:** CSC 640  
**Semester:** Fall 2025

---

## Introduction

This document serves as a comprehensive guide to building quality software, created to help current and future team members understand the principles, tools, and practices that lead to maintainable, scalable, and reliable software systems.

Throughout this semester, I'm building a REST API project that demonstrates these quality software principles in practice. This documentation will evolve weekly as I apply new concepts and tools.

The REST API project is for managing ai agents, I have defined the API endpoints below.

---

## Week 1: Foundation and Planning (October 18-24, 2025)

### What is Quality Software?

Quality software is code that is:
- **Maintainable**: Easy to understand, modify, and extend
- **Reliable**: Works consistently and handles errors gracefully
- **Secure**: Protects data and requires proper authentication
- **Scalable**: Can grow with increasing demands
- **Well-documented**: Others can understand and work with it

### Project Planning: AI Agent Management System

This week I designed a REST API for managing AI agents and their tasks. Proper planning is the foundation of quality software - rushing into code without design leads to technical debt.

**API Design (14 endpoints):**

*Public Endpoints (7):*
1. `GET /agents` - List all agents
2. `GET /agents/{id}` - Get agent details
3. `GET /tasks` - List all tasks
4. `GET /tasks/{id}` - Get task details
5. `GET /tools` - List available tools
6. `GET /logs` - Get execution logs
7. `GET /tasks/{id}/status` - Get task status

*Secure Endpoints (7 - require Bearer token):*
8. `POST /agents` - Create new agent
9. `PUT /agents/{id}` - Update agent
10. `DELETE /agents/{id}` - Delete agent
11. `POST /tasks` - Create task
12. `PUT /tasks/{id}` - Update task
13. `DELETE /tasks/{id}` - Delete task
14. `POST /agents/{id}/execute` - Execute agent

**Quality Principle Applied:** Clear separation between public read operations and secure write operations. Authentication protects data integrity and prevents unauthorized modifications.

### Development Environment Setup

Setting up a proper development environment is crucial for consistency and reducing "it works on my machine" problems.

**Tools Configured:**
- **NGINX + PHP-FPM**: Production-like local server environment
- **MySQL**: Structured data storage with ACID compliance
- **Git/GitHub**: Version control and collaboration
- **VSCode + Marp**: Documentation and presentation tools

**Quality Principle Applied:** Using NGINX locally mirrors production environments, catching configuration issues early. Version control enables collaboration and rollback capabilities.

### Milestone-Based Planning

Breaking work into milestones prevents cramming and allows for iterative testing and feedback.

**Project Timeline:**
- **Milestone 1** (Oct 25): Database schema and tables
- **Milestone 2** (Nov 1): All API endpoints functional locally
- **Milestone 3** (Nov 7): Agent backend with state management

**Quality Principle Applied:** Incremental development with clear checkpoints ensures each component works before building the next. This catches bugs early when they're cheaper to fix.

### Key Takeaways

1. **Plan before coding** - Design your API structure and authentication before writing code
2. **Environment matters** - Development environments should mirror production
3. **Break work into milestones** - Small, testable increments beat big-bang releases
4. **Security from the start** - Don't add authentication as an afterthought

### HW2 Completion: OOP and Software Design Principles

This week I also completed HW2, which focused on object-oriented programming concepts and software design principles. The assignment reinforced key principles like encapsulation, inheritance, polymorphism, and abstraction all of which are essential for building maintainable and scalable software systems. Understanding these OOP fundamentals directly supports the quality software goals outlined in this project, as proper object design leads to more organized, reusable, and testable code.

---

## Week 2: Framework Preparation and Stage 2 Planning (October 25-31, 2025)

### Preparing for Laravel and Deployment

This week focused on understanding the technology stack for Stage 2 and ensuring all tools were properly configured. I reviewed Module 2 materials covering Laravel and ORM patterns, and Module 3 materials on Docker, Hugo, and GitHub Pages. Understanding these frameworks upfront prevents architectural problems during implementation.

I installed and configured the Laravel development environment including PHP, MySQL, and Composer. Running the provided REST API test scripts from the course materials confirmed all components work together correctly. Creating a test Laravel project verified the setup was production-ready before beginning actual development work.

**Quality Principle Applied:** Testing tools through example projects catches integration issues early. Understanding both the backend framework and deployment infrastructure together prevents costly refactoring when moving from development to production.

### Stage 1 Implementation Begins

Following Milestone 1 from the project plan, I implemented the database schema for the AI agent management system. Created five core tables: agents, tasks, tools, logs, and api_tokens with proper foreign key relationships and indexes for query performance. Automated setup scripts enable quick database initialization on any environment.

**Quality Principle Applied:** Starting with a solid database foundation ensures data integrity through foreign key constraints and proper normalization. Automation scripts eliminate manual setup errors and enable consistent deployment across development and production environments.

### Week 2 Completion Summary

**Stage 1 REST API (Complete):**
- 14 REST API endpoints (7 public GET, 7 protected with bearer tokens)
- PHP + MySQL backend with PDO, bearer token authentication
- 5 database tables (agents, tasks, tools, logs, api_tokens)
- Testing suite: cURL script (test_api.sh) + browser suite (test.html)
- NGINX deployment with automated start/stop scripts and self-contained config
- Standardized .env configuration for DB credentials

**Documentation (Complete):**
- Marp presentation with 30+ slides, endpoint documentation, and screenshots
- PDF export with embedded images
- README with quick-start guide, .env setup, NGINX/PHP usage, and testing instructions
- Code backup created (code-backup.zip)

**Stage 2 Planning (Complete):**
- HW4_plan_stage2.md with 3 milestones (Laravel migration, Docker, GitHub.io)
- HW4_part2_rubric.md with all assignments checked
- Planning files organized in plan/ directory

**Rubrics (Complete):**
- stage1_rubric.md fully completed with all endpoint names, table names, file paths, and GitHub links
- All checkboxes marked (100/100)

---

## Week 3: Homework 3 Completion (November 1-7, 2025)

### HW3 Completion Summary

**Homework 3 (Complete):**
- Assignment completed and uploaded

---

## Week 4: Ahead of Schedule (November 8-14, 2025)

### Week 4 Status

No new work this week - assignments completed ahead of schedule in previous weeks.

---

## Week 5: [To be added]

---
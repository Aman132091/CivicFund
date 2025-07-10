# CivicFund — Budget Allocation System

A simple Ruby on Rails application to manage project budgets and allocations for a civic fund management platform.

## Features

- *User Authentication* — Devise gem se login/signup system.
- *Project Management* — Admin and users can view project listings.
- *Budget Allocation* — Logged-in users can allocate budgets to projects.
- *Admin Reports* — View total budget allocated per project and see which users made allocations.

## How to Run

1. Install dependencies:

bundle install

2. Setup database:

rails db:create rails db:migrate rails db:seed

3. Start the server:

rails server

4. Open in browser:

http://localhost:3000

## Project Structure

- *Users* — Sign up, login, and allocate budgets.
- *Projects* — List of civic development projects.
- *Budgets* — Amount allocations to projects by users.
- *Reports* — Admin report page to track total allocations and individual user contributions.

## Dependencies

- Ruby 3.4.4
- Rails 8.0.2
- Devise for authentication
- PostgreSQL for database

## Notes

- Only authenticated users can access project listings and allocate budgets.
- Admin reports are accessible at:

/admin/reports

## Developed By

Aman Singh

---
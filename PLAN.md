# PLAN

## Purpose

A verified, dated register of what South African public hospital departments offer, with a public page showing how much has been confirmed. The commit history is the evidence trail: from empty baseline to verified fields.

## The three tiers

- Zone2Freelancers: the builder. Asset is the documented method and the commit history.
- The patient: the user. Gets hours, fees, documents, catchment and complaints route in one place.
- The state: owner of the departments. Gets a free map of its own information gaps against standards it already publishes (waiting time guideline, complaints guideline, OHSC inspections).

## Phases

1. Register and progress page (this scaffold). One hospital, one department, all fields tracked.
2. Fill Louis Trichardt Memorial by in-person confirmation, department by department.
3. Patient-facing pages generated from the register (hospital page, department page).
4. Second hospital in the district, to test the template.
5. Booking requests, only if practitioners actually want them.

## Build steps

### Step 1: scaffold (done by setup.ps1)

Builds the local repo, git init, first commit.

### Step 2: GitHub

From the repo folder:

```
gh repo create public-hospital-register --public --source . --remote origin --push
```

### Step 3: deploy

Import the GitHub repo in Vercel. Set Root Directory to `site`. No build command. Every push redeploys.

## Working loop

1. Confirm a field.
2. Edit the hospital JSON.
3. Tick TODO.md and add a line to today's file in `log/`.
4. Run `.\sync-site.ps1`.
5. Commit and push.

## Rules

- Never publish a value as confirmed unless a person verified it, with source and date.
- Use roles, not names, for the staff you asked.
- Independent project: say so on the public page.

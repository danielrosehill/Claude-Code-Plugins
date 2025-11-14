---
description: Initial setup interview to customize this workflow planning workspace for the user
---

Welcome! This command will help you set up your workflow planning workspace by gathering information about your preferences, constraints, and working style.

## Your Mission

Conduct a friendly, systematic interview to gather the user's information and preferences, then update:
1. `context.md` - persistent contextual information
2. `CLAUDE.md` - repository-specific instructions

## Interview Process

### Part 1: Basic Information

Ask the user:
1. What is your name?
2. What timezone are you in? (e.g., EST, PST, local time/local time)
3. What is your typical work schedule?
   - Standard working hours (e.g., 9 AM - 5 PM)
   - Preferred work days (e.g., Monday-Friday, or including weekends?)
   - Any regular time blocks that are always reserved?

### Part 2: Work Context

Ask the user:
4. How would you describe your work situation?
   - Are you employed, self-employed, student, or other?
   - Do you work remotely, in-office, or hybrid?
   - Do you manage multiple projects/roles?

5. What types of activities will you be planning?
   - Professional work only
   - Personal commitments only
   - Both professional and personal (most common)
   - Specific domains (e.g., creative projects, studying, freelance work)

### Part 3: Time Management Preferences

Ask the user:
6. **Date and time notation preferences**:
   - How do you prefer dates written? (e.g., "07-Nov-25", "2025-11-07", "Nov 7, 2025")
   - 12-hour or 24-hour time format?
   - Any timezone notation preferences?

7. **Planning style preferences**:
   - Do you prefer detailed hour-by-hour schedules or flexible time blocks?
   - How granular should daily plans be? (specific times vs. morning/afternoon/evening)
   - Do you like seeing estimated durations for tasks?

8. **Energy and productivity patterns**:
   - When are you most productive? (morning person, night owl, varies?)
   - When do you prefer to schedule demanding cognitive work?
   - How long can you typically focus on deep work? (45 min, 90 min, 2 hours?)
   - Do you need frequent breaks or prefer longer work sessions?

### Part 4: Constraints and Boundaries

Ask the user:
9. **Time constraints**:
   - Any regular commitments? (recurring meetings, classes, family time)
   - Any days/times that should generally be kept free?
   - Maximum working hours per day you want to schedule?

10. **Preferences and boundaries**:
    - Do you want to plan leisure/personal activities or just obligations?
    - Should plans include breaks and transition time?
    - Any activities or categories you want to track separately?

### Part 5: Goals Framework

Ask the user:
11. **Goal tracking preferences**:
    - Do you prefer using a framework like SMART goals, or freeform?
    - Do you have existing short-term, medium-term, or long-term goals you'd like to document now?
    - How do you think about goal timeframes? (weeks, months, quarters, years?)

### Part 6: Tool Integration

Ask the user:
12. **Calendar and tools**:
    - Do you use a calendar system you'd like to integrate with? (Google Calendar, Outlook, etc.)
    - Any other productivity tools you use? (Notion, Todoist, etc.)
    - Would you like to explore MCP integrations for calendar or cloud documents?

## After Gathering Information

1. **Update `context.md`**:
   - Remove the placeholder text
   - Write a clear, comprehensive context document with sections for:
     - Basic information (name, timezone, work schedule)
     - Work context and domains
     - Time management preferences (notation, planning style, granularity)
     - Energy and productivity patterns
     - Regular commitments and constraints
     - Goal tracking approach
     - Any tool integrations or preferences

2. **Update `CLAUDE.md`**:
   - Revise the "Consider the user to be one person" section if needed
   - Update any sections that reference user preferences
   - Ensure the instructions align with how this specific user wants to work

3. **Create initial goals file** (if the user provided goals):
   - Create `goals/goals-YYYY-MM-DD.md` with any goals they mentioned
   - Organize by timeframe (short/medium/long-term)

4. **Confirm setup**:
   - Show the user what you've written to context.md
   - Ask if anything should be adjusted
   - Explain how they can update these files anytime their preferences change

## Key Principles

- Be conversational and friendly
- Ask clarifying questions if answers are vague
- Suggest defaults when users are unsure
- Don't overwhelm - if they skip questions, that's fine
- Make it clear these preferences can be changed anytime
- The goal is to make the planning system work FOR THEM

Once setup is complete, suggest the user try creating their first weekly plan with `/weekly-plan`!

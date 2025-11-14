# Reading Tracker Web App - Context

## Project Vision

I'm building a web application that helps users track their reading habits. The idea came from my personal frustration with existing book tracking apps. I've tried Goodreads, StoryGraph, and several others, but they all seem to fall into two categories: either they're way too complicated with features I never use, or they're too simple and don't give me the insights I want.

What I really want is something that sits in that sweet spot - easy to use but with meaningful analytics. Something I can open quickly, log what I'm reading in like 10 seconds, and then occasionally dive into beautiful statistics about my reading habits.

## User Stories

The target user is basically me and people like me. We're:
- Casual to moderate readers (maybe 20-40 books per year)
- Tech-comfortable but not necessarily developers
- Interested in our habits and patterns
- Not interested in social features or competitive aspects
- Value privacy and data ownership

Key scenarios I imagine:

**Quick Logging:**
User finishes a chapter on their lunch break. They pull up the app on their phone, tap the current book, and mark progress. Takes 5 seconds. Maybe they add a quick note like "wow that plot twist!"

**Weekend Statistics Review:**
User sits down with coffee on Saturday morning and opens the dashboard. They see beautiful charts showing:
- Books completed this month vs. last month
- Reading pace (pages per day)
- Genres they've been gravitating toward
- Reading streaks and patterns

**Discovery Mode:**
User has finished their current book and is looking for something new. The app suggests books based on their reading history - not just "you liked X so here's Y" but more nuanced like "you seem to enjoy mystery novels in the fall" or "you tend to alternate between fiction and non-fiction."

## Technical Thinking

I'm most comfortable with React - I've built several projects with it and understand the ecosystem. For the backend, I was initially thinking Firebase because it would be so quick to set up. Auth, database, hosting - all in one place.

But I'm having second thoughts. Firebase is great for prototyping, but:
1. I want users to own their data
2. I might want to do some complex queries for the recommendation engine
3. Vendor lock-in concerns me for a personal project

So I'm leaning toward building a proper API with Node.js/Express and PostgreSQL. Yes, it's more work upfront, but it gives me:
- Full control over data structure
- Ability to offer data exports easily
- No surprise costs as it scales
- Better for my portfolio (shows I can build real backends)

For hosting, I'm thinking:
- Frontend: Vercel or Netlify (both have great free tiers)
- Backend: Railway or Fly.io
- Database: Railway's PostgreSQL or a small DigitalOcean droplet

## Feature Priorities

### Must Have (MVP)
- User authentication (email/password to start)
- Add books (manual entry and maybe ISBN lookup)
- Log reading progress (currently reading, finished, want to read)
- Basic stats dashboard (books read, pages read, reading pace)
- Mobile-responsive design

### Should Have (Phase 2)
- Book recommendations based on reading history
- Reading goals (books per month/year)
- Export data as JSON/CSV
- Dark mode (I read a lot at night)
- Reading notes and highlights

### Could Have (Future)
- Import from Goodreads/other services
- Reading challenges
- Multiple reading lists/collections
- API for third-party integrations
- Browser extension for adding books

### Won't Have
- Social features (this is deliberate - it's about personal tracking)
- Ads or monetization (personal project)
- Native mobile apps (PWA is good enough)

## Design Philosophy

I want this to feel calm and focused. Not cluttered, not gamified, not trying to get users addicted. Think of apps like Things 3 or Bear Notes - they're beautiful, functional, and respectful of users' time.

Color palette: I'm thinking muted, warm tones. Maybe beige/cream background with dark brown or forest green accents. Should feel like a cozy library, not a tech startup.

Typography: Something readable and classic. Maybe a serif font for headings to give it that literary feel, and a clean sans-serif for body text and UI elements.

The dashboard should be scannable at a glance but allow you to drill down into details if you want. Default to showing current month, but easy to change time range.

## Open Questions

1. **Authentication strategy**: Start with traditional email/password, or go straight to OAuth (Google, Apple)? The "no mandatory account" idea is tricky - maybe allow offline mode with local storage that can optionally sync to an account?

2. **Book data source**: Manual entry is fine for MVP, but people will want to search/add books easily. Open Library API? Google Books API? Need to research which has best free tier and data quality.

3. **Mobile strategy**: Build as PWA from the start, or just make it responsive and add PWA features later? I think PWA from the start makes sense - it's not that much extra work.

4. **Recommendation algorithm**: This is the most complex feature. Start simple with "users who liked X also liked Y" type recommendations? Or try to do something more sophisticated with reading patterns, genres, themes? Maybe punt this to phase 2 entirely.

5. **Data privacy approach**: Should I make this a selling point? "Your data, truly yours" - ability to export everything, delete everything, self-host maybe? Could differentiate from big platforms.

## Timeline Thoughts

I can probably dedicate 10-15 hours per week to this. Realistically:
- Weeks 1-2: Set up project, database schema, basic auth
- Weeks 3-4: Book management (add, edit, delete)
- Weeks 5-6: Reading progress tracking
- Weeks 7-8: Basic statistics dashboard
- Week 9: Polish, testing, deployment
- Week 10: Beta testing with friends

So maybe 2-3 months to MVP? Then gather feedback and decide on phase 2 features.

## Success Metrics

For me personally, this project is successful if:
1. I actually use it daily for at least 6 months
2. At least 5 friends find it useful enough to use regularly
3. I learn something new (probably the recommendation algorithm)
4. The code is clean enough that I'm proud to show it in my portfolio

Not worried about user growth or metrics beyond that. This is a learning project that solves a real problem for me.

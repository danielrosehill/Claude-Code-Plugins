# Reading Tracker Web Application

## Project Overview

A web application for tracking personal reading habits with focus on simplicity, privacy, and meaningful analytics. Target audience: casual to moderate readers (20-40 books/year) who value data ownership and want insights without complexity or social features.

**Design Philosophy**: Calm, focused interface inspired by Things 3 and Bear Notes. Muted warm color palette (beige/cream with dark brown or forest green accents). Reading-focused, not gamified.

## Key Requirements

### MVP Features (Must Have)
- User authentication (email/password)
- Book management (manual entry + ISBN lookup)
- Reading status tracking (currently reading, finished, want to read)
- Basic statistics dashboard:
  - Books/pages read
  - Reading pace metrics
  - Genre distribution
  - Reading streaks and patterns
- Mobile-responsive design
- Quick logging workflow (target: 5 seconds to log progress)

### Phase 2 Features (Should Have)
- Book recommendations based on reading history
- Reading goals (books per month/year)
- Data export (JSON/CSV)
- Dark mode support
- Reading notes and highlights

### Future Considerations (Could Have)
- Import from Goodreads/other services
- Reading challenges
- Multiple reading lists/collections
- Public API
- Browser extension

### Explicitly Out of Scope
- Social features (deliberate design decision)
- Monetization/ads
- Native mobile apps (PWA sufficient)

## Technical Stack

**Recommended Approach:**
- Frontend: React (developer familiarity + ecosystem)
- Backend: Node.js/Express + PostgreSQL (chosen over Firebase)
- Hosting:
  - Frontend: Vercel or Netlify
  - Backend: Railway or Fly.io
  - Database: Railway PostgreSQL or DigitalOcean

**Rationale for PostgreSQL over Firebase:**
- User data ownership and control
- Complex queries for recommendation engine
- Avoid vendor lock-in
- Cost predictability
- Portfolio value (demonstrates full-stack capabilities)

## User Experience Priorities

### Target User Profile
- Casual/moderate readers, tech-comfortable
- Value privacy and data ownership
- Want insights without complexity
- Not interested in social/competitive features

### Core User Workflows

**Quick Logging** (5-second goal):
1. Open app
2. Select current book
3. Mark progress
4. Optional: Add brief note

**Statistics Review**:
- Scannable at-a-glance dashboard
- Default to current month view
- Easy time range adjustment
- Drill-down capability for details

**Book Discovery**:
- Recommendations based on reading patterns
- Nuanced suggestions (seasonal preferences, alternating patterns)
- Not just basic "similar to X" recommendations

## Implementation Guidance

### Phase 1 (Weeks 1-2)
- Project setup and architecture
- Database schema design
- Basic authentication system

### Phase 2 (Weeks 3-4)
- Book management CRUD operations
- ISBN lookup integration

### Phase 3 (Weeks 5-6)
- Reading progress tracking
- Status management system

### Phase 4 (Weeks 7-8)
- Statistics dashboard implementation
- Data visualization components

### Phase 5 (Week 9)
- Polish and testing
- Deployment setup

### Phase 6 (Week 10)
- Beta testing with target users
- Feedback collection

**Time Estimate**: 10-15 hours/week = 2-3 months to MVP

## Technical Decisions Needed

### High Priority
1. **Book Data Source**: Research Open Library API vs. Google Books API (free tier, data quality)
2. **PWA Implementation**: Build as PWA from start or add later? (Recommendation: from start - minimal overhead)
3. **Authentication Strategy**: Email/password vs. OAuth (Google, Apple)?
   - Consider: Offline mode with local storage + optional account sync

### Medium Priority
4. **Recommendation Algorithm**:
   - MVP: Punt to Phase 2
   - Phase 2: Start with collaborative filtering, evolve based on data patterns
5. **Data Privacy Positioning**: Make data ownership a differentiator? Self-hosting option?

## Design Specifications

### Visual Design
- Color palette: Muted warm tones (beige/cream background, dark brown/forest green accents)
- Typography:
  - Headings: Serif font (literary feel)
  - Body/UI: Clean sans-serif
- Mood: Cozy library aesthetic

### Responsive Design
- Mobile-first approach
- Target: Fast, native-feeling experience on phones
- PWA features for offline capability and home screen installation

## Success Criteria

**Project Goals:**
1. Daily personal use for 6+ months
2. 5+ friends using regularly
3. Learning outcome achieved (especially recommendation algorithm)
4. Portfolio-quality codebase

**Not Focused On:**
- User growth metrics
- Monetization
- Viral adoption

## Privacy & Data Ownership

**Core Principles:**
- Users own their data
- Easy export (JSON/CSV)
- Easy deletion (complete data removal)
- No tracking or analytics beyond essential app function
- Potential differentiator vs. established platforms

## Human Context Reference

This project includes a CONTEXT.md file containing detailed, human-authored context including:
- Personal motivation and frustrations with existing solutions
- Detailed user scenarios and thinking process
- Design philosophy and aesthetic preferences
- Technical decision-making rationale
- Timeline and success metric considerations

When you need deeper understanding of the project's purpose, design decisions, or user intent, refer to CONTEXT.md for the full narrative context.

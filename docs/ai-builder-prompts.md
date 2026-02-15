# IELTS Path – AI Builder Prompts

This document provides ready-to-use prompts for AI app builders to generate the **IELTS Path** mobile app and supporting backend.

---

## 1) Master Product Prompt (Use first in any builder)

Build a cross-platform mobile app named **IELTS Path** for iOS and Android.

### Product Goal
Create a structured IELTS preparation experience that takes learners from **foundation to Band 7+** through a level-based path and an AI-powered speaking coach.

### Core Learning Structure
Implement 3 levels with clear progression:

1. **Basic**
   - Sentence structure
   - Essential IELTS grammar
   - Core vocabulary
   - Basic listening comprehension
   - Pronunciation basics

2. **Intermediate**
   - IELTS Listening question types (Sections 1–4)
   - Reading strategies (True/False/Not Given, Matching Headings)
   - Writing Task 1 and Task 2 structure
   - Speaking Part 1 and Cue Card basics

3. **Advanced**
   - Full mock tests
   - Time management drills
   - Complex sentence building
   - Band 7+ writing techniques
   - Speaking simulation

### Feature Modules
- **Home Dashboard**
  - Progress ring
  - Continue learning CTA
  - Daily task card
  - Weak skill highlight
  - Streak counter
- **Lessons**
  - Micro-lessons
  - Interactive quizzes
  - Instant feedback
- **Mock Test**
  - Timed test interface
  - Section progress indicator
  - End-of-test summary
- **AI Speaking Coach**
  - Record audio
  - Upload to backend API
  - Display estimated IELTS band
  - Show 4 category scores (Fluency, Lexical, Grammar, Pronunciation)
  - Show transcript with highlighted issues
  - Show top 3 improvement suggestions

### UX & Visual Design Constraints
- Minimal and professional educational style
- White background, deep blue primary color
- Clean typography, whitespace-heavy layout
- No clutter, no distracting visual effects
- Bottom navigation: **Home, Practice, Mock Test, Profile**
- Keep animations subtle and functional only

### Monetization
- **Freemium**
  - Free: basic lessons + limited speaking evaluations
  - Premium: unlimited speaking feedback, mock tests, advanced analytics

### Non-Negotiables
- Clean information hierarchy
- Fast onboarding
- Structured progression and clear next step
- Speaking results should be easy to scan in under 5 seconds

---

## 2) Lovable Prompt (Flutter App Build)

Use this exact prompt in Lovable:

```text
Build a cross-platform mobile application named “IELTS Path” for iOS and Android using Flutter.

The app must include:

1) Structured learning path with Basic, Intermediate, and Advanced levels.

2) Dashboard with:
- Progress ring
- Continue learning button
- Daily goal/task
- Weak skill highlight
- Streak counter

3) Lesson module with:
- Micro lessons
- Interactive quizzes
- Instant feedback

4) Mock test module with:
- Timed interface
- Section progress indicator
- End summary

5) AI Speaking Voice Agent with:
- Topic card + timer
- Record audio button
- Upload to backend API
- Results screen with:
  - Estimated band score
  - 4 category scores: Fluency & Coherence, Lexical Resource, Grammar, Pronunciation
  - Transcript with highlighted mistakes
  - Top 3 improvement suggestions

Design Requirements:
- Minimal UI
- Professional educational theme
- White background
- Deep blue primary color
- Clean typography
- No clutter
- Bottom navigation: Home, Practice, Mock Test, Profile
- Avoid excessive animation

Backend Integration:
- Add REST API endpoint integration for audio submission
- Parse and render a structured JSON response
- Visualize score breakdown clearly (cards or chart)

Architecture Guidance:
- Use reusable widgets/components
- Keep state management simple and scalable
- Separate screens: Onboarding, Dashboard, Learning Path, Lesson, Speaking, Results, Mock Test, Profile

Output expected:
- Complete Flutter project structure
- Key screens and reusable components
- API service layer with sample request/response mapping
- Seed data for levels and lessons
```

---

## 3) Backend Prompt (FastAPI + Scoring Pipeline)

Use this prompt when generating the API:

```text
Create a production-ready FastAPI backend for the IELTS Path mobile app.

Requirements:
1) Endpoint: POST /api/v1/speaking/evaluate
- Accept multipart audio upload + metadata (user_id, level, prompt_id)
- Store raw audio in object storage-compatible format (S3-ready)
- Queue async processing using Redis worker

2) Processing pipeline:
- Speech-to-text (Whisper-compatible abstraction)
- Fluency metrics: words_per_minute, pause_average, filler_count
- Lexical metrics: lexical_diversity, advanced_vocabulary_score, repetition_penalty
- Grammar metrics: grammar_error_rate, complex_sentence_ratio, sentence_accuracy
- Pronunciation metrics: pronunciation_accuracy, stress_score, intonation_score

3) IELTS score model:
- Compute 4 normalized category scores: fluency, lexical, grammar, pronunciation
- Final estimated band = weighted average with equal weights (25% each)
- Round final band to nearest 0.5

4) Response JSON format:
{
  "estimated_band": 6.5,
  "scores": {
    "fluency": 7.0,
    "lexical": 6.0,
    "grammar": 6.5,
    "pronunciation": 6.0
  },
  "metrics": {
    "words_per_minute": 138,
    "pause_average": 1.2,
    "filler_count": 4,
    "lexical_diversity": 0.57,
    "grammar_error_rate": 0.12,
    "pronunciation_accuracy": 0.81
  },
  "feedback": [
    "Reduce repetition of simple words like 'very'.",
    "Add more complex sentence structures.",
    "Improve stress in multi-syllable words."
  ]
}

5) Engineering quality:
- Pydantic schemas
- OpenAPI docs
- Health endpoint
- Structured logging
- Error handling with clear API messages
- Unit tests for scoring calculator and band rounding
- Dockerfile + docker-compose (API + Redis + Postgres)
```

---

## 4) UI Copy Prompt (Optional Content Generation)

Use this prompt to generate on-brand copy:

```text
Generate concise, professional in-app copy for IELTS Path (educational tone, no hype).

Need copy for:
- Onboarding (3 screens)
- Dashboard headings/subheadings
- Daily speaking challenge card
- Empty states for Practice and Mock Test
- Speaking result explanations for each score category
- Premium upgrade panel (freemium conversion)

Constraints:
- Keep each sentence short and clear
- CEFR-friendly language
- Avoid slang
- Motivational but formal tone
```

---

## 5) Suggested Build Order

1. Generate Flutter shell (navigation + screen scaffolding)
2. Implement dashboard and level progression
3. Implement speaking recording flow and result UI
4. Integrate backend endpoint (mock first, live second)
5. Add mock test and premium gating
6. Polish UX and analytics


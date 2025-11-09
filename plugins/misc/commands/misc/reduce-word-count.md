# Reduce Word Count - Concise Content Editor

Trim content to meet specific word count targets while preserving all essential information and maintaining readability. Perfect for meeting publication limits, creating executive summaries, or tightening verbose writing.

## Your Task

Take the user's content and reduce it to their specified word count (or make it significantly more concise if no target is specified) while keeping all critical information intact.

### Reduction Strategies

#### 1. Eliminate Redundancy
- Remove repeated ideas or points
- Cut redundant adjectives and adverbs
- Eliminate "in other words" restatements
- Remove circular definitions

**Example**:
- Before: "The software is fast and quick, providing rapid response times"
- After: "The software provides rapid response times"

#### 2. Condense Wordy Phrases
- "in order to" → "to"
- "due to the fact that" → "because"
- "at this point in time" → "now"
- "has the ability to" → "can"
- "make a decision" → "decide"
- "take into consideration" → "consider"
- "prior to" → "before"
- "in the event that" → "if"
- "a number of" → "several" or "many"
- "it is important to note that" → [delete]

#### 3. Simplify Sentence Structure
- Combine related sentences
- Remove unnecessary clauses
- Use active voice (usually shorter than passive)
- Cut throat-clearing phrases ("It should be noted that...")

**Example**:
- Before: "There are many developers who prefer TypeScript. They choose it because it provides type safety."
- After: "Many developers prefer TypeScript for its type safety."

#### 4. Remove Padding
- Delete filler words: really, very, quite, basically, actually, literally
- Remove unnecessary qualifiers: "It is worth noting that", "As a matter of fact"
- Cut hedge words when appropriate: somewhat, fairly, rather, pretty much
- Eliminate examples if the point is clear without them

#### 5. Convert to More Concise Forms
- Replace long examples with brief ones
- Use lists instead of prose when appropriate
- Consolidate similar points
- Remove parenthetical asides
- Cut background information that's not essential

#### 6. Prioritize Information
When making deep cuts:
1. Keep the main argument/thesis
2. Preserve key evidence and data
3. Retain critical examples
4. Cut: background context, tangential points, redundant examples, extended explanations

### What to Preserve

- **Core message**: Never sacrifice the main point
- **Key facts and data**: Essential evidence stays
- **Technical accuracy**: Don't oversimplify to the point of incorrectness
- **Logical flow**: Maintain coherent transitions
- **Critical examples**: Keep one strong example rather than three weaker ones

### Reduction Levels

**Light reduction (10-20% cut)**:
- Remove obvious fluff and redundancy
- Tighten wordy phrases
- Minimal content loss

**Moderate reduction (20-40% cut)**:
- Consolidate similar points
- Remove secondary examples
- Simplify explanations
- Some context may be lost

**Heavy reduction (40-60% cut)**:
- Focus on core message only
- One example per point maximum
- Remove most background/context
- Keep only essential information

**Extreme reduction (60%+ cut)**:
- Executive summary style
- Absolute essentials only
- May approach outline form
- Significant detail loss

## Usage Instructions

When the user provides content, they should also specify:
1. **Target word count** (e.g., "reduce to 500 words")
   OR
2. **Reduction percentage** (e.g., "cut by 30%")
   OR
3. **General instruction** (e.g., "make it much more concise")

## Example Transformation

**Before (150 words)**:
```
In today's modern business environment, it has become increasingly important for organizations to leverage technology in order to improve their operational efficiency. There are many different tools and platforms available on the market that can help companies streamline their workflows and processes. One particularly effective approach that has gained significant traction in recent years is the implementation of automation systems. These systems have the ability to handle repetitive tasks that would otherwise require manual intervention by human employees. By automating these routine processes, businesses can free up their valuable human resources to focus on more strategic, high-value activities that require creative thinking and problem-solving capabilities. Additionally, automation can also help to reduce the likelihood of human error, which can be costly for organizations.
```

**After - Reduced to 75 words (50% reduction)**:
```
Organizations increasingly leverage technology to improve operational efficiency. Automation systems effectively handle repetitive tasks that would otherwise require manual intervention. By automating routine processes, businesses free human resources for strategic, high-value activities requiring creative thinking and problem-solving. Automation also reduces costly human errors. Various tools and platforms help companies streamline workflows, making automation one of the most effective approaches gaining traction in modern business.
```

**After - Reduced to 40 words (73% reduction)**:
```
Automation systems handle repetitive tasks, freeing employees for strategic work requiring creativity and problem-solving. This reduces human error and improves operational efficiency. Multiple platforms enable workflow automation, making it an increasingly popular approach for modern businesses.
```

## Output Format

Provide:
1. The reduced version of the content
2. Word count information (original count → new count, % reduction)
3. Brief note about what was cut if the reduction was substantial

## Tips for Best Results

- **Specify your target**: Give a concrete word count or percentage
- **Note priorities**: If certain sections must be preserved, mention them
- **Accept trade-offs**: Heavy reductions mean less detail and nuance
- **Review carefully**: Ensure the condensed version still says what you need it to say

Share your content and desired word count target (or reduction percentage) for trimming.

---
name: refactoring-english
description: Guidelines for prose that serves its reader, from Michael Lynch's Refactoring English. Apply when reviewing, tightening, critiquing, or proofreading writing the user drafted (blog posts, docs, READMEs, design specs, emails, release notes, announcements), when they ask what is wrong with a passage, and as constraints when drafting prose a reader will judge. Do NOT use for code review, fiction, or poetry, where these rules misfire.
---

# Refactoring English

Derived from Michael Lynch's [Refactoring English](https://refactoringenglish.com).

## Guards

- **Strong writing is a stop.** These rules repair weak prose. Aimed at strong prose, they flatten it. When a passage lands, say so and move on.
- **Voice outranks the rules.** A distinctive phrase, a joke, a deliberate fragment belongs to the author. The failure mode is softening: meeting a bold claim with "a gentler version might be." Flag voice only when it blocks comprehension.
- **Preserve meaning exactly.** Numbers, hedges ("usually", "about"), and normative keywords (must, should, may) with their scope survive every rewrite. When you cannot preserve one, leave the sentence alone.
- **Cut words, propose paragraphs.** Rewrite at the word and sentence level on your judgment. Raise paragraph and section cuts as suggestions, quoting the text so the author can restore it.
- **Leave quoted material alone.** Code, log output, error messages, and other people's words are evidence. Touch them only when the surrounding text misreads them. A blockquote is a formatting choice, and authors often paste their own draft into one. Judge a blockquote by what it holds.
- **Change files only when asked**, and report what changed even then.
- **Check your suggestions** for the tells of machine prose: em-dashes everywhere, bold on phrases that do not warrant it, "It's not X, it's Y."

## Procedure

Read the whole piece once before judging any part of it, and match the apparatus to what arrived. A pasted paragraph has no opening, section order, or title, so run only the passes its material supports.

**Name the reader first.** Write one sentence naming the target reader and one naming what they came to gain. Goals usually fall into five kinds: learn a technique, understand a concept, understand a change that affects their work, gain insight into a technology or industry, or enjoy a story or rant.

**Run the passes in order.** Structure first, because one structural fix dissolves many sentence-level problems.

## Pass 1: Structure

### Opening

A reader gives the first few sentences long enough to answer two questions: **is this relevant to me?** and **is this worth my time?** No to either and they leave. Read the opening as the target reader, answer both, and name any that fail. Naming the failure teaches more than handing over a replacement hook.

The hook is often already in the draft, buried below the paragraphs where the author was still warming up. Promote it and cut what preceded it. An opening does not have to deliver the conclusion, only convince the reader that something worth reading is coming. Where the draft offers several candidate openings, line them up, keep whichever earns both questions fastest, and cut it to the sentences doing that work.

- I've been a professional software developer for about 20 years now. I've always had strong opinions about software engineering practices, but some of those opinions have changed over the years. In this article, I'll share the most significant beliefs I've changed about software, and what changed my mind. → I've worked as a software developer for 20 years, and I've always cared deeply about the craft of programming. I've worked at megacorps like Microsoft and Google as well as an indie company with only a handful of developers. Most of my views about software have stayed the same, but I've changed my mind in a few important areas.

The second answers "worth my time?" by giving the reader a reason to trust the opinions. Whatever earns that trust (experience, a number, a promise the piece can keep) belongs in the first few sentences.

Judge the title alongside the opening. The reader tests both questions against the title first, so the piece's strongest fact often belongs there: "How My Approach to Software Development Has Changed in 20 Years" carries more than the paragraph beneath it. A title that names the technology but not the audience or the payoff, like "Testing Ansible Web App Roles with Selenium," leaves all the work to the first sentence.

### Order

Judge every section against the goal you named. When a section answers "what I wanted to say" rather than "what the reader came for", propose cutting it.

Order by the inverted pyramid: bottom line first, then detail for a narrowing audience, then background and theory, if at all. The usual inversion is explaining combustion physics to someone who asked how to make the car go faster.

- Before I show you how list comprehensions work, let me explain how CPython implements lists. → Python's list comprehensions are a concise way to transform or filter items in a list.
- Monday: worked on the signup pages. Tuesday: team off-site. Wednesday: finished the signup pages. → **tl;dr: the UX overhaul is on track to ship by August 1.** Blockers: QA credentials, needed by July 15.

The second reorders a status email around what the manager came for. A diary of the author's week, a history of the project, or the architecture ahead of the payoff all have the pyramid upside down.

### Terms

List what the target reader already knows about the subject, then read the draft against that list. Authors rarely write that list down, and writing it exposes the assumptions a draft makes silently.

An unfamiliar term has two fixes: rewrite so it never appears, or keep it and explain it. Rewrite around a term only when nothing later depends on it.

**Explanation debt.** The debt starts the moment a term the reader does not know appears, and it compounds until the author pays it off. Track every domain term to its first use and check that the definition arrives before it.

- To begin, let's set up your **SuperVuncKey**. In KeeVuncular, that's the root key that protects all of your app's secrets. → To begin, let's set up the root key that protects all of your app's secrets. In KeeVuncular, this root key is called the **SuperVuncKey**.

Both versions define the term. Only the second spares the reader a stretch of holding a word they cannot use.

Titles and headings are the exception, since readers expect the text beneath to explain them. Debt taken deliberately in a heading buys curiosity. Taken by accident in body text it leaks.

**Contradictory assumptions.** Most failures here are not close calls. Ask of each term: does it make sense for someone reading *this* document to know this? A tutorial promising to teach readers who have never written a line of code cannot then explain that "React's efficient JSX transpilation" makes the change feel instant.

**Links are not explanations.** An external link asks the reader to leave, absorb another author's context, and return. Most will not. Explain the term yourself and let the link serve whoever wants more.

**Err toward overexplaining.** A knowledgeable reader skips what they know. An inexperienced reader cannot skip a term they have never seen.

### Density

A reader absorbs new information at a limited rate. Past that rate, nothing lands. Where the text explains something hard, count the concepts new to the reader. If more than one arrives in the same paragraph, separate them. If one concept is still too dense, break it into smaller parts, ordered so each builds only on what came before.

## Pass 2: Sentences

### Verbs

The reader looks for the verb first, so a generic verb both dulls the sentence and delays comprehension. Watch for *be, get, have, do, go, make,* and *use* wherever they appear, and for a noun doing the verb's work, especially one ending in `-ation`, `-ment`, `-ance`, or `-ship`. Replace the generic verb with a precise one, or promote the noun back to a verb. The rewrite usually runs shorter. Leave the ones carrying their weight: a definition like "Docker is a tool for packaging your app" wants no livelier verb.

- The app had two crashes. → The app crashed twice.
- Our identity server provides authentication for new users. → Our identity server authenticates new users.

A precise verb also names who acts, which clears up ambiguity and passive voice at the same time.

- `bingo` is our authoritative naming server. → Clients send human-readable hostnames to `bingo`, and `bingo` responds with the host's IPv6 address.

### Negation

Every negation costs the reader an inversion, the same way `if (isUserInactive == false)` costs more than `if (isUserActive)`. The positive version usually runs shorter too. Keep the negative when the positive runs more convoluted: "This code is not ready to ship" beats any paraphrase.

- The data center was not online. → The data center was offline.
- If the user is not authenticated, the server must not process their requests. → The server must only process a request if the user is authenticated.

### Passive voice

Passive voice costs twice. It often omits who acts, and it inverts the actor → verb → object order English readers expect. Recognize it by a form of "to be" (is, was, has been, will be) with a past participle, less often by "to get" or "to have" ("The site got hacked"), or by a leading clause ("Shamed by his colleagues, Dave stopped using Fortran"). Name the actor.

- The new chat feature was tested by Jane. → Jane tested the new chat feature.

Name the actor from the text where you can. Where the text never names it, ask the author. "The message is signed, and the signature is validated before further processing" leaves three actors unnamed.

Passive earns its place in blameless postmortems ("The production server was accidentally shut down"), in tactful correction ("It looks like the log file was accidentally omitted from the bug report"), and where the actor is genuinely irrelevant ("I was fired from my last job for bringing my pet puma to work").

### Ambiguity

Any sentence the reader parses twice has failed, even when it is correct. Ambiguity is cheap to fix and expensive to spot, so spend the attention on spotting. Work a suspect sentence one word at a time and track which readings are still open at each step. If two readings survive the final word, the sentence is ambiguous.

Where both readings are plausible and the text never settles which is right, ask instead of picking. A confident rewrite of the wrong reading costs the reader more than the ambiguity did.

**Competing antecedents.** For every *it, this, that, which, he, she, they*, check that exactly one referent fits. Name the referent, or restructure until only one fits.

- We switched from Python to Go, which I appreciated. → We switched from Python to Go, a change I appreciated.
- The client extracts a token from the JSON response. If it's malformed, it throws an error. → ... If the response is malformed, the client throws an error.

**Long-distance pronouns.** A pronoun reaching into an earlier paragraph forces the reader to scroll back, breaking skimming. Treat paragraph breaks as context resets, headings and images as harder ones. One re-naming at the top of a paragraph carries the pronouns that follow.

- Worse, **it** allocated only two weeks of dev time. When I asked **him**... → Worse, **the spec** allocated only two weeks of dev time. When I asked **my VP**...

**Misplaced and dangling modifiers.** Readers bind a modifier to the nearest plausible noun. Put it beside what it modifies, and check that what it modifies appears in the sentence at all.

- Submerged in floodwaters, the developers were unable to access the production server. → Submerged in floodwaters, the production server remained inaccessible to the developers.
  > A passive pass compounds: the developers were unable to access the production server, as the storm had submerged it in five feet of floodwaters.
- As a lifelong C developer, my dog is named `#define`. → As a lifelong C developer, I named my dog `#define`.

**Garden paths.** The ending forces the reader to reinterpret the beginning. Read the sentence left to right and mark the word that forces you to revise a part of speech you had already assigned. Rewrite so the sentence means the same thing at every word.

- The unexpected method returns default to null. → The return value from the unexpected method defaults to null.
- The package downloaded almost ten million times from npm.org turned out to contain malware. → The package reached almost ten million downloads on npm.org before users discovered that it contained malware.

**Multi-verb pile-ups.** Consecutive words that could each act as a verb leave the reader no stable parse. Swap the verb for one that cannot double as a noun, or split the chain into sentences and restore the connecting words it dropped.

- Patch release lock controls bypass proxy filter limits. → The system has controls that manage how it acquires locks for patch releases. These controls bypass the limits that normally apply to the proxy filter.

**Subject first.** Modifiers stacked ahead of the subject have nothing to attach to yet, so the reader holds them until the subject arrives. Prefer this, do not enforce it: every sentence opening on its subject reads monotonously.

- At 2 AM on a cold December morning, bleary-eyed and disoriented, Michael deployed the new app. → Michael deployed the new app at 2 AM on a cold December morning, bleary-eyed and disoriented.

## Pass 3: Deletion

Ask of every word whether the sentence would mean the same without it, then ask the same of every sentence, paragraph, and section.

**Filler:** very, really, pretty, much, just, actually, own. Where the intensity is real, name it rather than propping up a weak word. Keep "own" where it carries a personal claim: "I finally wrote my own programming language."

- I discovered a very useful feature of Linux. → I discovered a useful feature of Linux.
- We've had really good results with SQLite. → We've had outstanding results with SQLite.

**Helper verbs:** be, has/have, can/could, will/would, do/did. Delete only when tense and condition survive unchanged, since "will be complete" and "is complete" differ.

- As you can see in the graph below → As you see in the graph below

**Long words.** Prefer the short familiar word, and watch the suffixes `-ing`, `-ation`, `-ance`, `-ship`, `-ment`.

- The server checks the token to grant authorization to the request. → The server checks the token to authorize the request.
- What is the relationship between the CPU spike and the disk error? → How does the CPU spike relate to the disk error?

**Sections that earn less than their space.** Propose the cut even when the section is good, since a section earns its place by value per line of the reader's attention. Authors rarely ask for the cut section back.

## Reporting

Quote the span, name the pattern, give the rewrite. Cite section headings and quotes, never line numbers, since they shift during editing.

Order findings by pass. Within a pass, lead with the instances that cost the reader the most: a sentence they cannot parse outranks a sentence that merely runs long.

Report every structural finding. From passes 2 and 3, report at most the twelve costliest instances, then name each remaining pattern once with a count ("nine more helper verbs, listed on request"). A review the author cannot act on in one sitting is a review they will not act on.

Collect open questions into one numbered block at the end, each with a stated default, so the author can approve the batch in a word. Say plainly when a section needs nothing.

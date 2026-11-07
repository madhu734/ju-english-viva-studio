# Content contract

Read the whole assigned PDF text in ../tmp before authoring. These are study guides, not infallible authorities. The syllabus controls scope. Verify gaps or uncertain claims against primary academic sources online. Paraphrase in simple, accurate English. Cite only the supplied PDF pages actually used, or external sources actually consulted. Original examples must be identified as teaching examples, not data from research. Do not claim access to the original textbooks referred to by the guides.

One JSON file per course, E403.json etc. Do not modify other courses. Shape:

```
{
 "id":"E403", "title":"Critical and Cultural Theories", "shortTitle":"Critical Theory",
 "overview":"One clear paragraph mapping the course.",
 "journey":["Three or four memorable steps/relationships in this course"],
 "sources":[{"id":"E403","title":"E403.pdf","kind":"pdf","file":"E403.pdf","pageCount":84},{"id":"unique-external-id","title":"Title","kind":"web","url":"https://verified..."}],
 "groups":[{"id":"e403-formalism","title":"Formalism and New Criticism","syllabus":["Defamiliarization (Shklovsky)","Foregrounding (Mayakovsky)","Practical criticism (Richards)"]}],
 "topics":[{
   "id":"e403-defamiliarization", "groupId":"e403-formalism", "title":"Defamiliarization", "aliases":[],
   "core":"Accurate short definition.",
   "explanation":"Useful further explanation, normally 40–100 words, not filler.",
   "example":"A concrete teaching example and WHY it illustrates the concept.",
   "confusion":"A substantive distinction or caveat, not generic study advice.",
   "syllabusTerms":["Defamiliarization (Shklovsky)"],
   "sources":[{"id":"E403","pages":[3]}],
   "related":[],
   "questions":[{
     "id":"e403-defamiliarization-define", "prompt":"What is defamiliarization?",
     "type":"definition", "difficulty":"foundation", "essential":true,
     "shortAnswer":"One-sentence direct answer.",
     "answer":"A concise speakable answer; usually 20–65 words; identification may be shorter.",
     "keyPoints":["Key point","Key point"],
     "explanation":"Optional further explanation if the topic explanation does not address this question.",
     "followUps":["id-of-related-applied-question"]
   }]
 }]
}
```

Question types: definition, identification, contribution, distinction, example, explanation, application, criticism, connection.
Difficulty: foundation, applied, challenge. Difficulty reflects thinking, not length.
Every topic needs a direct question; major groups need genuine application/distinction questions and critical questions. Do not create trivial generic duplicates to hit quotas. Aim 80–110 unique questions per course, with exactly 20 essentials spanning every group. Include at least 5 challenge questions and at least 8 follow-up links per course. Questions inherit topic sources; override `sources` on an individual question when necessary. Avoid MCQ options. Each source reference must substantiate the content, not merely share a keyword. Include all syllabus concepts, even if several closely related concepts share a topic. Every group syllabus term must appear in at least one topic's syllabusTerms. Use concise self-contained answers, actual examples, named distinctions. Use only English on the site. Symbols and diagrams can be text; IPA must be accurate and specify accent when appropriate.

Global integration later flattens questions, inheriting courseId, topicId, and sources, and generates coverage reports. A main course's essential count is exactly 20; cross-course questions are separate and are not essentials. Related topic IDs and followUp IDs must resolve.

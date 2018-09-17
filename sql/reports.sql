SELECT DISTINCT
	(
	SELECT 
		count(rr.RespondentId) AS participants
	FROM dbo.OpenResponses AS rr 
	LEFT OUTER JOIN dbo.ProjectQuestions pq ON pq.Id = rr.QuestionId
	LEFT OUTER JOIN dbo.Respondents res ON res.Id = rr.RespondentId
	WHERE 
	res.ManualInvalid = 0 AND 
	pq.ProjectId = 'jan-rbc-88') AS completions
	,(
	SELECT 
		count(rr.RespondentId) AS participants
	FROM dbo.OpenResponses AS rr 
	LEFT OUTER JOIN dbo.ProjectQuestions pq ON pq.Id = rr.QuestionId
	LEFT OUTER JOIN dbo.Respondents res ON res.Id = rr.RespondentId
	WHERE 
	pq.ProjectId = 'jan-rbc-88') AS participants
	, rr3.RespondentId 
	, pq3.Value AS Question
	, rr3.Answer
	, LEN(rr3.Answer) AS answerLength
FROM dbo.OpenResponses rr3 
LEFT OUTER JOIN dbo.ProjectQuestions pq3 ON pq3.Id = rr3.QuestionId 
LEFT OUTER JOIN dbo.Respondents res3 ON res3.Id = rr3.RespondentId 
WHERE pq3.Projectid = 'jan-rbc-88' 
GROUP BY rr3.RespondentId, pq3.Value, rr3.Answer;

/*
{
    "project": 1234567,
    "client": 65432,
    "questions": [
        { 
            "id": 543,
            "question": "the Question",
            "type": "options",
            "items": [
                "Yes",
                "No",
                "Unsure"
            ],
            "answer": null,
            "duration": "00:00:00",
            "subset": [
                {
                    "id": 554,
                    "parent": 543,
                    "type": "open",
                    "question": "Why did you answer yes?",
                    "gibberish": false,
                    "answer": null,
                    "duration": "00:00:00"
                },
                {
                    "id": 554,
                    "parent": 543,
                    "type": "open",
                    "question": "Why did you answer no?",
                    "gibberish": false,
                    "answer": null,
                    "duration": "00:00:00"
                },
                {
                    "id": 554,
                    "parent": 543,
                    "type": "open",
                    "question": "Why are you unsure?",
                    "gibberish": false,
                    "answer": null,
                    "duration": "00:00:00"
                }
            ]
        },
        {
            "id": 765,
            "question": "the question",
            "type": "boolean",
            "items": [
                true,
                false
            ],
            "answer": null,
            "duration": "00:00:00",
            "subset": [
                {
                    "id": 554,
                    "parent": 543,
                    "type": "open",
                    "gibberish": false,
                    "answer": null,
                    "duration": "00:00:00"
                }
            ]
        },
        {
            "id": 987,
            "question": "the question",
            "type": "open",
            "gibberish": false,
            "answer": null,
            "duration": "00:00:00"
        }
    ]
}
*/
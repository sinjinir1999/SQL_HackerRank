-- Interviews

SELECT c.contest_id
	,c.hacker_id
	,name
	,sum(total_submissions)
	,sum(total_accepted_submissions)
	,sum(total_views)
	,sum(total_unique_views)
FROM Contests c
LEFT JOIN Colleges co ON c.contest_id = co.contest_id
LEFT JOIN Challenges ch ON co.college_id = ch.college_id
LEFT JOIN (
	SELECT challenge_id
		,sum(total_views) AS total_views
		,sum(total_unique_views) AS total_unique_views
	FROM view_stats
	GROUP BY 1
	) vs ON ch.challenge_id = vs.challenge_id
LEFT JOIN (
	SELECT challenge_id
		,sum(total_submissions) AS total_submissions
		,sum(total_accepted_submissions) AS total_accepted_submissions
	FROM submission_stats
	GROUP BY 1
	) ss ON ch.challenge_id = ss.challenge_id
GROUP BY 1
	,2
	,3
HAVING sum(total_submissions) <> 0
	AND sum(total_accepted_submissions) <> 0
	AND sum(total_views) <> 0
	AND sum(total_unique_views) <> 0
ORDER BY 1

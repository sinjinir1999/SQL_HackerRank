-- Contest Leaderboard

SELECT h.hacker_id
	,h.name
	,sum(scores) AS total_score
FROM (
	SELECT challenge_id
		,hacker_id
		,max(score) AS scores
	FROM Submissions
	GROUP BY 1
		,2
	) s
LEFT JOIN Hackers h ON h.hacker_id = s.hacker_id
GROUP BY 1
	,2
HAVING SUM(scores)
ORDER BY SUM(scores) DESC
	,h.hacker_id

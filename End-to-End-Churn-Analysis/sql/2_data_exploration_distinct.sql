SELECT
    Gender,
    COUNT(*) AS TotalCount,
    COUNT(*) * 100.0 / (SELECT COUNT(*) FROM stg_Churn) AS Percentage
FROM stg_Churn
GROUP BY Gender;

SELECT
    Contract,
    COUNT(*) AS TotalCount,
    COUNT(*) * 100.0 / (SELECT COUNT(*) FROM stg_Churn) AS Percentage
FROM stg_Churn
GROUP BY Contract;

SELECT
    State,
    COUNT(*) AS TotalCount,
    ROUND(
        COUNT(*) * 100.0 /
        (SELECT COUNT(*) FROM stg_Churn),
        2
    ) AS Percentage
FROM stg_Churn
GROUP BY State
ORDER BY Percentage DESC;

SELECT DISTINCT Internet_Type
FROM stg_Churn
SELECT 
    user_id,
    COUNT(book_id) AS [Total Books To Read]
FROM to_read
GROUP BY user_id
ORDER BY [Total Books To Read] DESC;









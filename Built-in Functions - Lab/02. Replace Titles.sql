select replace (title, 'The', '***')
as Title from `books`
where substring(title,1,3) = 'The';
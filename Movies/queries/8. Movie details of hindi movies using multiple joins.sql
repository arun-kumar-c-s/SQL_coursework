# Generate a report of all Hindi movies sorted by their revenue amount in millions.
# Print movie name, revenue, currency, and unit

select m.title as movie_name, revenue, currency, unit from movies m join financials f 
on m.movie_id = f.movie_id
join languages l on l.language_id = m.language_id
where l.name='hindi'
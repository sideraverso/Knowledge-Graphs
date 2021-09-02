// How would you modify the above to return just the name and birth year of the person?
MATCH (p:Person) RETURN p.name AS name, p.born AS birth_year LIMIT 5

// How many distinct co-actors are there for Tom Hanks?
MATCH (tom:Person {name: 'Tom Hanks'})-[:ACTED_IN]->(m:Movie)<-[:ACTED_IN]-(p:Person) RETURN COUNT(DISTINCT p)

// How many actors are within 3 degrees (hops) from Tom Hanks?
MATCH (p:Person {name: 'Tom Hanks'})-[*1..3]-(p2:Person) RETURN COUNT(DISTINCT(p2.name))


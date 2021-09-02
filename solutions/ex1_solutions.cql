// Where was Barack Obama born?
MATCH (n:Node {name: 'oh bah mə'})-[:be|:bear]->(p) 
WHERE p:Country OR p:AdministrativeArea OR p:Continent OR p:Place 
RETURN n, p

// How many Obama's are in the graph
MATCH (n:Node)
WHERE n.name CONTAINS 'obama'
RETURN DISTINCT n.name // Or RETURN COUNT(DISTINCT n)

// Drop duplicates
MATCH (n:Node) 
WITH n.name AS name, COLLECT(n) AS nodes 
WHERE SIZE(nodes)>1 
FOREACH (el in nodes | DETACH DELETE el)


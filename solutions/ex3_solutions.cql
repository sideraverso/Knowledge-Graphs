// How many duplicates are there?

MATCH (n:Node) 
WITH n.name AS name, n.node_labels AS labels, COLLECT(n) AS nodes 
WHERE SIZE(nodes) > 1 
RETURN [n in nodes | n.name] AS names, [n in nodes | n.node_labels] as labels, SIZE(nodes) 
ORDER BY SIZE(nodes) DESC

// Drop duplicates

MATCH (n:Node) 
WITH n.name AS name, COLLECT(n) AS nodes 
WHERE SIZE(nodes)>1 
FOREACH (el in nodes | DETACH DELETE el

// Where was Barack Obama born?

MATCH (n:Node {name: 'Barack Obama'})-[:place_of_birth]->(place:Node) 
RETURN place.name
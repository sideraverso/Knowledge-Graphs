// Calculate in-degree of the nodes

MATCH (n:Node) 
WITH n, size((n)<--()) AS inDegree 
RETURN n.name, inDegree 
ORDER BY inDegree DESC

//Node similarity based on awards received

CALL gds.graph.create('awards', '*', 'award_received');

CALL gds.nodeSimilarity.stream('awards')
YIELD node1, node2, similarity
RETURN gds.util.asNode(node1).name AS Person1, gds.util.asNode(node2).name AS Person2, similarity
ORDER BY similarity DESCENDING, Person1, Person2;

// Do the larger communities make sense? (pick ID with largest size)

CALL gds.louvain.stream('member-undir') 
YIELD nodeId, communityId 
WHERE communityId = 1170 
RETURN gds.util.asNode(nodeId).name AS name, communityId


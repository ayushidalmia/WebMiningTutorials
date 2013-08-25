@outputSchema("n:chararray")
def getPairs(s):
    t = s
    l = len(t)
    if l == 1:
	return None
    result = "";
    for u in range(0,l):
	for v in range(u+1,l):
	    result = result + str(t[u])[1:-2] +":"+ str(t[v])[1:-2] +"@"
    return result[:-1]

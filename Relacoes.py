def is_transitive(relation):
    #print(relation)
    for a,b in relation:
        for c,d in relation:
            #print ((a,b),(c,d))
            if b == c and ((a,d) not in relation):
                    #print ((a,b),(c,d))
                    return False
    return True

def is_symmetric(Relation):
    if all(tup[::-1] in Relation for tup in Relation):
        return True

    return False

def is_reflexive(Set, Relation):
    ''' (a,a),(b,b) => x = y'''
    newSet = {(a, b) for a in Set for b in Set if a == b}
    if Relation >= newSet:
        return True

    return False

a = {0,1,2,3}
rel = {(0,0), (0,1),(0,3), (1,0),(1,1),(2,2),(3,0),(3,3)}
rel2 = {(0,0),(0,2),(0,3),(2,3)}
if(is_reflexive(a,rel)):
    print("eh reflexivo")

if(is_symmetric(rel)):
    print("eh simetrico")

if(is_transitive(rel2)):
    print("eh transitivo")

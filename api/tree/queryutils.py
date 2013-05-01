def qtranslation(XMLQuery):

    #initialize both stack S and query Qd as empty
    s = []
    q = ""

    """
    Assign a unique variable name Vi to each node in XMLQuery
    tree and replace corresponding node ID with Vi
    """
    V = qAssignName(XMLQuery)

    Vp = None

    #the root node of the tree in XMLQuery
    Vc = V[0]

    QueryConstruction(V, s, Vp, Vc)

    while len(s) > 0:
        sub = s.pop()
        q.append(sub)

    return q


def qAssignName(XMLQuery):
    return XMLQuery


def QueryConstruction(V, S, Vp, Vc):
    return S

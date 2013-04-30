import xml.etree.ElementTree as XML


def qtranslation(parentNode):

    #initialize both stack S and query as empty
    s = []
    query = ""

    """
    Assign a unique variable name Vi to each node in XMLQuery
    tree and replace corresponding node ID with Vi
    """

    QueryConstruction(parentNode, s, None)

    while len(s) > 0:
        sub = s.pop()
        query += sub + ", "

    query = query[:-2] + "."
    return query


def childListToString(childList):
    str = ', '.join(childList)
    return "[" + str + "]"


def QueryConstruction(currentNode, s, parent):

    childList = list()
    cquery = ""

    for node in currentNode.findall('node'):
        print node

        if node.attrib['type'] == "leaf":
            childList.append(node.attrib['nID'])
            #print node.find("edge")
        else:
            print "rec call"
            QueryConstruction(node, s, currentNode)

    #for hirizontal edge (, Vh) from Vc do
    #   push SMP(treeId, currentNode, Vh) into s

    #if edge(Vp, Vc) from Vp has constraints
    #   push SMP(treeId, parent, currentNode) into s

    if len(childList) > 0:
        print "parAll"
        cquery = "parAll(treeId, " + currentNode.attrib['nID'] + ", " + childListToString(childList) + ")"

    if (currentNode.attrib['type'] == 'root'):
        print "root"
        tquery = "roots(treeId, " + currentNode.attrib['nID'] + ")"

        if cquery is not "":
            cquery = tquery + ", " + cquery

    elif (currentNode.attrib['type'] == 'node'):
        print "node"

        if parent is not None:
            tquery = "pEdges(treeId, " + parent.attrib['nID'] + ", " + currentNode.attrib['nID'] + ")"

        if cquery is not "":
            cquery = tquery + ", " + cquery
        else:
            cquery = tquery

    elif (currentNode.attrib['type'] == 'any'):
        print "any"
        tquery = "anc(treeId, " + parent.attrib['nID'] + ", " + currentNode.attrib['nID']

        if cquery is not "":
            cquery = tquery + ", " + cquery
        else:
            cquery = tquery

    elif (currentNode.attrib['type'] == 'lca'):
        print "lca"

        if parent is not None:
            cquery = "anc(treeId, " + parent.attrib['nID'] + ", " + currentNode.attrib['nID'] + "), lca(treeId, " + currentNode.attrib['nID'] + ", childrenList)"
        else:
            cquery = "lca(treeId, " + currentNode.attrib['nID'] + ", childList)"

    elif (currentNode.attrib['type'] == 'subtree'):
        print "subtree"

        if parent is not None:
            cquery = "anc(treeId, " + parent.attrib['nID'] + ", " + currentNode.attrib['nID']

    elif (currentNode.attrib['type'] == 'join'):
        print "join"

        cquery = "anc(treeId, " + parent.attrib['nID'] + ", " + currentNode.attrib['nID'] + ")"

    s.append(cquery)

    print s


def main():

    import sys

    feed = open(sys.argv[1], 'r')

    tree = XML.parse(feed)
    root = tree.getroot()

    firstNode = root.find("node")

    query = qtranslation(firstNode)

    print "\n\n" + query

if __name__ == "__main__":
    main()

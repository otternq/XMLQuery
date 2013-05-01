% Database

% roots(treeID, nodeID, author, ...).
% nodes(nodeID, nodename, ...).
% pEdges(treeID, fromNodeID, toNodeID, edgename, ...).

% hEdges(treeID, fromNodeID, toNodeID, edgename, ...).

% Root Nodes/Trees

roots(1,20,jamil).
roots(2,29,hasan).

% Leaf Nodes

nodes(1,acalyptrata).
nodes(2,oestroidea).
nodes(3,muscoidea).
nodes(4,hippoboscoidea).
nodes(5,syrphoidea).
nodes(6,phoroidea).
nodes(7,aschiza).
nodes(8,emidoidea).
nodes(9,asiloidea).
nodes(10,nemastrinoidea).
nodes(11,tabanomorpha).
nodes(12,xylophagomorpha).
nodes(13,stratiomyomorpha).
nodes(14,tipuloidea).
nodes(15,psychodomorpha).
nodes(16,bibionomorpha).
nodes(17,blephariceromorpha).
nodes(18,culicomorpha).
nodes(19,ptychopteromorpha).

% Internal Nodes

nodes(20,nematocera).
nodes(21,brachycera).
nodes(22,tabanomorpha).
nodes(23,muscomorpha).
nodes(24,eremoneura).
nodes(25,cyclorrhapha).
nodes(26,calypterata).
nodes(27,schizophora).

% Ancestral Edges

pEdges(1,20,36).
pEdges(1,20,35).
pEdges(1,36,19).
pEdges(1,36,18).
pEdges(1,35,34).
pEdges(1,35,17).
pEdges(1,34,33).
pEdges(1,34,16).
pEdges(1,33,15).
pEdges(1,33,32).
pEdges(1,32,14).
pEdges(1,32,21).
pEdges(1,21,22).
pEdges(1,21,23).
pEdges(1,22,13).
pEdges(1,22,31).
pEdges(1,31,12).
pEdges(1,31,11).
pEdges(1,23,10).
pEdges(1,23,30).
pEdges(1,30,9).
pEdges(1,30,24).
pEdges(1,24,8).
pEdges(1,24,25).
pEdges(1,25,7).
pEdges(1,25,29).
pEdges(1,29,28).
pEdges(1,29,6).
pEdges(1,28,5).
pEdges(1,28,27).
pEdges(1,27,26).
pEdges(1,27,1).
pEdges(1,26,4).
pEdges(1,26,37).
pEdges(1,37,2).
pEdges(1,37,3).

pEdges(2,29,28).
pEdges(2,29,6).
pEdges(2,28,5).

pEdges(2,28,27).
pEdges(2,27,26).
pEdges(2,27,1).

pEdges(2,26,4).
pEdges(2,26,37).
pEdges(2,37,2).

pEdges(2,37,3).


% Horizontal Edges

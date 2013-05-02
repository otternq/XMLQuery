% Database

% roots(treeID, nodeID, author, ...).
% node(treeID,nodeID, nodename, ...).
% pEdge(treeID, fromNodeID, toNodeID, edgename, ...).
% hEdge(treeID, fromNodeID, toNodeID, edgename, ...).

% Root node/Trees

root(1,20,jamil).
root(2,0,hasan).
root(3,29,hasan).

% Leaf nodes

node(1,1,acalyptrata).
node(1,2,oestroidea).
node(1,3,muscoidea).
node(1,4,hippoboscoidea).
node(1,5,syrphoidea).
node(1,6,phoroidea).
node(1,7,aschiza).
node(1,8,emidoidea).
node(1,9,asiloidea).
node(1,10,nemastrinoidea).
node(1,11,tabanomorpha).
node(1,12,xylophagomorpha).
node(1,13,stratiomyomorpha).
node(1,14,tipuloidea).
node(1,15,psychodomorpha).
node(1,16,bibionomorpha).
node(1,17,blephariceromorpha).
node(1,18,culicomorpha).
node(1,19,ptychopteromorpha).

% Internal nodes

node(1,20,nematocera).
node(1,21,brachycera).
node(1,22,tabanomorpha).
node(1,23,muscomorpha).
node(1,24,eremoneura).
node(1,25,cyclorrhapha).
node(1,26,calypterata).
node(1,27,schizophora).

% Ancestral Edges

pEdge(1,20,36).
pEdge(1,20,35).
pEdge(1,36,19).
pEdge(1,36,18).
pEdge(1,35,34).
pEdge(1,35,17).
pEdge(1,34,33).
pEdge(1,34,16).
pEdge(1,33,15).
pEdge(1,33,32).
pEdge(1,32,14).
pEdge(1,32,21).
pEdge(1,21,22).
pEdge(1,21,23).
pEdge(1,22,13).
pEdge(1,22,31).
pEdge(1,31,12).
pEdge(1,31,11).
pEdge(1,23,10).
pEdge(1,23,30).
pEdge(1,30,9).
pEdge(1,30,24).
pEdge(1,24,8).
pEdge(1,24,25).
pEdge(1,25,7).
pEdge(1,25,29).
pEdge(1,29,28).
pEdge(1,29,6).
pEdge(1,28,5).
pEdge(1,28,27).
pEdge(1,27,26).
pEdge(1,27,1).
pEdge(1,26,4).
pEdge(1,26,37).
pEdge(1,37,2).
pEdge(1,37,3).

 

pEdge(3,29,28).
pEdge(3,29,6).
pEdge(3,28,5).
pEdge(3,28,27).
pEdge(3,27,26).
pEdge(3,27,1).
pEdge(3,26,4).
pEdge(3,26,37).
pEdge(3,37,2).
pEdge(3,37,3).

pEdge(2,0,1,0.262).
pEdge(2,0,2,0.125).
pEdge(2,2,3,0.332).
pEdge(2,2,4,0.044).
pEdge(2,4,5,0.231).
pEdge(2,4,6,0.048).
pEdge(2,6,7,0.074).
pEdge(2,7,8,0.164).
pEdge(2,7,9,0.041).
pEdge(2,9,10,0.080).
pEdge(2,9,17,0.148).
pEdge(2,10,11,0.015).
pEdge(2,10,14,0.014).
pEdge(2,11,12,0.080).
pEdge(2,11,13,0.077).
pEdge(2,14,15,0.047).
pEdge(2,14,16,0.038).
pEdge(2,6,18,0.086).
pEdge(2,18,19,0.035).
pEdge(2,18,20,0.040).

node(2,0,null).
node(2,2,null).
node(2,1,myh16).
node(2,3,myh15).
node(2,4,null).
node(2,5,myh14).
node(2,6,null).
node(2,7,null).
node(2,8,myh13).
node(2,9,null).
node(2,10,null).
node(2,11,null).
node(2,14,null).
node(2,12,myh8).
node(2,13,myh4).
node(2,15,myh2).
node(2,16,myh1).
node(2,17,myh3).
node(2,18,null).
node(2,19,myh7).
node(2,20,myh6).

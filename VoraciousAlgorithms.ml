(*those are the algorithms we are going to code *)
(*Kruskal*)
(*Prim *)
(*Dijkstra*)
(*-----------------------------------------PROGRAMM-------------------------------------------*)
(*----------step1------------*)
(*this type is for vertex*)
type vertex = {
    name: string;
    adjacentVertex:vertex list;
    edges: edge list ref;
}
(*this type is for egge*)
and edge = {
    value: int;
    vertexOne: vertex option ref;
    vertexTwo: vertex option ref;
}
(*----------step2------------*)
(*duplicate_vertex*)
(*----------step3------------*)
(*isEnoughVertex*)(*we must have at least two vertex*)
(*isEnoughEdge*)(*we must have at least n-1 edges*)
(*----------step4------------*)
(*-----------------------------------------END-------------------------------------------*)

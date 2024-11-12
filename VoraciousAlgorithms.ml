(*this type is for vertex*)
type vertex = {
    name: string;
    edges: edge list ref;
}
(*this type is for egge*)
and edge = {
    value: int;
    vertexOne: vertex option ref;
    vertexTwo: vertex option ref;
}
(*those are the algorithms we are going to code *)
(*Kruskal*)
(*Prim *)
(*Dijkstra*)

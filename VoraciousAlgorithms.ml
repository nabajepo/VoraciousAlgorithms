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
type graph ={
    vertices:vertex list;
    edges:edge list
}
(*----------step2------------*)
(*duplicate_vertex*)
let rec duplicate_vertex lst eltIndex index rep=(*here we return 0 if there is not duplicate for a 
                                                   specific element in a list and 1 if there is a duplicate*)
    if (index=List.length lst)  then rep
    else
        let element=List.nth lst eltIndex in
        let elementCompare=List.nth lst index in
        if ((element<>elementCompare) &&
            (eltIndex<>index)) then duplicate_vertex lst eltIndex (index+1) 0
        else
            1
let rec duplicate_vertices lst index rep=(*check if a list has duplicate vertices *)
    if(index=List.length lst) then rep
    else
        let resp=duplicate_vertex lst index 0 0 in
        if(resp=0) then duplicate_vertices lst (index+1) resp 
        else
            1        

(*----------step3------------*)(*Here we check if a graph is connected *)
(*connect_graph*)(*here me make graphe after connecter each graph with his adjencies*)    
(*getVerticesList*)(*only a list before making types and we must ask how many vertex we want from 2 to infinite*)
(*getEdges*)(*we must have at most n-1 and we have to presente it  *)
(*----------step4-----------*)(*we make vorociousAlgorithmes*)
(*kruskal*)
(*Prim *)
(*Dijkstra*)
(*----------step5-----------*)
(*explanation*)(*here we get a location and create a txt which explain our procedures*)
(*----------step6-----------*)
(*voraciousAlgorithms*)
(*-----------------------------------------END-------------------------------------------*)

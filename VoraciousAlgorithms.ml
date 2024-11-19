(*those are the algorithms we are going to code *)
(*Kruskal*)
(*Prim *)
(*Dijkstra*)
(*-----------------------------------------PROGRAMM-------------------------------------------*)
(*----------step1------------*)
(*this type is for vertex*)
exception Error of string;
type vertex = {
    name: string;
    adjacentVertex:vertex list;
    edges: edge list ref;
    visited:bool;
}
(*this type is for egge*)
and edge = {
    value: int;
    vertexOne: vertex option ref;
    vertexTwo: vertex option ref;
    visited:bool;
}
type graph ={
    vertices:vertex list;
    edges:edge list;
}
(*----------step2------------*)
(*duplicate_vertex*)
let rec duplicate_vertex lst eltIndex index =(*here we return 0 if there is not duplicate for a 
                                                   specific element in a list and 1 if there is a duplicate*)
    if (index=List.length lst)  then 0
    else
        let element=List.nth lst eltIndex in
        let elementCompare=List.nth lst index in
        if ((element<>elementCompare) &&
            (eltIndex<>index)) then duplicate_vertex lst eltIndex (index+1) 0
        else
            1
let rec duplicate_vertices lst index=(*check if a list has duplicate vertices *)
    if(index=List.length lst) then 0
    else
        let resp=duplicate_vertex lst index 0 0 in
        if(resp=0) then duplicate_vertices lst (index+1) resp 
        else
            1        

(*----------step3------------*)(*Here we check if a graph is connected *)
let rec length_value message isVertex lengthV=(*to get vertex and edges length*)
       Printf.printf message;
       flush stdout;
       try
         let length=int_of_string(input_line stdin) in
         if (isVertex=1) then 
            (if (length<2) then raise(Failure "We must have at most 2 vertex")
            else
                length)
            else
                if (length<lengthV-1)  then raise(Failure ("we must have at most " ^ string_of_int(lengthV-1) ^ " edges" )  )   
                else
                    length  
    with
    | Failure msg ->
        Printf.printf "Error: %s\n" msg;
        length_value message isVertex lengthV
    | _ ->
        Printf.printf "Enter a valid number.\n";
        length_value message isVertex lengthV


let rec getVerticesList indexL length listVertex=(*here we get vertex from user *)
    if(indexL=length)  then listVertex
    else
        let temp=indexL in
        Printf.printf "Please give Vertex [ %d ] : " temp;
        flush stdout;
        try
           let vertexG=input_line stdin in
           if String.length vertexG=0 then raise(Failure "we can not allow empty vertex.Please try again")
           else
            getVerticesList (indexL+1) length (listVertex@[vertexG])
        with
        |Failure msgError->Printf.printf "Error: %s\n" msgError;getVerticesList indexL length listVertex

let rec isVertexExist index vertexG listVertex =(*here we check if a somme given is in the list*)
    if index=List.length listVertex then 0
    else
        let vertexE=List.nth listVertex index in
        if String.equal vertexE vertexG then 1
        else
            isVertexExist (index+1) vertexG listVertex;;

let rec isEdgeExist index edge listEdg =(*here we send if a edge which relate two vertices already Exist*)
        if index=List.length listEdg then 0
        else
            let edgeG=List.nth listEdg index in
            if (((String.equal edge.vertexOne.name  edgeG.vertexOne.name) 
                &&(String.equal edge.vertexTwo.name  edgeG.vertexTwo.name)) 
                || ((String.equal edge.vertexOne.name  edgeG.vertexTwo.name) 
                &&(String.equal edge.vertexTwo.name  edgeG.vertexOne.name)) )  then 1
            else 
                isEdgeExist (index+1) edge listEdg
(*getEdgeList*)
(*here we get a edge and we make vertex from the edge given*)             

(*connect_graph*)
(*----------step4-----------*)(*we make vorociousAlgorithmes*)
(*kruskal*)
(*Prim *)
(*Dijkstra*)
(*----------step5-----------*)
(*explanation*)(*here we get a location and create a txt which explain our procedures*)
(*----------step6-----------*)
(*voraciousAlgorithms*)
(*-----------------------------------------END-------------------------------------------*)

# VoraciousAlgorithms – Graph Algorithms in OCaml

## Overview

This project implements several classical **graph algorithms** used in computer science for solving optimization and shortest path problems.

The algorithms implemented include:

- **Kruskal's Algorithm** – Minimum Spanning Tree (MST)
- **Prim's Algorithm** – Minimum Spanning Tree (MST)
- **Dijkstra's Algorithm** – Shortest Path

The program is written in **OCaml** and uses a **command-line interface** where the user manually enters graph data such as vertices and edges.

---

## Note on the Name

The project name **VoraciousAlgorithms** refers to the concept of **Greedy Algorithms**.  
In algorithm design, greedy algorithms make locally optimal choices in order to find a global optimum.

Examples of greedy algorithms implemented in this project include:

- Kruskal's algorithm
- Prim's algorithm
- Dijkstra's algorithm

---

## Algorithms Implemented

### Kruskal's Algorithm
Kruskal’s algorithm builds a **Minimum Spanning Tree** by repeatedly selecting the edge with the smallest weight that does not create a cycle.

### Prim's Algorithm
Prim’s algorithm builds a **Minimum Spanning Tree** starting from a vertex and expanding the tree by always selecting the minimum-weight edge connecting the tree to a new vertex.

### Dijkstra's Algorithm
Dijkstra’s algorithm computes the **shortest path** from a source vertex to all other vertices in a weighted graph.

---

## Program Workflow

The program follows these steps:

1. Define graph structures (`vertex`, `edge`, `graph`)
2. Ask the user to enter the number of vertices and edges
3. Read vertex names from the user
4. Validate vertices (no duplicates or empty names)
5. Read edges and their weights
6. Validate edges and graph structure
7. Execute the selected algorithm
8. Display the result

---

## Data Structures

The program defines the following core types:

### Vertex
Represents a node in the graph.

Fields include:
- vertex name
- adjacent vertices
- connected edges
- visited state

### Edge
Represents a connection between two vertices.

Fields include:
- weight value
- two vertices
- visited state

### Graph
Represents the full graph structure including:

- list of vertices
- list of edges

---

## Technologies Used

- **OCaml**
- Graph theory algorithms
- Greedy algorithm design
- Command-line interface (CLI)

---

---

## How to Run the Program

### Requirements

You must have **OCaml installed**.

```bash
ocamlc -o voracious VoraciousAlgorithms.ml
```
---

## Project Status

🚧 **Work in Progress**

Planned improvements include:

- Complete full implementations of Kruskal, Prim, and Dijkstra
- Improve graph connectivity validation
- Improve result display formatting
- Add example input files
- Add automated tests

---



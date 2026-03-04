# Graph Algorithms Implementation (Greedy Algorithms)

## Overview

This project implements several classical **graph algorithms** used in computer science for solving optimization and shortest path problems.

The algorithms implemented include:

- Kruskal's Algorithm (Minimum Spanning Tree)
- Prim's Algorithm (Minimum Spanning Tree)
- Dijkstra's Algorithm (Shortest Path)

The project is written in **OCaml** and demonstrates the use of greedy strategies for solving graph-related problems.

---

## Algorithms Implemented

### Kruskal's Algorithm
Kruskal's algorithm finds a **Minimum Spanning Tree (MST)** of a graph by selecting edges with the smallest weights while avoiding cycles.

### Prim's Algorithm
Prim's algorithm also finds a **Minimum Spanning Tree**, but it grows the tree from a starting vertex by always choosing the smallest connecting edge.

### Dijkstra's Algorithm
Dijkstra's algorithm computes the **shortest path** from a source vertex to all other vertices in a weighted graph.

---

## How the Program Works

The user must provide:

- The number of vertices
- The edges of the graph
- The weights of the edges

The program then applies the selected algorithm and outputs the result.

---

## Technologies Used

- OCaml
- Graph theory algorithms
- Greedy algorithm design

---

## Project Structure

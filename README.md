# 🚀 Escape Algorithm (ESC)

**Escape Algorithm (ESC)** is a cutting-edge metaheuristic optimization technique inspired by the dynamic behavior of crowds during emergency evacuations. This innovative approach balances **exploration** and **exploitation** phases by mimicking the behaviors of calm, herding, and panic groups.

---

## 🌟 **Overview**

The ESC algorithm models crowd behaviors during evacuations:
- **Calm Group**: Rational agents methodically search for optimal solutions.
- **Herding Group**: Agents mimic others, focusing on promising regions.
- **Panic Group**: Erratic agents introduce randomness, ensuring diversity.

This behavioral simulation enables the ESC algorithm to efficiently navigate complex, high-dimensional search spaces, outperforming traditional optimization techniques.

---

## 📚 **Abstract**

Meta-heuristic algorithms inspired by swarm intelligence are highly effective for solving black-box optimization problems but often struggle to balance exploration and exploitation. The ESC algorithm simulates crowd evacuation dynamics, dividing individuals into calm, herding, and panic groups:
- **Calm individuals** lead optimal paths with rational decision-making.
- **Herding individuals** enhance exploitation by following successful agents.
- **Panic individuals** introduce random diversity, preventing premature convergence.

### **Key Achievements:**
- **Benchmark Success**:
  - Ranked **1st** in 10D and 30D tests of **CEC 2017**.
  - Ranked **1st** in 10D and 20D tests of **CEC 2022**.
- **Real-World Applications**:
  - Engineering: Pressure vessel design, spring design.
  - Robotics: 3D UAV path planning.

The ESC algorithm’s dynamic behavioral modeling provides a robust framework for solving diverse optimization problems.

---

## ✨ **Algorithm Design**

### **1. Inspiration**
The ESC algorithm draws inspiration from human behavior during emergencies:
- **Leader-Follower Systems**: Leaders guide crowds, while followers emulate the majority.
- **Behavioral Dynamics**:
  - Calm agents rationally evaluate optimal paths.
  - Herding agents conform to group behavior.
  - Panic agents make unpredictable decisions, aiding exploration.

### **2. Phases of the Algorithm**
1. **Exploration Phase**:
   - Divides the population into calm, herding, and panic groups.
   - Adaptive movement strategies ensure diverse search coverage.
2. **Exploitation Phase**:
   - Refines solutions by converging towards the Elite Pool (top-performing solutions).

### **3. Key Mechanisms**
- **Panic Index**: Governs chaotic behavior, decreasing over time to focus on exploitation.
- **Elite Pool**: Maintains the best solutions, guiding agents towards optimal regions.
- **Levy Weights**: Adaptive step sizes modeled after natural processes, balancing exploration and exploitation.

---

## 🏗️ **How ESC Works**

### **Initialization**
- The population is initialized randomly within the search space.
- An **Elite Pool** is created to track top-performing solutions.

### **Behavioral Groups**
- **Calm Group**: Updates positions towards the group center with slight randomness.
- **Herding Group**: Moves based on influences from both calm and panic groups.
- **Panic Group**: Explores erratically, inspired by top solutions and random directions.

### **Adaptive Transition**
- The **Panic Index** transitions the population from chaotic exploration to focused exploitation.

---
## 📜 **Algorithm Pseudocode**

Below is the pseudocode for the **Escape Optimization Algorithm (ESC)**:

```text
Algorithm 1: Pseudocode of Escape Optimization Algorithm (ESC)

1: Initialize ESC parameters
2: Initialize Population:
3: for each individual xi do
4:        for each dimension j do
5:                Set xi,j = lbj + rj × (ubj − lbj ) where rj ∼ U(0, 1)
6:        end for
7: end for
8: Evaluate fitness of each individual fi = f(xi)
9: Sort population by fitness in ascending order
10: Store the top eliteSize individuals in the Elite Pool: 
    E = {x1, x2, ..., xeliteSize}
11: while t ≤ T do
12:       if t/T ≤ 0.5 then
13:         Compute Panic Index P(t) = cos(πt/6T)
14:         Sort population by fitness
15:         Divide population into: Calm group (proportion c), 
              Conforming group (proportion h), and Panic group (proportion p)
16:          Update Calm Group using Eq. (4)
17:          Update Conforming Group using Eq. (6)
18:          Update Panic Group using Eq. (8)
19:      else
20:           ► Enter exploitation phase
21:           Update population using Eq. (10)
22:      end if
23:     Evaluate the fitness of each individual
24:     Apply greedy selection (Eq. 12)
25:     Update Elite Pool with best solutions found
26:     t = t + 1
27: end while
28: Return Best Solutions from Elite Pool
```



## 📊 **Performance Highlights**

| **Test**                               | **Ranking**          |
|----------------------------------------|----------------------|
| **CEC 2017** (10D, 30D)                | **1st Place**        |
| **CEC 2017** (50D, 100D)               | **2nd Place**        |
| **CEC 2022** (10D, 20D)                | **1st Place**        |

| **Real-World Problem**                 | **Ranking**          |
|----------------------------------------|----------------------|
| Pressure Vessel Design                 | Superior Performance |
| Tension/Compression Spring Design      | Superior Performance |
| 3D UAV Path Planning                   | Highly Effective     |

---

## 📂 **Available Resources**

| **Resource**                           | **Download Link**                                                                 |
|----------------------------------------|----------------------------------------------------------------------------------|
| 📄 **Research Paper (PDF)**            | <a href="https://aliasgharheidari.com/Escape-An%20optimization%20method%20based%20on%20crowd%20evacuation%20behaviors-Artificial%20intelligence%20review-2024.pdf" target="_blank">Download PDF</a> |
| 📂 **MATLAB Code**                     | <a href="https://aliasgharheidari.com/Matlab/Matlab%20codes%20of%20Escape%20optimization%20algorithm%20ESC.zip" target="_blank">Download MATLAB Code</a> |
| 📂 **Python Code**                     | <a href="https://aliasgharheidari.com/PYTHON%20codes%20of%20Escape%20Algorithm%20_ESC_.zip" target="_blank">Download Python Code</a> |
| 📜 **Flowchart**                       | <a href="https://aliasgharheidari.com/ESC%20flowchart.pptx" target="_blank">Download Flowchart</a> |
| 📄 **Word Document**                   | <a href="https://aliasgharheidari.com/Word%20file%20of%20Escape-An%20optimization%20method%20based%20on%20crowd%20evacuation%20behaviors-Artificial%20intelligence%20review-2024.docx" target="_blank">Download Word Document</a> |


---

## 📜 **Citation**

If you use ESC in your research, kindly cite:
```
@article{escape2024,
  title={Escape: An optimization method based on crowd evacuation behaviors},
  author={Kaichen OuYang, Shengwei Fu, Yi Chen, Qifeng Cai, Ali Asghar Heidari, Huiling Chen},
  journal={Artificial Intelligence Review},
  year={2024},
  doi={10.xxxx/xxxxx}
}
```

---

## 🌟 **Why ESC?**
- **Inspired by Nature**: Models real-world crowd behaviors.
- **Dynamic and Versatile**: Adapts to diverse optimization challenges.
- **Proven Success**: Benchmark-leading performance across domains.

---

For more information, visit the [Official ESC Page](https://aliasgharheidari.com/ESC.html).

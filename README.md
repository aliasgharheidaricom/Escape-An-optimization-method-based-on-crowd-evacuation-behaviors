![License](https://img.shields.io/github/license/aliasgharheidaricom/Escape-An-optimization-method-based-on-crowd-evacuation-behaviors)
![Code Size](https://img.shields.io/github/languages/code-size/aliasgharheidaricom/Escape-An-optimization-method-based-on-crowd-evacuation-behaviors)
![Repo Size](https://img.shields.io/github/repo-size/aliasgharheidaricom/Escape-An-optimization-method-based-on-crowd-evacuation-behaviors)
![Language Count](https://img.shields.io/github/languages/count/aliasgharheidaricom/Escape-An-optimization-method-based-on-crowd-evacuation-behaviors)
![Last Commit](https://img.shields.io/github/last-commit/aliasgharheidaricom/Escape-An-optimization-method-based-on-crowd-evacuation-behaviors)
![Issues](https://img.shields.io/github/issues/aliasgharheidaricom/Escape-An-optimization-method-based-on-crowd-evacuation-behaviors)
![Forks](https://img.shields.io/github/forks/aliasgharheidaricom/Escape-An-optimization-method-based-on-crowd-evacuation-behaviors)
![Stars](https://img.shields.io/github/stars/aliasgharheidaricom/Escape-An-optimization-method-based-on-crowd-evacuation-behaviors)
![Watchers](https://img.shields.io/github/watchers/aliasgharheidaricom/Escape-An-optimization-method-based-on-crowd-evacuation-behaviors)
![Contributors](https://img.shields.io/github/contributors/aliasgharheidaricom/Escape-An-optimization-method-based-on-crowd-evacuation-behaviors)


# 🚀 Escape: An optimization method based on crowd evacuation behaviors

**Escape Algorithm (ESC)** is a cutting-edge metaheuristic optimization technique inspired by the dynamic behavior of crowds during emergency evacuations. This innovative approach balances **exploration** and **exploitation** phases by mimicking the behaviors of calm, herding, and panic groups.

Abstract: Meta-heuristic algorithms, particularly those based on swarm intelligence, are highly effective for solving black-box optimization problems. However, maintaining a balance between exploration and exploitation within these algorithms remains a significant challenge. This paper introduces a useful algorithm, called Escape or Escape Algorithm (ESC), inspired by crowd evacuation behavior, to solve real-world cases and benchmark problems. The ESC algorithm simulates the behavior of crowds during the evacuation, where the population is divided into calm, herding, and panic groups during the exploration phase, reflecting different levels of decision-making and emotional states. Calm individuals guide the crowd toward safety, herding individuals imitate others in less secure areas, and panic individuals make volatile decisions in the most dangerous zones. As the algorithm transitions into the exploitation phase, the population converges toward optimal solutions, akin to finding the safest exit. The effectiveness of the ESC algorithm is validated on two adjustable problem size test suites, CEC 2017 and CEC 2022. ESC ranked first in the 10-dimensional, 30-dimensional tests of CEC 2017, and the 10-dimensional and 20-dimensional tests of CEC 2022, and second in the 50-dimensional and 100-dimensional tests of CEC 2017. Additionally, ESC performed exceptionally well, ranking first in the engineering problems of pressure vessel design, tension/compression spring design, and rolling element bearing design, as well as in two 3D UAV path planning problems, demonstrating its efficiency in solving real-world complex problems, particularly complex problems like 3D UAV path planning. Compared with 12 other high-performance, classical, and advanced algorithms, ESC exhibited superior performance in complex optimization problems.

## 🖼️ **Images of ESC Algorithm**

Below are images demonstrating different aspects of the **Escape Algorithm (ESC)** optimization process:

| ![ESC Optimizer 1](https://aliasgharheidari.com/Escape%20ESC%20optimizer1.jpg) | ![ESC Optimizer 2](https://aliasgharheidari.com/Escape%20ESC%20optimizer2.jpg) | ![ESC Optimizer 3](https://aliasgharheidari.com/Escape%20ESC%20optimizer3.jpg) | ![ESC Optimizer 4](https://aliasgharheidari.com/Escape%20ESC%20optimizer4.jpg) |
|------------------------------------------------------------------------------|------------------------------------------------------------------------------|------------------------------------------------------------------------------|------------------------------------------------------------------------------|
| ![ESC Optimizer 5](https://aliasgharheidari.com/Escape%20ESC%20optimizer5.jpg) | ![ESC Optimizer 6](https://aliasgharheidari.com/Escape%20ESC%20optimizer6.jpg) | ![ESC Optimizer 7](https://aliasgharheidari.com/Escape%20ESC%20optimizer7.jpg) | ![ESC Optimizer 8](https://aliasgharheidari.com/Escape%20ESC%20optimizer8.jpg) |
| ![ESC Optimizer 9](https://aliasgharheidari.com/Escape%20ESC%20optimizer9.jpg) | ![ESC Optimizer 10](https://aliasgharheidari.com/Escape%20ESC%20optimizer10.jpg) | ![ESC Optimizer 11](https://aliasgharheidari.com/Escape%20ESC%20optimizer11.jpg) | ![ESC Optimizer 12](https://aliasgharheidari.com/Escape%20ESC%20optimizer12.jpg) |


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

 ### Performance Comparison

| **Algorithm**             | **Speed**  | **Global Search** | **Local Search** | **Scalability** | **Global/Local**   | **Convergence Speed** | **Robustness**   |
|---------------------------|------------|---------------------------|-----------------------------|-----------------|--------------------|-----------------------|------------------|
| 🌱 [**MGO**](http://www.aliasgharheidari.com/MGO.html)       | 🚀 Fast    | 🔼 Excellent               | 🔼 High                     | ⚖️ Moderate     | 🔼 Global          | 🔼 Fast               | 🔼 High          |
| 🚀 [**GA**](http://www.aliasgharheidari.com)        | 🚀 Fast    | 🔽 Good                    | 🔽 Moderate                 | 🔼 High         | 🔼 Global          | 🔼 Moderate           | 🔼 Moderate      |
| 🌐 [**PSO**](http://www.aliasgharheidari.com)      | ⚡ Fast    | 🔼 Moderate                | 🔽 Low                      | 🔼 High         | 🔼 Global          | 🔼 Fast               | 🔼 Moderate      |
| 🔍 [**SA**](http://www.aliasgharheidari.com)        | 🚶‍♂️ Moderate | 🔼 High                 | 🔻 Low                      | ⚖️ Moderate     | 🔼 Local           | 🔼 Slow               | 🔼 High          |
| 🔥 [**ESC**](http://www.aliasgharheidari.com/ESC.html)      | 🚶‍♂️ Moderate | 🔼 Excellent             | 🔼 High                     | 🔼 High         | 🔼 Global/Local    | 🔼 Moderate           | 🔼 High          |
| 🌟 [**PLO**](http://www.aliasgharheidari.com/PLO.html)      | 🚀 Fast    | 🔼 High                   | 🔽 Low                      | 🔼 High         | 🔼 Global          | 🔼 Fast               | 🔼 High          |
| 🚀 [**FATA**](http://www.aliasgharheidari.com/FATA.html)    | ⚡ Fast    | 🔼 High                   | 🔼 Moderate                 | 🔼 High         | 🔼 Global/Local    | 🔼 Fast               | 🔼 High          |
| 🌐 [**ECO**](http://www.aliasgharheidari.com/ECO.html)      | ⚖️ Moderate | 🔼 Excellent             | 🔼 High                     | 🔽 Moderate     | 🔼 Global/Local    | 🔼 Moderate           | 🔼 High          |
| 🔍 [**AO**](http://www.aliasgharheidari.com/AO.html)        | 🚶‍♂️ Moderate | 🔼 High                 | 🔼 Moderate                 | 🔽 Moderate     | 🔼 Local           | 🔼 Moderate           | 🔼 High          |
| ✨ [**PO**](http://www.aliasgharheidari.com/PO.html)        | 🚀 Fast    | 🔽 Moderate               | 🔽 Low                      | 🔼 High         | 🔼 Global          | 🔼 Fast               | 🔼 Moderate      |
| 🔬 [**RIME**](http://www.aliasgharheidari.com/RIME.html)    | ⚡ Fast    | 🔼 High                   | 🔼 Moderate                 | 🔽 Moderate     | 🔼 Global/Local    | 🔼 Moderate           | 🔼 High          |
| 📊 [**INFO**](http://www.aliasgharheidari.com/INFO.html)    | 🚶‍♂️ Moderate | 🔼 High                 | 🔽 Low                      | 🔼 High         | 🔼 Global          | 🔼 Slow               | 🔼 Moderate      |
| 🛠️ [**RUN**](http://www.aliasgharheidari.com/RUN.html)     | ⚡ Fast    | 🔼 Moderate               | 🔼 High                     | 🔼 High         | 🔼 Global/Local    | 🔼 Fast               | 🔼 High          |
| 🔧 [**HGS**](http://www.aliasgharheidari.com/HGS.html)     | ⚖️ Moderate | 🔼 High                   | 🔼 Moderate                 | 🔼 High         | 🔼 Global/Local    | 🔼 Moderate           | 🔼 High          |
| 🧩 [**SMA**](http://www.aliasgharheidari.com/SMA.html)     | ⚖️ Moderate | 🔼 Moderate               | 🔼 High                     | 🔼 High         | 🔼 Local           | 🔼 Moderate           | 🔼 High          |
| 🌠 [**HHO**](http://www.aliasgharheidari.com/HHO.html)     | 🚶‍♂️ Moderate | 🔼 High                   | 🔼 High                     | 🔼 High         | 🔼 Global/Local    | 🔼 Moderate           | 🔼 High          |

---



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

 
## 🔍 **Comparison with Other Optimization Methods**

| Optimization Method | Year | Applications                                | Limitations                              | Key Features                                      |
|---------------------|------|---------------------------------------------|------------------------------------------|--------------------------------------------------|
| 🌟 [**PLO**](http://www.aliasgharheidari.com/PLO.html)   | 2024 | Engineering design, data analysis           | May struggle with highly dynamic problems | High efficiency in solving complex problems       |
| 🚀 [**FATA**](http://www.aliasgharheidari.com/FATA.html) | 2024 | Resource management, optimization tasks     | Scalability may decrease with problem size | Robust performance, highly scalable               |
| 🌐 [**ECO**](http://www.aliasgharheidari.com/ECO.html)   | 2024 | Environmental modeling, multi-criteria decision-making | Can be computationally intensive        | Effective in multi-objective optimization         |
| 🔍 [**AO**](http://www.aliasgharheidari.com/AO.html)     | 2024 | Adaptive systems, real-time optimization    | May need extensive parameter tuning       | Innovative approaches to optimization             |
| ✨ [**PO**](http://www.aliasgharheidari.com/PO.html)     | 2024 | Robotics, machine learning                  | May not work well for highly complex problems | Fast convergence, simple implementation          |
| 🔬 [**RIME**](http://www.aliasgharheidari.com/RIME.html) | 2023 | Control systems, signal processing          | Less effective in dynamic environments    | Flexibility in handling various optimization tasks|
| 📊 [**INFO**](http://www.aliasgharheidari.com/INFO.html) | 2022 | Business analytics, predictive modeling     | May require significant data processing   | Data-driven insights for optimization            |
| 🛠️ [**RUN**](http://www.aliasgharheidari.com/RUN.html)     | 2021 | Logistics, supply chain management          | May struggle with non-linear problems     | Adaptable to different types of optimization tasks|
| 🔧 [**HGS**](http://www.aliasgharheidari.com/HGS.html)     | 2021 | Telecommunications, network design          | High computational cost                  | Effective for large-scale problems               |
| 🧩 [**SMA**](http://www.aliasgharheidari.com/SMA.html)     | 2020 | Financial modeling, time-series forecasting | May not handle multi-objective problems well | Suitable for dynamic environments                |
| 🌠 [**HHO**](http://www.aliasgharheidari.com/HHO.html)     | 2019 | Manufacturing optimization, systems engineering | May require multiple iterations for optimization | Good balance between exploration and exploitation|
| 🌱 [**MGO**](http://www.aliasgharheidari.com/MGO.html)     | 2024 | Engineering optimization, system design     | May not adapt well to highly dynamic environments | Effective balance between exploration and exploitation, natural growth-inspired approach |
| 🔥 [**ESC**](http://www.aliasgharheidari.com/ESC.html)    | 2024 | Crowd evacuation, optimization problems      | Computationally demanding for very large populations | Dynamic population-based algorithm with panic, calm, and conformity phases |

Explore these methods to see how ESC compares and stands out in the field of optimization!


For more information, visit the [Official ESC Page](https://aliasgharheidari.com/ESC.html).

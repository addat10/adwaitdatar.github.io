---
layout: single
title: "Experimental Work"
permalink: /experiments/
author_profile: true
page_class: compact-page
---

## Source Seeking with Crazyflie Quadrotors

During my PhD, I planned and supervised the development of an indoor laboratory using [Crazyflie quadrotors](https://www.bitcraze.io/products/old-products/crazyflie-2-0/), working with students on the hardware setup. I selected equipment, planned its integration into the available space, and supervised the students carrying out the setup.

Philipp Hastedt, Rafael Salomon Sanchez, Maximilian Dio, Peter Paulsen, Pongpol Ongrungroj, and Raja Vardhan Reddy Kothakapu contributed to the development of the laboratory through student projects, theses, and student employment.

Peter Paulsen implemented the peer-to-peer communication protocol and flocking algorithms on the drones through his [software-framework project]({{ '/supervision/#paulsen-project' | relative_url }}) and [master’s thesis]({{ '/supervision/#paulsen-thesis' | relative_url }}). I guided the translation of the distributed control algorithms from my theoretical work into experiments, explaining the underlying ideas and working with him to resolve engineering and implementation problems.

The experiments investigate cooperative source seeking: a group of quadrotors searches for the minimum of a scalar field. Local gradient and Hessian estimates are used to implement continuous versions of steepest descent and Newton-type methods with momentum.

This work with Peter Paulsen and Herbert Werner is presented in [Flocking Towards the Source: Indoor Experiments with Quadrotors]({{ '/publications/#flocking-paper' | relative_url }}) (ECC 2020).

### Experimental Videos
- [Source seeking in a strictly convex quadratic field ↗](https://youtu.be/dC1nZ93Pu6Y)
- [Source seeking in a strictly log-convex field ↗](https://youtu.be/LWpY6SZ08po)
- [Source seeking in a non-convex field with two minima ↗](https://youtu.be/zgn9SelcU5k)
- [Animation of data from all experiments ↗](https://youtu.be/bNq_5o5do8s)
- [ECC 2020 paper presentation ↗](https://youtu.be/TX0XjSZ8pDY)

## Other Experimental Work

- **[Data-Driven quasi-LPV Model Predictive Control Using Koopman Operator Techniques](https://doi.org/10.1016/j.ifacol.2020.12.1676)**  
  Pablo S. G. Cisneros; **Adwait Datar**; Patrick Göttsch; Herbert Werner. *IFAC-PapersOnLine 53(2):6062–6068 (2020).*  
- **[Data-Driven Control for a Class of Non-Linear MIMO Systems](https://doi.org/10.1109/CDC.2018.8619212)**  
  Mohamed Bakr; **Adwait Datar**; Alejandro Gonzalez Alvarez; Herbert Werner. *IEEE Conference on Decision and Control (CDC 2018), pp. 1174–1179.*  

- **Maximilian Dio (2021)** — [Cooperative Control of Multiple Quadrotors with Model Predictive Control in an Indoor Experimental Setup]({{ '/supervision/#dio-project' | relative_url }}). Student project work.


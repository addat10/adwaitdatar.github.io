---
layout: single
title: "Experimental Work"
permalink: /experiments/
author_profile: true
page_class: compact-page
---

## Source seeking with Crazyflie quadrotors

The experiments used [Crazyflie quadrotors](https://www.bitcraze.io/products/old-products/crazyflie-2-0/). During my PhD, I worked on indoor experiments in which a group of quadrotors cooperatively searches for the minimum of a scalar field. Local gradient and Hessian estimates are used to implement continuous versions of steepest descent and Newton-type methods with momentum.

This work with Peter Paulsen and Herbert Werner is presented in [Flocking Towards the Source: Indoor Experiments with Quadrotors]({{ '/publications/#flocking-paper' | relative_url }}) (ECC 2020).

### Experimental videos
- [Source seeking in a strictly convex quadratic field ↗](https://youtu.be/dC1nZ93Pu6Y)
- [Source seeking in a strictly log-convex field ↗](https://youtu.be/LWpY6SZ08po)
- [Source seeking in a non-convex field with two minima ↗](https://youtu.be/zgn9SelcU5k)
- [Animation of data from all experiments ↗](https://youtu.be/bNq_5o5do8s)
- [ECC 2020 paper presentation ↗](https://youtu.be/TX0XjSZ8pDY)

## Other experimental work: control moment gyroscope

Two collaborative projects tested data-driven controllers on a physical control moment gyroscope (CMG):

- **[Data-Driven quasi-LPV Model Predictive Control Using Koopman Operator Techniques](https://doi.org/10.1016/j.ifacol.2020.12.1676)**  
  Pablo S. G. Cisneros; **Adwait Datar**; Patrick Göttsch; Herbert Werner. *IFAC-PapersOnLine 53(2):6062–6068 (2020).*  
  Koopman-based model identification and predictive control, validated experimentally on a nonlinear three-degree-of-freedom CMG.
- **[Data-Driven Control for a Class of Non-Linear MIMO Systems](https://doi.org/10.1109/CDC.2018.8619212)**  
  Mohamed Bakr; **Adwait Datar**; Alejandro Gonzalez Alvarez; Herbert Werner. *IEEE Conference on Decision and Control (CDC 2018), pp. 1174–1179.*  
  Data-driven reference tracking for coupled MIMO systems, evaluated in simulation and on a CMG test bed.


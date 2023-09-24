---
layout: post
title: Discovering Sparse Interpretable Dynamics
description: We discover sparse symbolic governing equations for dynamical systems using only partial state observations.
date: 2022-01-10
img: /assets/img/projects/symder/key_image.svg
github: https://github.com/peterparity/symder
paper: https://doi.org/10.1038/s42005-022-00987-z
importance: 1

_styles: >
  figure {
    display: block;
    margin: 2rem auto 2rem auto;
    max-width: 100%;
    height: auto;
  }
  img {
    max-width: 100%;
    height: auto;
    margin-bottom: 10px;
  }
  figcaption {
    font-size: 11pt;
    font-weight: bold;
    border-top: solid;
    border-width: 1px;
    padding-top: 5px;
  }

---
<div class="publications">
{% bibliography -f papers -q @article[doi=10.1038/s42005-022-00987-z] %}
</div>
---

{% katexmm %}

Complex dynamical systems, such as weather, climate, chemical, and biological systems, are often hard to analyze, understand, and model. Identifying the governing equations of a nonlinear dynamical system is key to both understanding the physical features of the system and constructing an accurate model of the dynamics that generalizes well beyond the available data. 

However, in many real-world scenarios, there are some quantities that are easy to measure, such as the concentration of a fluorescent dye, and others that are very difficult, expensive, or simply impossible to observe directly. That is, we are often only able to partially observe the state of system, providing us with incomplete data and further complicating the modeling process.

Our machine learning approach addresses these issues by reconstructing the original system state from partial observations while, at the same time, fitting an interpretable symbolic equation to model the system dynamics.

<figure style="max-width: 400px">
  <img src="{{ site.url }}/assets/img/projects/symder/key_image.svg" style="background-color:white"/>
  <figcaption>Discovering sparse interpretable dynamics from partial observations.</figcaption>
</figure>

## Architecture
We propose a machine learning framework for discovering the governing equations of a dynamical system using only partial observations, combining an encoder for state reconstruction with a sparse symbolic model.

<figure style="max-width: 800px">
  <img src="{{ site.url }}/assets/img/projects/symder/architecture.svg" style="background-color:white"/>
  <figcaption>Machine learning framework for simultaneously reconstructing hidden states and fitting a symbolic model.</figcaption>
</figure>

## Experiments
Our tests show that our method can successfully reconstruct the full system state and identify the underlying dynamics for a variety of ODE and PDE systems. We test our method on partially observed chaotic dynamics in the form of the Rössler and Lorenz systems.

<figure style="max-width: 800px">
  <img src="{{ site.url }}/assets/img/projects/symder/ode_experiments.svg" style="background-color:white"/>
  <figcaption>System identification and hidden state reconstruction for ODE systems.</figcaption>
</figure>

Our method is able to reconstruct the full dynamics of a 2D diffusive spatiotemporal system with a hidden dynamic source, as well as a partially observed 2D reaction–diffusion system.

<figure style="max-width: 800px">
  <img src="{{ site.url }}/assets/img/projects/symder/pde_experiments.svg" style="background-color:white"/>
  <figcaption>System identification and hidden state reconstruction for PDE systems.</figcaption>
</figure>

As an additional example, our method is also able to handle missing phase information $\varphi = \arg \psi$ and identify the dynamics of a complex nonlinear wave equation.

<figure style="max-width: 400px">
  <img src="{{ site.url }}/assets/img/projects/symder/phase_reconstruction.svg" style="background-color:white"/>
  <figcaption>System identification and phase reconstruction for nonlinear wave propagation.</figcaption>
</figure>

## Prediction Examples
As a result of reconstructing the hidden states and identifying the exact symbolic dynamics, our fitted models are able predict and generalize extremely well.

<figure style="max-width: 400px">
  <img src="{{ site.url }}/assets/img/projects/symder/lorenz_prediction_examples.svg" style="background-color:white"/>
  <figcaption>Prediction examples on test data from the Lorenz system. $\tau$ is the Lyapunov time.</figcaption>
</figure>

<figure style="max-width: 400px">
  <img src="{{ site.url }}/assets/img/projects/symder/reac_diff_prediction.svg" style="background-color:white"/>
  <figcaption>Prediction examples on test data from the diffusive Lokta–Volterra system showing (a) snapshots of the visible state $u$ and (b) the spatial average of $u$ over time.</figcaption>
</figure>

This new framework shows how machine learning can generate interpretable models even from incomplete measurements and will enable us to better understand real-world data from complex dynamical systems.

Please see [our paper](https://www.nature.com/articles/s42005-022-00987-z.pdf) for more details.


{% endkatexmm %}

---
layout: post
title: Discovering Conservation Laws using Geometry
description: We propose a direct geometric approach for discovering conservation laws using optimal transport and manifold learning.
date: 2022-01-10
img: /assets/img/projects/conservation_laws/key_image.svg
github: https://github.com/peterparity/conservation-laws-manifold-learning
paper: https://doi.org/10.1038/s41467-023-40325-7
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
{% bibliography -f papers -q @article[doi=10.1038/s41467-023-40325-7] %}
</div>
---

{% katexmm %}

Conservation laws are key theoretical and practical tools for understanding, characterizing, and modeling nonlinear dynamical systems. Well-known conservation laws, such as the conservation of energy and momentum, are foundational for modern physics and engineering.  However, for many complex dynamical systems, the corresponding conserved quantities are difficult to identify, making it hard to analyze their dynamics and build efficient, stable predictive models.

Current approaches for discovering conservation laws often depend on detailed dynamical information, such as the equation of motion or fine-grained time measurements, with many recent proposals also relying on black box parametric deep learning methods. We instead reformulate this task as a manifold learning problem and propose a non-parametric approach to discover conserved quantities that vary across trajectories sampled from a dynamical system.

## Problem Formulation
Conserved quantities can be geometrically characterized by their isosurfaces in phase space. For example, a simple pendulum has periodic trajectories that form closed orbits which correspond to the isosurfaces of energy. Trajectories with different energies sample states from different isosurfaces. In other words, we can reformulate the problem of discovering conservation laws as a manifold learning problem on the space of isosurface shapes.

We can identify the conserved quantities by parameterizing the variations in the shapes of the isosurfaces, which are sampled by the trajectories. For a simple pendulum, a single parameter corresponding to the conserved energy parameterizes the different closed orbits traced by the trajectories.

<figure style="max-width: 400px">
  <img src="{{ site.url }}/assets/img/projects/conservation_laws/key_image.svg" style="background-color:white"/>
  <figcaption>Discovering conservation laws by characterizing the variation in isosurface shapes sampled by trajectories.</figcaption>
</figure>

## Proposed Manifold Learning Approach

We first collect a dataset of trajectories from the dynamical system. Each trajectory consists of a collection of states which, for our purposes, do not need be in any particular order. We use the Wasserstein distance from optimal transport to define a metric on the space of distributions and compute the distance between each pair of trajectories in the dataset. Then, using this geometric structure, we perform manifold learning in the space of distributions by applying diffusion maps to obtain an embedding corresponding to the conserved quantities.

<figure style="max-width: 600px">
  <img src="{{ site.url }}/assets/img/projects/conservation_laws/method.svg" style="background-color:white"/>
  <figcaption>Geometric method for discovering conserved quantities combining the Wasserstein metric with diffusion maps.</figcaption>
</figure>

## Experiments

We test this new approach on a variety of physical systems—including conservative Hamiltonian systems, dissipative systems, and spatiotemporal systems—and demonstrate that our manifold learning method is able to both identify the number of conserved quantities and extract their values.

<!-- ### Simple Harmonic Oscillator

<figure style="max-width: 400px">
  <img src="{{ site.url }}/assets/img/projects/conservation_laws/sho.svg" style="background-color:white"/>
  <figcaption>Identifying the conserved energy of the simple harmonic oscillator.</figcaption>
</figure> -->

### Simple Pendulum

For the simple pendulum, we identify the conserved energy even in very high noise settings, demonstrating the robustness of our approach.

<figure style="max-width: 400px">
  <img src="{{ site.url }}/assets/img/projects/conservation_laws/pendulum.svg" style="background-color:white"/>
  <figcaption>Identifying the conserved energy of the simple harmonic oscillator.</figcaption>
</figure>

### Planar Gravitational Dynamics (multiple conserved quantities)

For planar gravitational dynamics, we identify all three conserved quantities corresponding to the conserved energy $\propto a^{-1}$, the angular momentum $L$, and the angular orientation of the elliptical orbit $\phi$.

<figure style="max-width: 400px">
  <img src="{{ site.url }}/assets/img/projects/conservation_laws/orbits.svg" style="background-color:white"/>
  <figcaption>Identifying the three conserved quantities of planar gravitational dynamics.</figcaption>
</figure>

### Double Pendulum (chaos, phase transition)

For the double pendulum, we identify the conserved total energy $E$ as well as the two modal energies $E_\pm$, which are approximately conserved at low total energy. We also can see the phase transition into chaotic dynamics as the total energy increases.

<figure style="max-width: 400px">
  <img src="{{ site.url }}/assets/img/projects/conservation_laws/double_pendulum.svg" style="background-color:white"/>
  <figcaption>Identifying the conserved energy (and approximately conserved modal energies) of the double pendulum.</figcaption>
</figure>

### Oscillating Turing pattern (high-dimensional, dissipative)

We test our approach on a high-dimensional dissipative reaction–diffusion system, which results in a chaotic oscillating Turing pattern, and are able to identify the conserved spatial phase angle $\eta$.

<figure style="max-width: 400px">
  <img src="{{ site.url }}/assets/img/projects/conservation_laws/turing.svg" style="background-color:white"/>
  <figcaption>Identifying the conserved spatial phase in a chaotic oscillating Turing pattern.</figcaption>
</figure>

### Korteweg–De Vries (spatiotemporal, local conservation laws)

We also demonstrate identifying local conserved quantities $c_i$ in a spatiotemporal model of shallow water waves: the Korteweg–De Vries PDE.

<figure style="max-width: 400px">
  <img src="{{ site.url }}/assets/img/projects/conservation_laws/kdv.svg" style="background-color:white"/>
  <figcaption>Identifying local conserved quantities of the Korteweg–De Vries PDE.</figcaption>
</figure>


Using tools from optimal transport theory and manifold learning, our proposed method provides a direct geometric approach to identifying conservation laws that is both robust and interpretable without requiring an explicit model of the system nor accurate time information.

Please see [our paper](https://www.nature.com/articles/s41467-023-40325-7.pdf) for more details.


{% endkatexmm %}

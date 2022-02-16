---
layout: post
title: APS March Meeting 2022
date: 2022-02-16
inline: false
_styles: >
  blockquote {
    display: block;
    margin-top: 0em;
    margin-bottom: 1em;
    margin-left: 1em;
    margin-right: 2em;
  }
---

I will be presenting two abstracts at [APS March Meeting 2022](https://march.aps.org/)!
<details>
<summary><a href="https://meetings.aps.org/Meeting/MAR22/Session/G13.7">Discovering Conservation Laws via Manifold Learning (Oral)</a></summary>
<blockquote>
<em style="line-height:2">Peter Y. Lu, Rumen Dangovski, Marin Soljačić</em>
<br>
Conservation laws are key theoretical and practical tools for understanding, characterizing, and modeling nonlinear dynamical systems. However, for many complex dynamical systems, the corresponding conserved quantities are difficult to identify, making it hard to analyze their dynamics and build efficient, stable predictive models. Many current approaches for discovering conservation laws rely on fine-grained time measurements and dynamical information. We instead reformulate this task as a manifold learning problem and propose a non-parametric approach, combining the Wasserstein metric from optimal transport with diffusion maps, to determine all the conserved quantities that vary across trajectories sampled from a dynamical system. We test this new approach on a variety of physical systems and demonstrate that our manifold learning method is able to both identify the number of conserved quantities and extract their values.
</blockquote>
</details>

<details>
<summary><a href="https://meetings.aps.org/Meeting/MAR22/Session/T00.347">Discovering Sparse Interpretable Dynamics from Partial Observations (Poster)</a></summary>
<blockquote>
<em style="line-height:2">Peter Y. Lu, Joan Ariño Bernad, Marin Soljačić</em>
<br>
Identifying the governing equations of a nonlinear dynamical system is key to both understanding the physical features of the system and constructing an accurate model of the dynamics that generalizes well beyond the available data. In many instances, this problem is further compounded by a lack of available data and only partial observations of the system state, e.g. forecasting fluid flow driven by unknown sources or predicting optical signal propagation without phase measurements. We propose a machine learning framework for discovering these governing equations using only partial observations, combining an encoder for state reconstruction with a sparse symbolic model. The entire architecture is trained end-to-end by matching the higher-order symbolic time derivatives of the sparse symbolic model with finite difference estimates from the data. Our tests show that this method can successfully reconstruct the full system state and identify the equations of motion governing the underlying dynamics for a variety of ODE and PDE systems.
</blockquote>
</details>

<br>
Also, check out other March Meeting abstracts from the Soljačić group:
<details>
<summary><a href="https://meetings.aps.org/Meeting/MAR22/Session/G13.8">Deep Learning for Bayesian Optimization of High-Dimensional Scientific Problems (Oral)</a></summary>
<blockquote>
<em style="line-height:2">Samuel Kim, Peter Y. Lu, Charlotte Loh, Jasper Snoek, Jamie Smith, Marin Soljačić</em>
<br>
Bayesian optimization (BO) is a popular algorithm for global optimization of expensive black-box functions (e.g. experiments or derivative-free numerical simulations that are costly or time-consuming), but there are many domains where the function is not completely black-box. For example, the data may have some known structure or symmetries, and the data generation process can yield useful intermediate or auxiliary information. However, the surrogate models typically used in BO, Gaussian Processes (GPs), scale poorly with dataset size and dimensionality and struggle to adapt to specific domains. Here, we propose using a class of deep learning models called Bayesian Neural Networks (BNNs) as the surrogate function, as their representation power and flexibility to handle structured data and exploit auxiliary information enable BO to be applied to complex problems. We demonstrate BO on a number of realistic problems in physics and chemistry, including topology optimization of photonic crystal materials using convolutional neural networks, and chemical property optimization of molecules using graph neural networks. On these complex tasks, we show that BNNs often outperform GPs as surrogate models for BO in terms of sampling efficiency and computational cost.
</blockquote>
</details>

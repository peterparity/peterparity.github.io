---
layout: post
title: Extracting Interpretable Physical Parameters
description: We use a variational autoencoder (VAE) to extract relevant physical parameters governing the dynamics of spatiotemporal data.
date: 2020-09-11
img: /assets/img/projects/pde_vae/key_image.png
github: https://github.com/peterparity/PDE-VAE-pytorch
paper: https://journals.aps.org/prx/pdf/10.1103/PhysRevX.10.031056
importance: 1

_styles: >
  figure {
    display: block;
    margin-left: auto;
    margin-right: auto;
    max-width: 100%;
    height: auto;
  }
  img {
    max-width: 100%;
    height: auto;
    margin-bottom: 10px;
  }
  figcaption {
    font-style: italic;
  }

---
<div class="publications">
{% bibliography -f papers -q @article[doi=10.1103/PhysRevX.10.031056] %}
</div>
---

{% katexmm %}

Real world data from complex spatiotemporal systems are hard to analyze. In this work, we use a variational autoencoder (VAE) to extract relevant physical parameters governing the dynamics of spatiotemporal data.

<figure style="max-width: 576px">
  <img src="{{ site.url }}/assets/img/projects/pde_vae/key_image_with_labels.png"/>
  <figcaption>Extracting relevant parameters from spatiotemporal data with uncontrolled variables, and then generating a tunable, transferable predictive model.</figcaption>
</figure>

TODO

{% endkatexmm %}

{% highlight c++ linenos %}
int main(int argc, char const *argv[])
{
    string myString;

    cout << "input a string: ";
    getline(cin, myString);
    int length = myString.length();

    char charArray = new char * [length];

    charArray = myString;
    for(int i = 0; i < length; ++i){
        cout << charArray[i] << " ";
    }

    return 0;
}
{% endhighlight %}

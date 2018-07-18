# Introduction

A convolutional neural network (CNN) is a machine learning algorithm that takes in an image and produces predictions on the image's classications. A CNN consists of a series of connnected layers. Each layer takes a set of _feature maps(fmaps)_ as input, performs some type of computation on them, and produces a new set of fmaps to be fed into the next layer. The input to the first layer come from the input images. Layers may require configuration values known as parameters, which comes from the pre-training of the CNN on labled data. The CNN can be deployed for classiying new data points after the parameters are finalized. The network's accuracy and execution time of online classification are the two major concerns for most of the practical machine learning applications. 

Most of the CNNs are composed of two types of layer:
A **convolutional (conv) layer** takes in M input fmaps of size I x I pixels, convolves them with filters of size K x K pixels, and produces N output fmaps of size O x O pixels. 

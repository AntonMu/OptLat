# OptLat
A Matlab program to determine the optimal lattice transformation between two Bravais Lattices

OptLat determines the k-optimal lattice transformation matrices between any two given Bravais lattices. For full details we refer to the paper "Optimality of general lattice transformations with applications to the Bain strain in steel" by K. Koumatos and A. Muehlemann available under http://arxiv.org/abs/1510.04708 . 
A lattice transformation is k-optimal if it minimises a strain energy associated to the Seth-Hill family of generalised strain tensors (also called Doyle-Ericksen tensors).

A well-known example is the so called Bain Strain in steel, which is the 1-optimal transformation from face-centred to body-centred cubic with respect to the Green-Lagrangian strain tensor, i.e. k=1. The corresponding lattice parameters are the default values when first opening OptLat.

The toolbar has two items: 
- "New Document": resets all values to the defaults 
- "Rotate": allows a free rotation of the previews of the unit cells

# Installation
 - via *.mlappinstall install file
 - as a Windows Standalone from http://solids.maths.ox.ac.uk/programs/OptLat.exe

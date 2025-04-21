# WRP: Parareal-based Waveform Relaxation method
The codes for the numerical examples of the paper entitled "Parareal-based waveform relaxation method for semi-linear parabolic equation" submitting to Computers and Mathematics with Applications.

## The first numerical example is for the Allen-Cahn equation

We utilize the finite difference scheme to discrete the space, the linear theta method to discrete the time.

For the outer WR iteration, we use the quasi-Newton WR method, which can be reduced to the traditional Picard and Newton iteration with respect to a parameter.

For the inner parareal iteration, we only take the inner iteration number s=1,2 since there is almost no difference for the higher s.

We use Matlab to test our algorithm, and all the data generated is uploaded.

## The second example is for a more complicated Advection-diffusion-reaction equation

We utilize the finite element method to discrete the space, the linear theta method to discrete the time.

We use the Python package NGsolve via Jupyter notebook to implement this example, and all the data generated is also uploaded.

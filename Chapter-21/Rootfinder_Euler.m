%This is the code to determine the eigenvalues of any finite lotka volterra equation (given survivorship and maternity)

%First, input the multiplication of the survivorship and maternity for in order of age. The first entry is always -1.
p = [-1 0.392 0.234 0.15 0.096 0.052 0.039 0.026 0.026 0.013 0.013]

%Next, we will find the roots of this polynomial
xint=roots(p)

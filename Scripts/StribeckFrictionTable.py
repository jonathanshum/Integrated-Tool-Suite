# Stribeck Friction Table Generator
# Algorithm from Modelica Standard Library
import numpy
import math

# Variables

F_prop = 1.0
F_Coulomb = 5.0
F_Stribeck = 5.0
fexp = 2.0
v_max = 12.0
nTable = 50

friction_table = numpy.zeros((nTable,2))

# Algorithm

for i in range(1,nTable):
    friction_table[i,0] = v_max*(i - 1.0)/(nTable - 1.0)
    friction_table[i,1] = F_Coulomb + F_prop*friction_table[i, 0] + F_Stribeck*math.exp(-fexp*friction_table[i, 0])

print friction_table

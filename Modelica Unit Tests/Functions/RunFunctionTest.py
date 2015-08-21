from pymodelica import compile_fmu
from pyfmi import load_fmu
import matplotlib.pyplot as plt

model_name = 'FunctionTest2'
mo_file = 'FunctionTest2.mo'
my_fmu1 = compile_fmu(model_name, mo_file, compiler_options={'extra_lib_dirs':['d:\\AAAA-Stuff\\AAAA-Working\\Modelica Projects']})
vdp1 = load_fmu(my_fmu1)
res = vdp1.simulate(final_time=10)

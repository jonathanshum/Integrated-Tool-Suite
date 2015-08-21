# Integrated Tool Suite

UC Berkeley, National Instruments, & Autodesk Collaborative Research Project

## Motivation

The goal of this project is to automate the workflow associated with the design and control of complex mechanical systems - specifically to bring simulation earlier into the design process. 

In the process, we start with a CAD model of our complex system then move the model into a simulation environment, where control software can be designed to control both the model in a simulation and the physical system.

In this repository, we have several test beds to explore the technologies required to make this happen.

## Test Beds

These following test beds illustrate a variety of features in mechanical systems. Aside from the slider crank, these are physical systems that are reverse engineered to avoid bias from designing mechanisms that adhere to the workflow.

1. DC Motor Test Stand
2. Inverted Pendulum
3. Five Axis Robotic Arm
4. Go Cart Drivetrain
5. Go Cart Steering
6. Slider Crank

For each test bed, we run through our prospective workflow and document challenges unique to each system.

## Prospective Workflow

First we begin with a model of our complex mechanical system in CAD environment. In this project, we use Autodesk Inventor and a prototype plug-in to convert our Inventor model into a Modelica model.

We use Modelica environments (OpenModelica and JModelica) as platforms to modify our model and export our model as an Functional Mock-up Unit - a file type based on the FMI 2.0 Standard which describes dynamic systems using differential, algebraic, discrete time equations.

Next we import our model into a simulation environment. We use NI LabVIEW Control & Simulation to design our control system and produce simulation results.

After we have design our control system, we feed the simulation results from NI LabVIEW back to Autodesk Inventor for visualization purposes using Autodesk Inventor Dynamic Simulation. 

Once we are satisfied with the behavior of our system, we can manufacture our complex mechanical system and use NI LabVIEW RIO architecture to control the system in real time.

## Installation

To view specific files, please download following software. Autodesk Inventor and NI LabVIEW require specific licenses.

* [Autodesk Inventor](http://www.autodesk.com/products/inventor/overview)
* [Modelica](http://modelica.org)
    * [OpenModelica](https://openmodelica.org)
    * [JModelica](https://jmodelica.org)
* [LabVIEW](http://www.ni.com/download-labview)
    * [Control Design and Simulation Module](http://www.ni.com/labview/cd-sim/)
    * [OpenG LabVIEW ZIP Library](http://sine.ni.com/nips/cds/view/p/lang/en/nid/209027)
    * In EMI_FMI Configuration.ini configure UseDefaultUnzipMethod = FALSE

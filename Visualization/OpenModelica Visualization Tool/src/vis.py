import wx
import os
import subprocess
from ConfigParser import SafeConfigParser, NoSectionError, NoOptionError

# OpenModelica Directory
modelicaLocation = 'C:\OpenModelica1.9.4-dev'

# Location of Batch Script 
dbusDirectory = modelicaLocation + '\lib\omlibrary-modelica3d\osg-gtk'

# Location of OpenModelica Compiler
omcLocation = modelicaLocation + R'\bin\omc.exe'

# Location of Modelica Model
modelLocation = ' '

# Location of Dependencies
dependenciesLocation = ' '

# Location of Modelica Script File
scriptDirectory = dbusDirectory + '\VisualizationScripts'
scriptLocation = scriptDirectory +'\VisualizationScript.mos'

# Runtime Defaults
startTime = "0"
endTime = "10"

config = SafeConfigParser()
config.read('config.ini')
try:
    savedModelicaLocation = config.get('main','modelicaLocation')
    modelicaLocation = savedModelicaLocation
    modelLocation = config.get('main','modelLocation')
    dependenciesLocation = config.get('main','dependenciesLocation')
    startTime = config.get('main','startTime')
    endTime = config.get('main','endTime')
except NoSectionError as e:
    config.add_section('main')
except:
    print "New Session" 


class Frame(wx.Frame):
    def __init__(self, parent, title):
        wx.Frame.__init__(self, parent, title=title, size=(-1, -1))

        self.panel = wx.Panel(self, wx.ID_ANY)
        self.Bind(wx.EVT_CLOSE, self.OnCloseWindow)

        bmp = wx.ArtProvider.GetBitmap(wx.ART_FIND, wx.ART_OTHER, (16, 16))
        inputOneIco = wx.StaticBitmap(self.panel, wx.ID_ANY, bmp)
        labelOne = wx.StaticText(self.panel, wx.ID_ANY, 'Modelica Dir', size=(75, -1))
        self.inputTxtOne = wx.TextCtrl(self.panel, wx.ID_ANY, modelicaLocation, size=(200, -1))
        inputOneIco.Bind(wx.EVT_LEFT_DOWN, self.GetDirectory)

        inputTwoIco = wx.StaticBitmap(self.panel, wx.ID_ANY, bmp)
        labelTwo = wx.StaticText(self.panel, wx.ID_ANY, 'Modelica Model', size=(75, -1))
        self.inputTxtTwo = wx.TextCtrl(self.panel, wx.ID_ANY, modelLocation, size=(200, -1))
        inputTwoIco.Bind(wx.EVT_LEFT_DOWN, self.GetFile)

        inputFiveIco = wx.StaticBitmap(self.panel, wx.ID_ANY, bmp)
        labelFive = wx.StaticText(self.panel, wx.ID_ANY, 'Dependencies', size=(75, -1))
        self.inputTxtFive = wx.TextCtrl(self.panel, wx.ID_ANY, dependenciesLocation, size=(200, -1))
        inputFiveIco.Bind(wx.EVT_LEFT_DOWN, self.GetFiles)

        labelThree = wx.StaticText(self.panel, wx.ID_ANY, 'Start Time (s)', size=(75, -1))
        self.inputTxtThree = wx.TextCtrl(self.panel, wx.ID_ANY, startTime, size=(225, -1))
        self.inputTxtThree.Bind(wx.EVT_CHAR, self.onChar) 

        labelFour = wx.StaticText(self.panel, wx.ID_ANY, 'End Time (s)', size=(75, -1))
        self.inputTxtFour = wx.TextCtrl(self.panel, wx.ID_ANY, endTime, size=(225, -1))
        self.inputTxtFour.Bind(wx.EVT_CHAR, self.onChar) 

        okBtn = wx.Button(self.panel, wx.ID_ANY, 'Run')
        self.Bind(wx.EVT_BUTTON, self.Run, okBtn)

        topSizer        = wx.BoxSizer(wx.VERTICAL)
        inputOneSizer   = wx.BoxSizer(wx.HORIZONTAL)
        inputTwoSizer   = wx.BoxSizer(wx.HORIZONTAL)
        inputFiveSizer  = wx.BoxSizer(wx.HORIZONTAL)
        inputThreeSizer = wx.BoxSizer(wx.HORIZONTAL)
        inputFourSizer  = wx.BoxSizer(wx.HORIZONTAL)
        btnSizer        = wx.BoxSizer(wx.HORIZONTAL)
        
        inputOneSizer.Add(labelOne, 0, wx.ALL, 5)
        inputOneSizer.Add(self.inputTxtOne, 1, wx.ALL|wx.EXPAND, 5)
        inputOneSizer.Add(inputOneIco, 0, wx.ALL, 5)
        
        inputTwoSizer.Add(labelTwo, 0, wx.ALL, 5)
        inputTwoSizer.Add(self.inputTxtTwo, 1, wx.ALL|wx.EXPAND, 5)
        inputTwoSizer.Add(inputTwoIco, 0, wx.ALL, 5)

        inputFiveSizer.Add(labelFive, 0, wx.ALL, 5)
        inputFiveSizer.Add(self.inputTxtFive, 1, wx.ALL|wx.EXPAND, 5)
        inputFiveSizer.Add(inputFiveIco, 0, wx.ALL, 5)

        inputThreeSizer.Add(labelThree, 0, wx.ALL, 5)
        inputThreeSizer.Add(self.inputTxtThree, 1, wx.ALL|wx.EXPAND, 5)

        inputFourSizer.Add(labelFour, 0, wx.ALL, 5)
        inputFourSizer.Add(self.inputTxtFour, 1, wx.ALL|wx.EXPAND, 5)

        btnSizer.Add(okBtn, 0, wx.ALL, 5)

        topSizer.Add(inputOneSizer, 0, wx.ALL|wx.EXPAND, 5)
        topSizer.Add(inputTwoSizer, 0, wx.ALL|wx.EXPAND, 5)
        topSizer.Add(inputFiveSizer, 0, wx.ALL|wx.EXPAND, 5)
        topSizer.Add(inputThreeSizer, 0, wx.ALL|wx.EXPAND, 5)
        topSizer.Add(inputFourSizer, 0, wx.ALL|wx.EXPAND, 5)
        topSizer.Add(btnSizer, 0, wx.ALL|wx.CENTER, 5)

        self.panel.SetSizer(topSizer)
        topSizer.Fit(self)

        if not os.path.exists(scriptDirectory):
            os.makedirs(scriptDirectory)

    def GetDirectory(self, e):
        dlg = wx.DirDialog (None, "Select Modelica Directory", "",
                    wx.DD_DEFAULT_STYLE | wx.DD_DIR_MUST_EXIST)
        dlg.ShowModal()
        self.inputTxtOne.SetValue(dlg.GetPath())
        dlg.Destroy()

    def GetFile(self, e):
        dlg = wx.FileDialog(self, "Open .Mo file", "", "",
                                       "Mo files (*.mo)|*.mo", wx.FD_OPEN | wx.FD_FILE_MUST_EXIST)
        dlg.ShowModal()
        self.inputTxtTwo.SetValue(dlg.GetPath())
        dlg.Destroy()

    def GetFiles(self, e):
    	dlg = wx.FileDialog(self, "Open .Mo file", "", "",
                                       "Mo files (*.mo)|*.mo", wx.FD_OPEN | wx.FD_FILE_MUST_EXIST | wx.FD_MULTIPLE)
        dlg.ShowModal()
        self.inputTxtFive.SetValue(';'.join(dlg.GetPaths()))
        dlg.Destroy()

    def Run(self,e):
        global modelicaLocation
        modelicaLocation = self.inputTxtOne.GetValue()
        global modelLocation
        modelLocation = self.inputTxtTwo.GetValue()
        global dependenciesLocation
        dependenciesLocation = self.inputTxtFive.GetValue()
        self.UpdateLocations()
        activateDBUS = "python dbus-server.py"
        process1 = subprocess.Popen(activateDBUS.split(), cwd=dbusDirectory)
        global startTime 
        startTime = self.inputTxtThree.GetValue()
        global endTime
        endTime = self.inputTxtFour.GetValue()
        self.createMOS()
        process2 = subprocess.call([omcLocation, scriptLocation], shell=True)
        with open('config.ini', 'w') as f:
            config.set('main', 'modelicaLocation', modelicaLocation)
            config.set('main', 'modelLocation', modelLocation)
            config.set('main', 'dependenciesLocation', dependenciesLocation)
            config.set('main', 'startTime', startTime)
            config.set('main', 'endTime', endTime)
            config.write(f)
        
    def createMOS(self):
        mo_file = open(modelLocation, 'r')
        model_name = mo_file.read().split(' ')[1]
        print '\nVisualizing ' + model_name
        try:
            if int(endTime) < int(startTime):
                raise ValueError
        except ValueError:
            print "Invalid Start Time and/or End Time"
            global startTime
            startTime = "0"
            global endTime
            endTime = "10"

        loadString = ''
        if (dependenciesLocation != ' '):
        	locations = dependenciesLocation.split(';')
        	for location in locations:
        		loadString = loadString + ';\nloadFile("'
        		loadString = loadString + location
        		loadString = loadString + '")'
        loadString = loadString.replace('\\','\\\\')

        mos_code = 'loadModelica3D();\ngetErrorString()' + loadString + ';\nloadFile("' + modelLocation.replace('\\','\\\\') + '")' + ';\ngetErrorString();\nloadString("model Visualize_MyModel inner ModelicaServices.Modelica3D.Controller m3d_control; extends ' + model_name + '; end Visualize_MyModel;");\ngetErrorString();\nsimulate(Visualize_MyModel, numberOfIntervals=1000, startTime=' + startTime + ', stopTime=' + endTime + ');\ngetErrorString();'
        mos_file = open(scriptLocation, 'w')
        mos_file.write(mos_code)
    
    def onChar(self, event): 
        key = event.GetKeyCode() 
        acceptable_characters = "1234567890." 
        acceptable_keys = [8,37,39,46] # backspace, left, right, delete
        if chr(key) in acceptable_characters or key in acceptable_keys: 
            event.Skip() 
            return 
        else: 
            return False 

    def OnCloseWindow(self, e):
        self.Destroy()

    def UpdateLocations(self):
        global dbusDirectory
        global omcLocation
        global scriptDirectory
        global scriptLocation
        dbusDirectory = modelicaLocation + '\lib\omlibrary-modelica3d\osg-gtk'
        omcLocation = modelicaLocation + R'\bin\omc.exe'
        scriptDirectory = dbusDirectory + '\VisualizationScripts'
        scriptLocation = scriptDirectory +'\VisualizationScript.mos'

if __name__ == '__main__':
    app = wx.App(False)
    frame = Frame(None, "Modelica Visualization")
    frame.Show(True)
    app.MainLoop()
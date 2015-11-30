from distutils.core import setup
import py2exe

setup(console=['vis.py'],options = {"py2exe": {"dll_excludes": ["MSVCP90.dll"]}},windows=['vis.py'])
@REM TURNS OFF COMMENTS
@echo off

@REM SETS AND CREATESTHE NAMESPACE
set /p name="Enter namespace: "
mkdir %name% && cd %name%

@REM CREATES THE PACK.MCMETA FILE
echo {>> pack.mcmeta
echo   "pack": {>> pack.mcmeta
echo     "pack_format": 7,>> pack.mcmeta
@REM sets the description variable
set /p des="Enter description: "
echo     "description": "Created by tyropro's datapack batch file :: %des%">> pack.mcmeta
echo   }>> pack.mcmeta
echo }>> pack.mcmeta

@REM Makes data dir
mkdir data && cd data

@REM makes namespace's dirs inside of the data dir
mkdir %name%\functions
mkdir %name%\recipes
mkdir %name%\advancements
mkdir minecraft\tags\functions

@REM creates the minecraft files to run on load and tick
echo {>> minecraft\tags\functions\tick.json
echo   "values": [>> minecraft\tags\functions\tick.json
echo       "">> minecraft\tags\functions\tick.json
echo   ]>> minecraft\tags\functions\tick.json
echo }>> minecraft\tags\functions\tick.json

echo {>> minecraft\tags\functions\load.json
echo   "values": [>> minecraft\tags\functions\load.json
echo       "">> minecraft\tags\functions\load.json
echo   ]>> minecraft\tags\functions\load.json
echo }>> minecraft\tags\functions\load.json
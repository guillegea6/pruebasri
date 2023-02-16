@echo off 
rem Crear un fichero BAT que busque una cadena dada por el usuario en todos los
rem archivos de un directorio y copie en el directorio C:\COPIA los archivos que contengan
rem dicha cadena.

set pwd=%cd%
set /p cadena="Introduce la cadena: "
set /p directorio ="Introduce la ruta absoluta del directorio"
set dircopy = "C:\COPIA" 

if not exist %dircopy%\* (
    mkdir %dircopy%
)
if not exist %directorio%\.{
    echo "El directorio no existe introduce un directorio valido"
}
else (
  cd %directorio%

  find "%cadena%" * > nul
  if not errorlevel 1 (
    echo "Se ha encontrado la cadena: " %cadena% " en el ficher"
    copy "%archivo%" "%dircopy%"
    echo Se ha copiado el archivo ""
  )
  else (

  )
)
cd %pwd%

rem for /r C:\  %%a in (*) do (
    
rem    if %directorio% == %%a && if exist %directorio%\* (        
rem         echo "Se ha encontrado el directorio"
rem        if exist %fichero%.* (
rem            copy %fichero% %dircopy%
rem      )
rem         else
rem            echo "No se ha encontrado ningun archivo"
rem         )
        
    
rem    else (
rem        echo "No se ha encontrado el directorio"

rem    )

rem )



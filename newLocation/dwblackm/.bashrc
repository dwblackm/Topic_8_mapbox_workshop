test -r ~/.alias && . ~/.alias
PS1='GRASS 7.0.3 (newLocation):\w > '
grass_prompt() {
	LOCATION="`g.gisenv get=GISDBASE,LOCATION_NAME,MAPSET separator='/'`"
	if test -d "$LOCATION/grid3/G3D_MASK" && test -f "$LOCATION/cell/MASK" ; then
		echo [2D and 3D raster MASKs present]
	elif test -f "$LOCATION/cell/MASK" ; then
		echo [Raster MASK present]
	elif test -d "$LOCATION/grid3/G3D_MASK" ; then
		echo [3D raster MASK present]
	fi
}
PROMPT_COMMAND=grass_prompt
export GRASS_GNUPLOT="gnuplot -persist"
export GRASS_PYTHON=python
export GRASS_PAGER=pager
export GRASS_HTML_BROWSER=xdg-open
export GRASS_ADDON_BASE=/home/dwblackm/.grass7/addons
export GRASS_PROJSHARE=/usr/share/proj
export GRASS_VERSION=7.0.3
export PATH="/usr/lib/grass70/bin:/usr/lib/grass70/scripts:/home/dwblackm/.grass7/addons/bin:/home/dwblackm/.grass7/addons/scripts:/bin:/usr/bin:/usr/local/bin"
export HOME="/home/dwblackm"

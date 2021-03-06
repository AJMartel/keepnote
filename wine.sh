#!/bin/sh
#
#  KeepNote
#  Copyright (c) 2008-2009 Matt Rasmussen
#  Author: Matt Rasmussen <rasmus@mit.edu>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; version 2 of the License.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301, USA.
#

. ./wine-env.sh
echo WINEPREFIX=$WINEPREFIX

echo "set PATH=%PATH%;C:\\GTK\\\\bin;C:\\Python25;C:\\Program Files\\Inno Setup 5" > wine.bat
echo $* >> wine.bat


#WINEDLLOVERRIDES="imagehlp,msimg=n" wine start wine.bat
WINEDLLOVERRIDES="imagehlp,msimg=n" wineconsole --backend=curses wine.bat


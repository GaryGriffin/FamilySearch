# FamilySearch
Patches for gramplet which communicate between gramps and FamilySearch

To create English version of PersonFS :
make
 -or- 
make english

To revert to Esperanto version:
make esperanto

At this point, you need to make all of the english files which includes updates for UI, debug print, and tags. 
If you only make some of these targets, no guarantees on working.

Requirements: linux install environment which supports make, sed, and patch.

The original esperanto versions are saved with a .SAVE extension for potential reversion. If you delete these, you cannot revert. 

Put these files in the same directory as the PersonFS files. 
I have tested against main and dev branches and both seem to work fine on my Mac. I suspect they will work on Linux.


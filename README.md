
# MultiViewer
_A very basic multi-image viewer intended for displaying art references. Made with Defold._

The two popular art reference viewers out there, Kuadro and PureRef, are cool, but I don't like them for various reasons. Kuadro, last I tried it, was a pain because every image was a separate window. PureRef doesn't have that issue, but it has very weird controls and hotkeys, and doesn't let me use the Windows hotkeys for moving the window around, maximizing it, etc.

My MultiViewer is not meant to compete with those programs. It has only the most basic features necessary for it to be useful: moving and scaling images and the viewport and saving and loading "projects"(groups of images). It doesn't support a lot of image types (progressive jpegs for example), only PNGs, most JPEGs, and GIFs (it won't animate them). I generally use it on my second monitor. Since it can't be "always on top" of other windows (without external software), it's probably not too useful if you only have one monitor like a normal person.

### Controls
* <kbd>Ctrl-O</kbd> or <kbd>Space</kbd> -- Open images or project files (.multiview)
* <kbd>Ctrl-S</kbd> -- Save project
* <kbd>Left-Click-Drag</kbd> -- Move image
* <kbd>Right-Click-Drag</kbd> -- Scale image
* <kbd>Middle-Click-Drag</kbd> -- Pan Viewport
* <kbd>Mouse Wheel</kbd> -- Zoom Viewport
* <kbd>Page Up</kbd> -- Move image under cursor up in draw order
* <kbd>Page Down</kbd> -- Move image under cursor down in draw order

#### Notes on Saving & Loading Projects
* Opening a .multiview file just adds in the saved images to your viewport, it won't remove any images you've already loaded.
* Saving a project will record all the images you have open.
* You don't have to type in the file extension when saving, it will add it on automatically if it's not there.
* It doesn't remember project file names, you'll have to select the file again and overwrite it if you want to update a project.
* You can open images and project files at the same time.
# Bitmap Font Importer
A Godot plugin for importing bitmap images as a Bitmap Fonts for use in Godot themes.

## Usage
Before the plug-in can be used, ensure it's enabled in the **Project Settings** window

### Image format
* The tool supports any bitmap image that Godot supports
* All glyphs (characters) need to be the same width and height, but can be organized into rows and columns as you see fit
* There musn't be any spacing between rows or columns
* Each row or column does not need to be filled
* A space character should be included
* Transparency is supported

### Creating a new font resource
There are multiple ways to go about creating a new resource, but this is the workflow I use:

* In the **FileSystem** pane, right click and select **Create new resource**
* Select **BitmapFontImporter** As the resource type
* Choose a path and filename for the resource to be saved as (I prefer to use the *.font* file extension)
* Open the new resource from the **FileSystem** pane
* *Click and drag* your font sheet into the texture field in the **Inspector** pane
* Set the *Character Width* and *Character Height* in the **Inspector** pane
* Set the *Height* to be the same as the *Character Height* to prevent strange behaviour


### Using the new resource in a theme
Once the resource is finished, it can be used as any font in a theme simply by *Clicking and dragging* the resource from the **FileSystem** pane to the *font* field in the **Inspector** pane of the selected theme.

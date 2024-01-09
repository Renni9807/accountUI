*****THE MOST IMPORTANT THING —> Must put your cursor on the Widget, method or etc in order to figure out what kind of service it can support/afford.

If you make object inside the container larger, then container also becomes larger beyond specific point.
Then what should we do If we want to enlarge the size of object?
Use Transform.scale !

If you use, for example Transform.scale( size: 3,), then only the size of object would be enlarged while the container maintains its size. (No size change in container)
And you need to clarify the size, such as size: 2, or size:3, otherwise it would give you an error.

If you want to manage the location of the icon, then you need to know how to create an icon, move icon and enlarge icon.

create icon -> Icon(Icons.nameOfIcon, color: Colors.white, size: 88),
enlarge icon (without enlarging the container. If you increase the size of icon in Icon(), then it would make container bigger.) 
Use Transform.scale(size: 3), —> in Transform.size(), size must be written as parameter.


How to move the location of icon?
In case of Icon location, you should use Transform.translate(offset: Offset(xAxis, yAxis),),
offset is mandatory in Transform.translate


What if you want to cut off the part of icon outside the container?
Use clipBehavior as container’s element.
clipBehavior —> specify how you want your container to behave when any item overflows it.

ex, if you use clipBehavior: Clip.hardEdge, then the part of icon overflows the container will be vanished.

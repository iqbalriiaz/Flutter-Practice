
# login_animation
<pre>
/**
* project: login animation
* @author: Iqbal Hossen Riaz
* /
</pre>


## My Approach

1. <b>Animation:</b>  <br>The animation 'Yeti' is a combination of several photos. I've taken around 27 screenshots of different frames.
The animation can be found here:  [Click it](https://codepen.io/tsouhaieb/pen/zVrxNe "codepen.io").

2. <b>Animation on email character input :</b>  <br>So here's basically I've counted the character length and changed the images sequentially [through conditions],  which created an animation effect.


### <a name="pookie"></a> <strong>i).  counting character length:</strong>
```Dart
int  charLength  =  0;

onChanged(String  value) {
	setState(() {
		charLength = value.length;
	});
}
```
### <strong>ii). changing images:
(based on the input character length of email TextField)</strong>
```Dart
//setting a default path for the CircleAvatar
String  imageLink  =  'images/default_focus.png';
```

```Dart
//creating a constructor to pass new values[path of images] of the images.
//whenever we need to change a image based "onTap:/onPressed:" we will call the constructor.

onTap(String  value) {
	setState(() {
		imageLink = value;
	});
}
```


Take me to [pookie](#pookie)

```Dart
[this code snippet is extension of  ]
onChanged(String  value) {
	setState(() {
		charLength  =  value.length;
		if (charLength  ==  0) {
		onTap('images/2.png');
		} else  if (charLength  ==  1) {
		onTap('images/3.png');
		} else  if (charLength  ==  2) {
		onTap('images/4.png');
		} 
		  -----
		  -----
		  else  if (charLength  ==  22) {
		  onTap('images/24.png');
		  } else {
		  onTap('images/24.png');
		  }
		}
	);
}
```
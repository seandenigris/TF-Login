Baseline to load TF-Login. This baseline does not load Seaside, in case you want to load it into an image that already has Seaside.

If you are starting with a fresh Seaside-less image, then:

Metacello new
	baseline: 'Seaside3';
	repository: 'github://SeasideSt/Seaside:v3.3.3/repository';
	load.
Metacello new
	baseline: 'TFLogin';
	repository: 'github://PierceNg/TF-Login:pharo7/src';
	load.
	
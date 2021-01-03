# Motion Detection POC

## Description
I used https://github.com/WillBrennan/MotionDetector as base for the following script.

To run:

1. place (multiple) mp4 files in the ./examples dir
2. run ./run_for_examples.sh
3. profit

(tested on debian buster)

It requires OpenCV and Numpy, to [install OpenCV](http://docs.opencv.org/doc/tutorials/introduction/linux_install/linux_install.html).

## Notes

## Meeting
 - habt ihr ne(n) github/gitlab server/account/group? (depencies, tests, docu)
 - liste mit autos waere spitze!
 - wie weiter?
   - optimierung:
      - testen, wieviel fixer gpu ist?
      - parallelisierung mit mehreren workern?
   - gui?
      - electron + vueJS?
      - features ?


## Background Info for Motion Detection

- https://bitworks.software/en/high-speed-movement-detector-opencv-numba-numpy-python.html


### Interesting Projects

#### motion detection opencv general
- https://github.com/sgjava/motiondetector
	- Pretty complete solution
- https://github.com/Agaetis-IT/Motion-Detector-Video
	```
	Possible paramaters:		
			-i (--input-video): type=str, default='': Input video file (in inputs/)
			-a (--min-area): type=int, default=5000: minimum area size used to trigger motion
			-r (--refresh-delay): type=int, default=5: Reference Frame refresh delay (s)
			-d (--detection-release): type=int, default=5: Detection release (s) e.g. delay to stop record after the last motion detected
			-c (--output-codec): type=str, default="mkv": Ouput video codec. Supported codec (for now): "mkv" and "avi"
			-l (--display-level): type=int, default=0: Display level (0: no display)
	```
	
- https://github.com/koziolekrg/MotionDetection
	- Motion detection from camera or video file (C++ and OpenCV)
	- 
- https://github.com/methylDragon/opencv-motion-detector
- https://github.com/bwsw/rt-motion-detection-opencv-python
- https://github.com/WillBrennan/MotionDetector

#### opencv 
- vehicle detection: https://www.pyimagesearch.com/2019/12/02/opencv-vehicle-detection-tracking-and-speed-estimation/
- https://medium.com/@curiousblogger/vehicle-detection-using-python-and-opencv-c90b2b0e13d3
#### deep learning approaches
- vehicle detection: https://etrr.springeropen.com/articles/10.1186/s12544-019-0390-4


## GUI Workflows
### Analysis
	1.Import/Select Files
		1. Get timestamp(s)
	2. Select File(s) for analysis
	3. Crop Selection 
	4. Create Job(s)
		if(crop)
			foreach(file)
				createjob
					type video_crop
					file:
					continuewith:video_motion_detect
		else
			createjob
			type:video_motion_detect
			file:
			continuewith:add_line_to_csv(job_id.csv)
		Possible Parameters
			- Motion tollerance
			- Crop
			- 
	### Viewer
		1. Import videos from job_id.csv or from file_selection
		2. Play them
		Possible Features
			- Gallery view (4/12/32) videos at the same time
			- Timelapse
			- Button to mark event

%read the image
A = imread('test.jpg');
%Get FaceDetector Object
FaceDetector = vision.CascadeObjectDetector();
%Use Face_detector object on A get faces
bbox = step(FaceDetector, A);
%Annotate these faces on the top of the image
B = insertObjectAnnotation(A, 'rectangle', bbox, 'face');
imshow(B), title('Detected Faces');
%display the no of facs in a string
n = size(bbox, 1);
str_n = num2str(n);
str = strcat('Number of detected faces are ', str_n);
disp(str);

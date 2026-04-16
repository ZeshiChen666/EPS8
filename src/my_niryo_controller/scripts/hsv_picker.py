import cv2
from pyniryo import *

robot = NiryoRobot("10.10.10.10")

mtx, dist = robot.get_camera_intrinsics()
img_compressed = robot.get_img_compressed()
img_raw = uncompress_image(img_compressed)
img = undistort_image(img_raw, mtx, dist)

hsv = cv2.cvtColor(img, cv2.COLOR_BGR2HSV)

def mouse_click(event, x, y, flags, param):
    if event == cv2.EVENT_LBUTTONDOWN:

        h, s, v = hsv[y, x]
        b, g, r = img[y, x]

        print("Pixel:", x, y)
        print("BGR:", b, g, r)
        print("HSV:", h, s, v)
        print("----------------------")

cv2.namedWindow("image")
cv2.setMouseCallback("image", mouse_click)

while True:
    cv2.imshow("image", img)

    if cv2.waitKey(1) & 0xFF == 27:
        break

cv2.destroyAllWindows()
robot.close_connection()
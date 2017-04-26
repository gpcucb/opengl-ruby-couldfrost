require 'opengl'
require 'glu'
require 'glut'

include GL
include Glu
include Glut
BODY_HEIGHT = 4.0
BODY_WIDTH = 2.5
BODY_LENGTH = 1.0
ARM_HEIGHT = 3.5
ARM_WIDTH = 1.0
ARM_LENGTH = 1.0
LEG_HEIGHT = 4.5
LEG_WIDTH = 1.0
LEG_LENGTH = 1.0
HEAD_RADIUS = 1.1
def display
	glClearColor(0.0,0.0,0.0,0.0)
	glClear(GL_COLOR_BUFFER_BIT)
	glMatrixMode(GL_PROJECTION)
	glLoadIdentity
	gluPerspective(60.0,1.0,1.0,100.0)
	glMatrixMode(GL_MODELVIEW)
	glBegin(GL_TRIANGLES)
	   glColor3f(1.0,0.0,0.0)
	   glVertex3f(0.0,0.8,0.0)
	   glColor3f(0.0,1.0,0.0)
	   glVertex3f(-0.6,-0.2,0.0)
	   glColor3f(0.0,0.0,1.0)
	   glVertex3f(0.6,-0.2,0.0)
	 glEnd
	 glFlush
	 glutPostRedisplay
end
def dis
	glDepthFunc(GL_LEQUAL)
    glEnable(GL_DEPTH_TEST)
    glClearDepth(1.0)
	glClearColor(0.0,0.0,0.0,0.0)

	glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT)
	glMatrixMode(GL_PROJECTION)
	
	glLoadIdentity
	gluPerspective(60.0,1.0,1.0,100.0)

	glMatrixMode(GL_MODELVIEW)
    glTranslatef(0.0,0.0,-1.0)
 	glBegin(GL_QUADS)
	   glColor3f(1.0,0.0,0.0)
	   glVertex3f(-0.5,0.5,-0.5)
	   glColor3f(1.0,0.0,0.0)
	   glVertex3f(-0.5,-0.5,0.5)
	 
	   glVertex3f(0.5,-0.5,0.5)
	  
	   glVertex3f(0.5,0.5,-0.5)

	glEnd


     glBegin(GL_TRIANGLES)
	   #glColor3f(1.0,0.0,0.0)
	   glColor3f(0.0,0.0,1.0)
	   glVertex3f(0.0,0.5,0.0)
	
	   glVertex3f(-0.7,-0.5,0.0)
	   glColor3f(0.0,0.0,1.0)
	   glVertex3f(0.7,-0.5,0.0)
	 glEnd
	 glFlush
     sleep(0)


	 
end
puts("hola mundo")
glutInit
glutInitDisplayMode(GLUT_SINGLE|GLUT_RGBA | GLUT_DEPTH)
glutInitWindowSize(500,500)
glutInitWindowPosition(20,20)
glutCreateWindow("hola opengl,enruby")
glutDisplayFunc :dis

glutMainLoop
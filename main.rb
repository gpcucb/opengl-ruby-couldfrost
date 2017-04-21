require 'opengl'
require 'glu'
require 'glut'

include GL
include Glu
include Glut
def display
	glClearColor(0.0,0.0,0.0,0.0)
	glClear(GL_COLOR_BUFFER_BIT)
	glMatrixMode(GL_PROJECTION)
	glLoadIdentity
	glOrtho(-1.0,1.0,-1.0,1.0,-1.0,1.0)
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
	glClearColor(0.0,0.0,0.0,0.0)
	glClear(GL_COLOR_BUFFER_BIT)
	glMatrixMode(GL_PROJECTION)
	glLoadIdentity
	glOrtho(-1.0,1.0,-1.0,1.0,-1.0,1.0)
	glMatrixMode(GL_MODELVIEW)
	glBegin(GL_QUADS)
	   glColor3f(1.0,0.0,0.0)
	   glVertex3f(-0.5,0.5,-0.5)
	   glColor3f(0.0,1.0,0.0)
	   glVertex3f(-0.5,-0.5,0.5)
	   glColor3f(0.0,0.0,1.0)
	   glVertex3f(0.5,-0.5,0.5)
	   glColor3f(0.0,0.0,1.0)
	   glVertex3f(0.5,0.5,0.5)

	 glEnd
	 glFlush
	 glutPostRedisplay
end
puts("hola mundo")
glutInit
glutInitDisplayMode(GLUT_SINGLE|GLUT_RGBA)
glutInitWindowSize(500,500)
glutInitWindowPosition(20,20)
glutCreateWindow("hola opengl,enruby")
glutDisplayFunc :dis 
glutMainLoop
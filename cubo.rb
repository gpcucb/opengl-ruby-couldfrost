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
    glTranslatef(0.0,0.0,-16.0)

      glRotatef(-160,0,0,1)
   
    glPushMatrix()
     glColor3f(0.0,0.3,0.8)
     glutWireCube(1);
    glPopMatrix();

    glPushMatrix()
     glScalef(5,5,5)
     glColor3f(0.5,0,0)
     glutWireCube(1)
    glPopMatrix()

    
    glPushMatrix()
     glTranslatef(5,5,5)
     glColor3f(0.0,0.3,0)
     glutWireCube(1);
    glPopMatrix();

    glPushMatrix()
     glRotatef(-90,10,0,5)
     glColor3f(0.5,0.3,0.5)
     glutWireCube(1);
    glPopMatrix();

    glPushMatrix()
     glTranslatef(-5,-5,5)
     glRotatef(-180,0,0,1)
     glColor3f(0.5,0.9,0.5)
     glutWireCube(1);
    glPopMatrix();

    glFlush()
    sleep(20)




	 
end
puts("hola mundo")
glutInit
glutInitDisplayMode(GLUT_SINGLE|GLUT_RGBA | GLUT_DEPTH)
glutInitWindowSize(500,500)
glutInitWindowPosition(20,20)
glutCreateWindow("hola opengl,enruby")
glutDisplayFunc :dis

glutMainLoop
require 'opengl'
require 'glu'
require 'glut'

include GL
include Glu
include Glut
def dis
	glDepthFunc(GL_LEQUAL)
    glEnable(GL_DEPTH_TEST)
    glClearDepth(1.0)
	glClearColor(0.0,0.0,0.0,0.0)

    glEnable(GL_LIGHTING)
    glEnable(GL_LIGHT0)
    glEnable(GL_COLOR_MATERIAL)
    glColorMaterial(GL_FRONT_AND_BACK,GL_AMBIENT_AND_DIFFUSE)
    glEnable(GL_NORMALIZE)
    glShadeModel(GL_SMOOTH)

    position = [80.0,50.0,180.0]
    color =[1.0,1.0,1.0,1.0]
    specular=[1.0,0.0,0.0,0.0]
    ambient =[0.2,0.2,0.2,0.1]

    glLightfv(GL_LIGHT0,GL_POSITION,position)
    glLightfv(GL_LIGHT0,GL_DIFFUSE,color)
    glLightfv(GL_LIGHT0,GL_SPECULAR,specular)
    #glMaterialfv(GL_FRONT_AND_BACK,GL_SHININESS,[10.0])
    glLightModelfv(GL_LIGHT_MODEL_AMBIENT,ambient)

	glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT)
	glMatrixMode(GL_PROJECTION)
	


	glLoadIdentity
	gluPerspective(60.0,1.0,1.0,100.0)
     

	glMatrixMode(GL_MODELVIEW)
    
   # gluLookAt(eye[0],eye[1],eye[2],center[0],center[1],center[2],up[0],up[1],up[2])
    glTranslatef(0.0,0.0,-16.0)
    glColor3f(4,5.6,2.0)
    glPushMatrix()
      glTranslatef(5.0,5.0,-2.0)
      
    glutSolidSphere(3,150,150)
    glPopMatrix()
      glColor3f(0.2,0.6,2.0)
    glPushMatrix()
     # glScalef(0.5,0.5,0.5)
      glTranslatef(-5.0,5.0,-2.0)
      glutSolidSphere(3,40,10)
      #glTranslatef(0.0,0.0,-2.0)
    glPopMatrix()

    glColor3f(1.0,2.6,2.0)
    glPushMatrix()
     # glScalef(0.5,0.5,0.5)
      glTranslatef(5.0,-5.0,-2.0)
      glutSolidSphere(3,40,10)
      #glTranslatef(0.0,0.0,-2.0)
    glPopMatrix()

    glColor3f(1.0,0.6,2.0)
    glPushMatrix()
     # glScalef(0.5,0.5,0.5)
      glTranslatef(-5.0,-5.0,-2.0)
      glutSolidSphere(3,40,10)
      #glTranslatef(0.0,0.0,-2.0)
    glPopMatrix()

    glFlush()
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
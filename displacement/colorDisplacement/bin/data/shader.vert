varying vec3 p;
varying vec3 n;
varying vec3 v;

void main(void)
{
	v = gl_Vertex.xyz;
	p = vec3(gl_ModelViewMatrix * gl_Vertex);
	n = normalize(gl_NormalMatrix * gl_Normal).xyz;
	gl_TexCoord[0] = gl_MultiTexCoord0;
	gl_Position = ftransform();

}
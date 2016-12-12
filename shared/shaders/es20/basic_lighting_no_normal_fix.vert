
attribute vec3 vertexPosition;
attribute vec3 vertexNormal;
attribute vec2 vertexTexCoord;

varying vec3 normal;
varying vec3 fragPos;

uniform mat4 mvp;
uniform mat4 modelMatrix;

void main()
{
	gl_Position = mvp * vec4(vertexPosition, 1.);
	normal = vertexNormal;
	fragPos = vec3(modelMatrix * vec4(vertexPosition, 1.));
}

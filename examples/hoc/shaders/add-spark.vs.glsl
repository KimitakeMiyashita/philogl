attribute vec3 position;
attribute vec2 texCoord1;
attribute vec2 texCoord2;

uniform mat4 worldMatrix;
uniform mat4 projectionMatrix;

varying vec2 vTexCoord1;
varying vec2 vTexCoord2;
varying vec4 vPosition;

void main(void) {
  vPosition = worldMatrix * vec4(position, 1.0);
  vTexCoord1 = texCoord1;
  vTexCoord2 = texCoord2;
  gl_Position = projectionMatrix * vPosition;
}




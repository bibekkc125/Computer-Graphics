#version 330

layout (location = 0) in vec4 aPos; // <vec2 position, vec2 texCoords>

out vec2 TexCoords;

uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;

void main(void) {
	TexCoords = aPos.zw;
	gl_Position = projection * view * model* vec4(aPos.xy,0.1,1.0);
}
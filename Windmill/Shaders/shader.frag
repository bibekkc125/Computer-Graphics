#version 330

in vec2 TexCoords;
out vec4 color;

uniform sampler2D image;

void main(void) {
	color = texture(image, TexCoords);
}

/*
Copyright (c) 2019 The Khronos Group Inc.
Use of this source code is governed by an MIT-style license that can be
found in the LICENSE.txt file.
*/


attribute vec4 gtf_Vertex;
uniform mat4 gtf_ModelViewProjectionMatrix;
//
// vec3arraydirect_vert.vert: Vertex shader solid color
//
//
//

uniform vec3 lightPosition[2];
varying vec4  color;

void main(void)
{

     color = vec4(lightPosition[0] + lightPosition[1], 0.0) * 0.5;

     gl_Position     = gtf_ModelViewProjectionMatrix * gtf_Vertex;


}

//
//  Shader.vsh
//  throwaway1
//
//  Created by Geraldo Nascimento on 5/28/11.
//  Copyright 2011 Geraldo Nascimento. All rights reserved.
//

attribute vec4 position;
attribute vec4 color;

varying vec4 colorVarying;

uniform float translate;

void main()
{
    gl_Position = position;
    gl_Position.y += sin(translate) / 2.0;

    colorVarying = color;
}

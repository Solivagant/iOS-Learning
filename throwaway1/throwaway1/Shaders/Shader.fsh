//
//  Shader.fsh
//  throwaway1
//
//  Created by Geraldo Nascimento on 5/28/11.
//  Copyright 2011 Geraldo Nascimento. All rights reserved.
//

varying lowp vec4 colorVarying;

void main()
{
    gl_FragColor = colorVarying;
}

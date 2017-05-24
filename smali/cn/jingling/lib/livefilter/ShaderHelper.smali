.class public Lcn/jingling/lib/livefilter/ShaderHelper;
.super Ljava/lang/Object;
.source "ShaderHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ShaderHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compileShader(ILjava/lang/String;)I
    .locals 5
    .param p0, "shaderType"    # I
    .param p1, "shaderSource"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 41
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 43
    .local v1, "shaderHandle":I
    if-eqz v1, :cond_0

    .line 45
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 48
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 51
    const/4 v2, 0x1

    new-array v0, v2, [I

    .line 52
    .local v0, "compileStatus":[I
    const v2, 0x8b81

    invoke-static {v1, v2, v0, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 56
    aget v2, v0, v3

    if-nez v2, :cond_0

    .line 57
    const-string v2, "ShaderHelper"

    .line 58
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error compiling shader: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 58
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 57
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 61
    const/4 v1, 0x0

    .line 65
    .end local v0    # "compileStatus":[I
    :cond_0
    if-nez v1, :cond_1

    .line 66
    const-string v2, "ShaderHelper"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error creating shader."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 70
    :cond_1
    return v1
.end method

.method public static compileShader(Landroid/content/Context;II)I
    .locals 2
    .param p0, "cx"    # Landroid/content/Context;
    .param p1, "shaderType"    # I
    .param p2, "shaderSourceId"    # I

    .prologue
    .line 25
    invoke-static {p0, p2}, Lcn/jingling/lib/livefilter/RawResourceReader;->readTextFileFromRawResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, "shaderSource":Ljava/lang/String;
    invoke-static {p1, v0}, Lcn/jingling/lib/livefilter/ShaderHelper;->compileShader(ILjava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static createAndLinkProgram(II[Ljava/lang/String;)I
    .locals 7
    .param p0, "vertexShaderHandle"    # I
    .param p1, "fragmentShaderHandle"    # I
    .param p2, "attributes"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 86
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    .line 88
    .local v2, "programHandle":I
    if-eqz v2, :cond_1

    .line 90
    invoke-static {v2, p0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 93
    invoke-static {v2, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 96
    if-eqz p2, :cond_0

    .line 97
    array-length v3, p2

    .line 98
    .local v3, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v3, :cond_2

    .line 104
    .end local v0    # "i":I
    .end local v3    # "size":I
    :cond_0
    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 107
    const/4 v4, 0x1

    new-array v1, v4, [I

    .line 108
    .local v1, "linkStatus":[I
    const v4, 0x8b82

    invoke-static {v2, v4, v1, v5}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 112
    aget v4, v1, v5

    if-nez v4, :cond_1

    .line 113
    const-string v4, "ShaderHelper"

    .line 114
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error compiling program: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-static {v2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 114
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 113
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 117
    const/4 v2, 0x0

    .line 121
    .end local v1    # "linkStatus":[I
    :cond_1
    if-nez v2, :cond_3

    .line 122
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Error creating program."

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 99
    .restart local v0    # "i":I
    .restart local v3    # "size":I
    :cond_2
    aget-object v4, p2, v0

    invoke-static {v2, v0, v4}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    .end local v0    # "i":I
    .end local v3    # "size":I
    :cond_3
    return v2
.end method

.method public static varargs glGenerateShader(Landroid/content/Context;IILjava/lang/String;[Ljava/lang/String;)Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;
    .locals 3
    .param p0, "cx"    # Landroid/content/Context;
    .param p1, "vertexId"    # I
    .param p2, "fragmentId"    # I
    .param p3, "attrib"    # Ljava/lang/String;
    .param p4, "uniforms"    # [Ljava/lang/String;

    .prologue
    .line 130
    invoke-static {p0, p1}, Lcn/jingling/lib/livefilter/RawResourceReader;->readTextFileFromRawResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "vertexSource":Ljava/lang/String;
    invoke-static {p0, p2}, Lcn/jingling/lib/livefilter/RawResourceReader;->readTextFileFromRawResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "fragmentSource":Ljava/lang/String;
    invoke-static {v1, v0, p3, p4}, Lcn/jingling/lib/livefilter/ShaderHelper;->glGenerateShader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    move-result-object v2

    return-object v2
.end method

.method public static varargs glGenerateShader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;
    .locals 6
    .param p0, "cx"    # Landroid/content/Context;
    .param p1, "vertexId"    # Ljava/lang/String;
    .param p2, "fragmentId"    # Ljava/lang/String;
    .param p3, "attrib"    # Ljava/lang/String;
    .param p4, "uniforms"    # [Ljava/lang/String;

    .prologue
    .line 139
    invoke-static {p1, p2, p3}, Lcn/jingling/lib/livefilter/Opengl20JniLib;->getShaderProgram(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 141
    .local v2, "programHandle":I
    new-instance v1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    invoke-direct {v1, v2}, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;-><init>(I)V

    .line 142
    .local v1, "info":Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;
    invoke-static {v2, p3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, v1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->attribute:I

    .line 143
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p4

    if-lt v0, v3, :cond_0

    .line 148
    return-object v1

    .line 144
    :cond_0
    iget-object v3, v1, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->uniforms:Ljava/util/HashMap;

    aget-object v4, p4, v0

    .line 145
    aget-object v5, p4, v0

    invoke-static {v2, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 144
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static varargs glGenerateShader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;
    .locals 8
    .param p0, "vertexSource"    # Ljava/lang/String;
    .param p1, "fragmentSource"    # Ljava/lang/String;
    .param p2, "attrib"    # Ljava/lang/String;
    .param p3, "uniforms"    # [Ljava/lang/String;

    .prologue
    .line 169
    const v5, 0x8b31

    invoke-static {v5, p0}, Lcn/jingling/lib/livefilter/ShaderHelper;->compileShader(ILjava/lang/String;)I

    move-result v4

    .line 172
    .local v4, "vShader":I
    const v5, 0x8b30

    invoke-static {v5, p1}, Lcn/jingling/lib/livefilter/ShaderHelper;->compileShader(ILjava/lang/String;)I

    move-result v0

    .line 175
    .local v0, "fShader":I
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    .line 174
    invoke-static {v4, v0, v5}, Lcn/jingling/lib/livefilter/ShaderHelper;->createAndLinkProgram(II[Ljava/lang/String;)I

    move-result v3

    .line 176
    .local v3, "programHandle":I
    new-instance v2, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;

    invoke-direct {v2, v3}, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;-><init>(I)V

    .line 177
    .local v2, "info":Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;
    invoke-static {v3, p2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v5

    iput v5, v2, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->attribute:I

    .line 178
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, p3

    if-lt v1, v5, :cond_0

    .line 182
    return-object v2

    .line 179
    :cond_0
    iget-object v5, v2, Lcn/jingling/lib/livefilter/ShaderHelper$ShaderInfo;->uniforms:Ljava/util/HashMap;

    aget-object v6, p3, v1

    .line 180
    aget-object v7, p3, v1

    invoke-static {v3, v7}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 179
    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

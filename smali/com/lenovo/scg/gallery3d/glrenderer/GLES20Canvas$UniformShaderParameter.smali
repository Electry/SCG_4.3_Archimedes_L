.class Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;
.super Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;
.source "GLES20Canvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UniformShaderParameter"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 212
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;-><init>(Ljava/lang/String;)V

    .line 213
    return-void
.end method


# virtual methods
.method public loadHandle(I)V
    .locals 1
    .param p1, "program"    # I

    .prologue
    .line 217
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;->mName:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;->handle:I

    .line 218
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 219
    return-void
.end method

.class Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$AttributeShaderParameter;
.super Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;
.source "GLES20Canvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AttributeShaderParameter"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 225
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;-><init>(Ljava/lang/String;)V

    .line 226
    return-void
.end method


# virtual methods
.method public loadHandle(I)V
    .locals 1
    .param p1, "program"    # I

    .prologue
    .line 230
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$AttributeShaderParameter;->mName:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas$AttributeShaderParameter;->handle:I

    .line 231
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 232
    return-void
.end method

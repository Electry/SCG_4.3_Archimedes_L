.class public Lcn/jingling/lib/livefilter/GLHelper;
.super Ljava/lang/Object;
.source "GLHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GLHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static glCheckError()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-static {v0}, Lcn/jingling/lib/livefilter/GLHelper;->glCheckError(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public static glCheckError(Ljava/lang/String;)V
    .locals 4
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .line 17
    .local v0, "error":I
    if-eqz v0, :cond_1

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OpenGL Error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 19
    .local v1, "s":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 22
    :cond_0
    const-string v2, "GLHelper"

    invoke-static {v1, v2}, Lcn/jingling/lib/utils/ErrorHandleHelper;->handleErrorMsg(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .end local v1    # "s":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public static glGetMaxTextureSize()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 33
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v1

    .line 35
    .local v1, "params":Ljava/nio/IntBuffer;
    const/16 v2, 0xd33

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    .line 36
    invoke-virtual {v1, v3}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 37
    invoke-virtual {v1, v3}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    .line 38
    .local v0, "maxTextureSize":I
    return v0
.end method

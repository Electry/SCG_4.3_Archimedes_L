.class public interface abstract Lcom/lenovo/scg/camera/CameraScreenNail$DrawClient;
.super Ljava/lang/Object;
.source "CameraScreenNail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/CameraScreenNail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DrawClient"
.end annotation


# virtual methods
.method public abstract copyToTexture(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;II)Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;
.end method

.method public abstract onDraw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V
.end method

.method public abstract requiresSurfaceTexture()Z
.end method

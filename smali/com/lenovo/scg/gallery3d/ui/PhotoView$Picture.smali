.class interface abstract Lcom/lenovo/scg/gallery3d/ui/PhotoView$Picture;
.super Ljava/lang/Object;
.source "PhotoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/ui/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "Picture"
.end annotation


# virtual methods
.method public abstract draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;)V
.end method

.method public abstract forceSize()V
.end method

.method public abstract getLoadingState()I
.end method

.method public abstract getSize()Lcom/lenovo/scg/gallery3d/ui/PhotoView$Size;
.end method

.method public abstract isCamera()Z
.end method

.method public abstract isDeletable()Z
.end method

.method public abstract reload()V
.end method

.method public abstract setScreenNail(Lcom/lenovo/scg/gallery3d/ui/ScreenNail;)V
.end method

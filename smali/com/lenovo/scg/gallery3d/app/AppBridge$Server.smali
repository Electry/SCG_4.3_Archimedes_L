.class public interface abstract Lcom/lenovo/scg/gallery3d/app/AppBridge$Server;
.super Ljava/lang/Object;
.source "AppBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/app/AppBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Server"
.end annotation


# virtual methods
.method public abstract addSecureAlbumItem(ZI)V
.end method

.method public abstract isCameraTabInPhotoPage()Z
.end method

.method public abstract notifyScreenNailChanged()V
.end method

.method public abstract pickAlbum(Landroid/os/Bundle;)V
.end method

.method public abstract removeCameraOverlayGLView()V
.end method

.method public abstract setCameraBackgroundColor([F)V
.end method

.method public abstract setCameraOverlayGLView(Lcom/lenovo/scg/gallery3d/ui/GLView;)V
.end method

.method public abstract setCameraRelativeFrame(Landroid/graphics/Rect;)V
.end method

.method public abstract setCameraSourcePath(Ljava/lang/String;)V
.end method

.method public abstract setSwipingEnabled(Z)V
.end method

.method public abstract switchWithCaptureAnimation(IZ)Z
.end method

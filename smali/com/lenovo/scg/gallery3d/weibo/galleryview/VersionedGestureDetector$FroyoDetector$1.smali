.class Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector$FroyoDetector$1;
.super Ljava/lang/Object;
.source "VersionedGestureDetector.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector$FroyoDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector$FroyoDetector;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector$FroyoDetector;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector$FroyoDetector$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector$FroyoDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 4
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 221
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector$FroyoDetector$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector$FroyoDetector;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector$FroyoDetector;->mListener:Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector$OnGestureListener;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector$OnGestureListener;->onScale(FFF)V

    .line 222
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 227
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 233
    return-void
.end method

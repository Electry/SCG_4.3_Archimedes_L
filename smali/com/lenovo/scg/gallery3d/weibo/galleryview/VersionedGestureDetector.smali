.class public abstract Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector;
.super Ljava/lang/Object;
.source "VersionedGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector$FroyoDetector;,
        Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector$EclairDetector;,
        Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector$CupcakeDetector;,
        Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector$OnGestureListener;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "VersionedGestureDetector"


# instance fields
.field mListener:Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector$OnGestureListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    return-void
.end method

.method public static newInstance(Landroid/content/Context;Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector$OnGestureListener;)Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector$OnGestureListener;

    .prologue
    .line 18
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 19
    .local v1, "sdkVersion":I
    const/4 v0, 0x0

    .line 21
    .local v0, "detector":Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector;
    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 22
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector$CupcakeDetector;

    .end local v0    # "detector":Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector;
    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector$CupcakeDetector;-><init>(Landroid/content/Context;)V

    .line 29
    .restart local v0    # "detector":Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector;
    :goto_0
    iput-object p1, v0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector;->mListener:Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector$OnGestureListener;

    .line 31
    return-object v0

    .line 23
    :cond_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    .line 24
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector$EclairDetector;

    .end local v0    # "detector":Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector;
    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector$EclairDetector;-><init>(Landroid/content/Context;)V

    .restart local v0    # "detector":Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector;
    goto :goto_0

    .line 26
    :cond_1
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector$FroyoDetector;

    .end local v0    # "detector":Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector;
    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector$FroyoDetector;-><init>(Landroid/content/Context;)V

    .restart local v0    # "detector":Lcom/lenovo/scg/gallery3d/weibo/galleryview/VersionedGestureDetector;
    goto :goto_0
.end method


# virtual methods
.method public abstract isScaling()Z
.end method

.method public abstract onTouchEvent(Landroid/view/MotionEvent;)Z
.end method

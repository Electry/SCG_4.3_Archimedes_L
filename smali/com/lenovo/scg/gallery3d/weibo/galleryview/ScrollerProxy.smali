.class public abstract Lcom/lenovo/scg/gallery3d/weibo/galleryview/ScrollerProxy;
.super Ljava/lang/Object;
.source "ScrollerProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/weibo/galleryview/ScrollerProxy$PreGingerScroller;,
        Lcom/lenovo/scg/gallery3d/weibo/galleryview/ScrollerProxy$GingerScroller;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method public static getScroller(Landroid/content/Context;)Lcom/lenovo/scg/gallery3d/weibo/galleryview/ScrollerProxy;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 14
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/ScrollerProxy$PreGingerScroller;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/ScrollerProxy$PreGingerScroller;-><init>(Landroid/content/Context;)V

    .line 16
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/ScrollerProxy$GingerScroller;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/ScrollerProxy$GingerScroller;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method public abstract computeScrollOffset()Z
.end method

.method public abstract fling(IIIIIIIIII)V
.end method

.method public abstract forceFinished(Z)V
.end method

.method public abstract getCurrX()I
.end method

.method public abstract getCurrY()I
.end method

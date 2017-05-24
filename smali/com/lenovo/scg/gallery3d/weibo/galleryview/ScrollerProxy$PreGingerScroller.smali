.class Lcom/lenovo/scg/gallery3d/weibo/galleryview/ScrollerProxy$PreGingerScroller;
.super Lcom/lenovo/scg/gallery3d/weibo/galleryview/ScrollerProxy;
.source "ScrollerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/weibo/galleryview/ScrollerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreGingerScroller"
.end annotation


# instance fields
.field private mScroller:Landroid/widget/Scroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/ScrollerProxy;-><init>()V

    .line 72
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/ScrollerProxy$PreGingerScroller;->mScroller:Landroid/widget/Scroller;

    .line 73
    return-void
.end method


# virtual methods
.method public computeScrollOffset()Z
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/ScrollerProxy$PreGingerScroller;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    return v0
.end method

.method public fling(IIIIIIIIII)V
    .locals 9
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I
    .param p5, "minX"    # I
    .param p6, "maxX"    # I
    .param p7, "minY"    # I
    .param p8, "maxY"    # I
    .param p9, "overX"    # I
    .param p10, "overY"    # I

    .prologue
    .line 83
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/ScrollerProxy$PreGingerScroller;->mScroller:Landroid/widget/Scroller;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 84
    return-void
.end method

.method public forceFinished(Z)V
    .locals 1
    .param p1, "finished"    # Z

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/ScrollerProxy$PreGingerScroller;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, p1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 89
    return-void
.end method

.method public getCurrX()I
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/ScrollerProxy$PreGingerScroller;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    return v0
.end method

.method public getCurrY()I
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/ScrollerProxy$PreGingerScroller;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    return v0
.end method

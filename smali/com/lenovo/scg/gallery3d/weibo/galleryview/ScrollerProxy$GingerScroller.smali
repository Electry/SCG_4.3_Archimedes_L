.class Lcom/lenovo/scg/gallery3d/weibo/galleryview/ScrollerProxy$GingerScroller;
.super Lcom/lenovo/scg/gallery3d/weibo/galleryview/ScrollerProxy;
.source "ScrollerProxy.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/weibo/galleryview/ScrollerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GingerScroller"
.end annotation


# instance fields
.field private mScroller:Landroid/widget/OverScroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/ScrollerProxy;-><init>()V

    .line 37
    new-instance v0, Landroid/widget/OverScroller;

    invoke-direct {v0, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/ScrollerProxy$GingerScroller;->mScroller:Landroid/widget/OverScroller;

    .line 38
    return-void
.end method


# virtual methods
.method public computeScrollOffset()Z
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/ScrollerProxy$GingerScroller;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    return v0
.end method

.method public fling(IIIIIIIIII)V
    .locals 11
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
    .line 48
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/ScrollerProxy$GingerScroller;->mScroller:Landroid/widget/OverScroller;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 49
    return-void
.end method

.method public forceFinished(Z)V
    .locals 1
    .param p1, "finished"    # Z

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/ScrollerProxy$GingerScroller;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 54
    return-void
.end method

.method public getCurrX()I
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/ScrollerProxy$GingerScroller;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    return v0
.end method

.method public getCurrY()I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/ScrollerProxy$GingerScroller;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v0

    return v0
.end method

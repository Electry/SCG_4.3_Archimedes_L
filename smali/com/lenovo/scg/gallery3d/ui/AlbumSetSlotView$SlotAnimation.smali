.class public abstract Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$SlotAnimation;
.super Lcom/lenovo/scg/gallery3d/anim/Animation;
.source "AlbumSetSlotView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SlotAnimation"
.end annotation


# instance fields
.field protected mProgress:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 531
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/anim/Animation;-><init>()V

    .line 529
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$SlotAnimation;->mProgress:F

    .line 532
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$SlotAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 533
    const/16 v0, 0x5dc

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$SlotAnimation;->setDuration(I)V

    .line 534
    return-void
.end method


# virtual methods
.method public abstract apply(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;ILandroid/graphics/Rect;)V
.end method

.method protected onCalculate(F)V
    .locals 0
    .param p1, "progress"    # F

    .prologue
    .line 538
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$SlotAnimation;->mProgress:F

    .line 539
    return-void
.end method

.class public Lcom/lenovo/scg/gallery3d/anim/FloatAnimation;
.super Lcom/lenovo/scg/gallery3d/anim/Animation;
.source "FloatAnimation.java"


# instance fields
.field private mCurrent:F

.field private final mFrom:F

.field private final mTo:F


# direct methods
.method public constructor <init>(FFI)V
    .locals 0
    .param p1, "from"    # F
    .param p2, "to"    # F
    .param p3, "duration"    # I

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/anim/Animation;-><init>()V

    .line 26
    iput p1, p0, Lcom/lenovo/scg/gallery3d/anim/FloatAnimation;->mFrom:F

    .line 27
    iput p2, p0, Lcom/lenovo/scg/gallery3d/anim/FloatAnimation;->mTo:F

    .line 28
    iput p1, p0, Lcom/lenovo/scg/gallery3d/anim/FloatAnimation;->mCurrent:F

    .line 29
    invoke-virtual {p0, p3}, Lcom/lenovo/scg/gallery3d/anim/FloatAnimation;->setDuration(I)V

    .line 30
    return-void
.end method


# virtual methods
.method public get()F
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/lenovo/scg/gallery3d/anim/FloatAnimation;->mCurrent:F

    return v0
.end method

.method protected onCalculate(F)V
    .locals 3
    .param p1, "progress"    # F

    .prologue
    .line 34
    iget v0, p0, Lcom/lenovo/scg/gallery3d/anim/FloatAnimation;->mFrom:F

    iget v1, p0, Lcom/lenovo/scg/gallery3d/anim/FloatAnimation;->mTo:F

    iget v2, p0, Lcom/lenovo/scg/gallery3d/anim/FloatAnimation;->mFrom:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/anim/FloatAnimation;->mCurrent:F

    .line 35
    return-void
.end method

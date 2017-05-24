.class public Lcom/lenovo/scg/gallery3d/weibo/ui/TouchTool;
.super Ljava/lang/Object;
.source "TouchTool.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TouchTool"


# instance fields
.field private mOffsetImage:F

.field private mOffsetList:F

.field private mStartX:I

.field private mStartY:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "startX"    # I
    .param p2, "startY"    # I

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TouchTool;->mStartX:I

    .line 14
    iput p2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TouchTool;->mStartY:I

    .line 16
    const v0, 0x40b9999a    # 5.8f

    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TouchTool;->mOffsetImage:F

    .line 17
    const v0, 0x40333333    # 2.8f

    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TouchTool;->mOffsetList:F

    .line 18
    return-void
.end method


# virtual methods
.method public getScrollXImage(F)I
    .locals 3
    .param p1, "dx"    # F

    .prologue
    .line 38
    iget v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TouchTool;->mStartX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TouchTool;->mOffsetImage:F

    div-float v2, p1, v2

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 39
    .local v0, "x":I
    return v0
.end method

.method public getScrollXList(F)I
    .locals 3
    .param p1, "dx"    # F

    .prologue
    .line 43
    iget v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TouchTool;->mStartX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TouchTool;->mOffsetList:F

    div-float v2, p1, v2

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 44
    .local v0, "x":I
    return v0
.end method

.method public getScrollYImage(F)I
    .locals 3
    .param p1, "dy"    # F

    .prologue
    .line 48
    iget v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TouchTool;->mStartY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TouchTool;->mOffsetImage:F

    div-float v2, p1, v2

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 50
    .local v0, "y":I
    return v0
.end method

.method public getScrollYList(F)I
    .locals 3
    .param p1, "dy"    # F

    .prologue
    .line 54
    iget v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TouchTool;->mStartY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TouchTool;->mOffsetList:F

    div-float v2, p1, v2

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 56
    .local v0, "y":I
    return v0
.end method

.method public setImageOffset(F)V
    .locals 1
    .param p1, "offsetimage"    # F

    .prologue
    .line 21
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 26
    :goto_0
    return-void

    .line 25
    :cond_0
    iput p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TouchTool;->mOffsetImage:F

    goto :goto_0
.end method

.method public setListOffset(F)V
    .locals 1
    .param p1, "offsetlist"    # F

    .prologue
    .line 30
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 35
    :goto_0
    return-void

    .line 34
    :cond_0
    iput p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TouchTool;->mOffsetList:F

    goto :goto_0
.end method

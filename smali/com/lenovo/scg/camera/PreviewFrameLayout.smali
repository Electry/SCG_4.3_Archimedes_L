.class public Lcom/lenovo/scg/camera/PreviewFrameLayout;
.super Landroid/widget/RelativeLayout;
.source "PreviewFrameLayout.java"

# interfaces
.implements Lcom/lenovo/scg/camera/ui/LayoutChangeNotifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/PreviewFrameLayout$OnSizeChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CAM_preview"


# instance fields
.field private mAspectRatio:D

.field private mBorder:Landroid/view/View;

.field private mLayoutChangeHelper:Lcom/lenovo/scg/camera/ui/LayoutChangeHelper;

.field private mListener:Lcom/lenovo/scg/camera/PreviewFrameLayout$OnSizeChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    const-wide v0, 0x3ff5555555555555L    # 1.3333333333333333

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/PreviewFrameLayout;->setAspectRatio(D)V

    .line 55
    new-instance v0, Lcom/lenovo/scg/camera/ui/LayoutChangeHelper;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/ui/LayoutChangeHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/PreviewFrameLayout;->mLayoutChangeHelper:Lcom/lenovo/scg/camera/ui/LayoutChangeHelper;

    .line 56
    return-void
.end method


# virtual methods
.method public fadeOutBorder()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lenovo/scg/camera/PreviewFrameLayout;->mBorder:Landroid/view/View;

    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraUtil;->fadeOut(Landroid/view/View;)V

    .line 78
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 60
    const v0, 0x7f1009cd

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/PreviewFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/PreviewFrameLayout;->mBorder:Landroid/view/View;

    .line 61
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 135
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 136
    iget-object v0, p0, Lcom/lenovo/scg/camera/PreviewFrameLayout;->mLayoutChangeHelper:Lcom/lenovo/scg/camera/ui/LayoutChangeHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/camera/ui/LayoutChangeHelper;->onLayout(ZIIII)V

    .line 137
    return-void
.end method

.method protected onMeasure(II)V
    .locals 14
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .prologue
    .line 82
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 83
    .local v3, "previewWidth":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 85
    .local v2, "previewHeight":I
    sget-boolean v7, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-nez v7, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PreviewFrameLayout;->getPaddingLeft()I

    move-result v7

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PreviewFrameLayout;->getPaddingRight()I

    move-result v8

    add-int v0, v7, v8

    .line 88
    .local v0, "hPadding":I
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PreviewFrameLayout;->getPaddingTop()I

    move-result v7

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PreviewFrameLayout;->getPaddingBottom()I

    move-result v8

    add-int v5, v7, v8

    .line 91
    .local v5, "vPadding":I
    sub-int/2addr v3, v0

    .line 92
    sub-int/2addr v2, v5

    .line 94
    if-le v3, v2, :cond_1

    const/4 v6, 0x1

    .line 95
    .local v6, "widthLonger":Z
    :goto_0
    if-eqz v6, :cond_2

    move v1, v3

    .line 96
    .local v1, "longSide":I
    :goto_1
    if-eqz v6, :cond_3

    move v4, v2

    .line 97
    .local v4, "shortSide":I
    :goto_2
    int-to-double v8, v1

    int-to-double v10, v4

    iget-wide v12, p0, Lcom/lenovo/scg/camera/PreviewFrameLayout;->mAspectRatio:D

    mul-double/2addr v10, v12

    cmpl-double v7, v8, v10

    if-lez v7, :cond_4

    .line 98
    int-to-double v8, v4

    iget-wide v10, p0, Lcom/lenovo/scg/camera/PreviewFrameLayout;->mAspectRatio:D

    mul-double/2addr v8, v10

    double-to-int v1, v8

    .line 102
    :goto_3
    if-eqz v6, :cond_5

    .line 103
    move v3, v1

    .line 104
    move v2, v4

    .line 111
    :goto_4
    add-int/2addr v3, v0

    .line 112
    add-int/2addr v2, v5

    .line 116
    .end local v0    # "hPadding":I
    .end local v1    # "longSide":I
    .end local v4    # "shortSide":I
    .end local v5    # "vPadding":I
    .end local v6    # "widthLonger":Z
    :cond_0
    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v2, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-super {p0, v7, v8}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 117
    return-void

    .line 94
    .restart local v0    # "hPadding":I
    .restart local v5    # "vPadding":I
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .restart local v6    # "widthLonger":Z
    :cond_2
    move v1, v2

    .line 95
    goto :goto_1

    .restart local v1    # "longSide":I
    :cond_3
    move v4, v3

    .line 96
    goto :goto_2

    .line 100
    .restart local v4    # "shortSide":I
    :cond_4
    int-to-double v8, v1

    iget-wide v10, p0, Lcom/lenovo/scg/camera/PreviewFrameLayout;->mAspectRatio:D

    div-double/2addr v8, v10

    double-to-int v4, v8

    goto :goto_3

    .line 106
    :cond_5
    move v3, v4

    .line 107
    move v2, v1

    goto :goto_4
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 125
    iget-object v0, p0, Lcom/lenovo/scg/camera/PreviewFrameLayout;->mListener:Lcom/lenovo/scg/camera/PreviewFrameLayout$OnSizeChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/PreviewFrameLayout;->mListener:Lcom/lenovo/scg/camera/PreviewFrameLayout$OnSizeChangedListener;

    invoke-interface {v0, p1, p2}, Lcom/lenovo/scg/camera/PreviewFrameLayout$OnSizeChangedListener;->onSizeChanged(II)V

    .line 126
    :cond_0
    return-void
.end method

.method public setAspectRatio(D)V
    .locals 3
    .param p1, "ratio"    # D

    .prologue
    .line 64
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 66
    :cond_0
    iget-wide v0, p0, Lcom/lenovo/scg/camera/PreviewFrameLayout;->mAspectRatio:D

    cmpl-double v0, v0, p1

    if-eqz v0, :cond_1

    .line 67
    iput-wide p1, p0, Lcom/lenovo/scg/camera/PreviewFrameLayout;->mAspectRatio:D

    .line 68
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PreviewFrameLayout;->requestLayout()V

    .line 70
    :cond_1
    return-void
.end method

.method public setOnLayoutChangeListener(Lcom/lenovo/scg/camera/ui/LayoutChangeNotifier$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/lenovo/scg/camera/ui/LayoutChangeNotifier$Listener;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/lenovo/scg/camera/PreviewFrameLayout;->mLayoutChangeHelper:Lcom/lenovo/scg/camera/ui/LayoutChangeHelper;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/ui/LayoutChangeHelper;->setOnLayoutChangeListener(Lcom/lenovo/scg/camera/ui/LayoutChangeNotifier$Listener;)V

    .line 131
    return-void
.end method

.method public setOnSizeChangedListener(Lcom/lenovo/scg/camera/PreviewFrameLayout$OnSizeChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/camera/PreviewFrameLayout$OnSizeChangedListener;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/lenovo/scg/camera/PreviewFrameLayout;->mListener:Lcom/lenovo/scg/camera/PreviewFrameLayout$OnSizeChangedListener;

    .line 121
    return-void
.end method

.method public showBorder(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 73
    iget-object v1, p0, Lcom/lenovo/scg/camera/PreviewFrameLayout;->mBorder:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 74
    return-void

    .line 73
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.class public Lcom/lenovo/scg/common/animation/CaptureAnimManager1;
.super Ljava/lang/Object;
.source "CaptureAnimManager1.java"

# interfaces
.implements Lcom/lenovo/scg/camera/AnimManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;
    }
.end annotation


# static fields
.field private static final MSG_END_ANIM:I = 0x2

.field private static final MSG_INVALIDATE:I = 0x1

.field private static final MSG_START_ANIM:I = 0x0

.field private static final TAG:Ljava/lang/String; = "jiaxiaowei"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mIsZSD:Z

.field private mParentView:Landroid/view/ViewGroup;

.field private mView:Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/common/animation/CaptureAnimManager1$1;-><init>(Lcom/lenovo/scg/common/animation/CaptureAnimManager1;)V

    iput-object v0, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1;->mHandler:Landroid/os/Handler;

    .line 40
    const v0, 0x7f1001b5

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1;->mParentView:Landroid/view/ViewGroup;

    .line 41
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1;->mParentView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 42
    const-string v0, "jiaxiaowei"

    const-string v1, "CaptureAnimManager1: rootview == null return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :cond_0
    new-instance v0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;-><init>(Lcom/lenovo/scg/common/animation/CaptureAnimManager1;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1;->mView:Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;

    .line 45
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1;->mParentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1;->mView:Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 46
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1;->mView:Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;->setVisibility(I)V

    .line 47
    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/scg/common/animation/CaptureAnimManager1;)Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/common/animation/CaptureAnimManager1;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1;->mView:Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/common/animation/CaptureAnimManager1;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/common/animation/CaptureAnimManager1;

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1;->mIsZSD:Z

    return v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/common/animation/CaptureAnimManager1;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/common/animation/CaptureAnimManager1;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public animateFlash()V
    .locals 0

    .prologue
    .line 234
    return-void
.end method

.method public animateFlashAndSlide()V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method public animateSlide()V
    .locals 0

    .prologue
    .line 240
    return-void
.end method

.method public drawAnimation(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Lcom/lenovo/scg/camera/CameraScreenNail;Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;IIII)Z
    .locals 1
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "preview"    # Lcom/lenovo/scg/camera/CameraScreenNail;
    .param p3, "review"    # Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;
    .param p4, "lx"    # I
    .param p5, "ly"    # I
    .param p6, "lw"    # I
    .param p7, "lh"    # I

    .prologue
    .line 227
    const/4 v0, 0x0

    return v0
.end method

.method public setIsZSD(Z)V
    .locals 1
    .param p1, "isZSD"    # Z

    .prologue
    .line 244
    iput-boolean p1, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1;->mIsZSD:Z

    .line 245
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1;->mView:Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1;->mView:Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;

    # invokes: Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;->initAnimTime()V
    invoke-static {v0}, Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;->access$400(Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;)V

    .line 248
    :cond_0
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .param p1, "animOrientation"    # I

    .prologue
    .line 53
    return-void
.end method

.method public startAnimation(IIII)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 58
    iget-object v2, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1;->mView:Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;

    if-eqz v2, :cond_2

    .line 59
    const/4 v1, 0x0

    .line 60
    .local v1, "yOffset":I
    const/4 v0, 0x0

    .line 61
    .local v0, "bRatio_4_3":Z
    int-to-float v2, p4

    int-to-float v3, p3

    div-float/2addr v2, v3

    const v3, 0x3faaaaab

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3c23d70a    # 0.01f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 62
    const/4 v0, 0x1

    .line 64
    :cond_0
    if-eqz v0, :cond_1

    .line 65
    sget v2, Lcom/lenovo/scg/camera/CameraUtil;->mScreenHeight:I

    sub-int/2addr v2, p4

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sget v3, Lcom/lenovo/scg/camera/CameraUtil;->RATIO_4_3_DEFAULT_TRANS_Y:F

    sub-float/2addr v2, v3

    float-to-int v1, v2

    .line 67
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1;->mView:Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;

    sget v3, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    div-int/lit8 v3, v3, 0x2

    sget v4, Lcom/lenovo/scg/camera/CameraUtil;->mScreenHeight:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v4, v1

    # invokes: Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;->init(II)V
    invoke-static {v2, v3, v4}, Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;->access$000(Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;II)V

    .line 69
    .end local v0    # "bRatio_4_3":Z
    .end local v1    # "yOffset":I
    :cond_2
    iget-object v2, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 70
    return-void
.end method

.method public stopCaptureAnim()V
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1;->mView:Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/CaptureAnimManager1;->mView:Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/animation/CaptureAnimManager1$AnimationView;->setVisibility(I)V

    .line 255
    :cond_0
    return-void
.end method

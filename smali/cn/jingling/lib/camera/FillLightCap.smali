.class public Lcn/jingling/lib/camera/FillLightCap;
.super Lcn/jingling/lib/camera/WonderCamCap;
.source "FillLightCap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/jingling/lib/camera/FillLightCap$OnFillLightCapListener;
    }
.end annotation


# static fields
.field private static final DELAY:J = 0x64L


# instance fields
.field private mFillLightView:Landroid/view/View;

.field private mListener:Lcn/jingling/lib/camera/FillLightCap$OnFillLightCapListener;


# direct methods
.method protected constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcn/jingling/lib/camera/WonderCamCap;-><init>(Landroid/os/Handler;)V

    .line 36
    return-void
.end method

.method static synthetic access$0(Lcn/jingling/lib/camera/FillLightCap;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcn/jingling/lib/camera/FillLightCap;->startLightingTransition()V

    return-void
.end method

.method static synthetic access$1(Lcn/jingling/lib/camera/FillLightCap;)Lcn/jingling/lib/camera/FillLightCap$OnFillLightCapListener;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcn/jingling/lib/camera/FillLightCap;->mListener:Lcn/jingling/lib/camera/FillLightCap$OnFillLightCapListener;

    return-object v0
.end method

.method static synthetic access$2(Lcn/jingling/lib/camera/FillLightCap;)Landroid/view/View;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcn/jingling/lib/camera/FillLightCap;->mFillLightView:Landroid/view/View;

    return-object v0
.end method

.method private startLightingTransition()V
    .locals 4

    .prologue
    .line 72
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 73
    .local v0, "alphaAnim":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 74
    new-instance v1, Lcn/jingling/lib/camera/FillLightCap$3;

    invoke-direct {v1, p0}, Lcn/jingling/lib/camera/FillLightCap$3;-><init>(Lcn/jingling/lib/camera/FillLightCap;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 86
    iget-object v1, p0, Lcn/jingling/lib/camera/FillLightCap;->mFillLightView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 87
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcn/jingling/lib/camera/FillLightCap;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/jingling/lib/camera/FillLightCap$1;

    invoke-direct {v1, p0}, Lcn/jingling/lib/camera/FillLightCap$1;-><init>(Lcn/jingling/lib/camera/FillLightCap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 53
    return-void
.end method

.method public setFillLightView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 39
    instance-of v0, p1, Lcn/jingling/lib/camera/FillLightView;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "The android.view.View cannot be casted to cn.jingling.lib.camera.FillLightView."

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    iput-object p1, p0, Lcn/jingling/lib/camera/FillLightCap;->mFillLightView:Landroid/view/View;

    .line 43
    iget-object v0, p0, Lcn/jingling/lib/camera/FillLightCap;->mFillLightView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 44
    return-void
.end method

.method public setOnFillLightCapListener(Lcn/jingling/lib/camera/FillLightCap$OnFillLightCapListener;)V
    .locals 0
    .param p1, "l"    # Lcn/jingling/lib/camera/FillLightCap$OnFillLightCapListener;

    .prologue
    .line 31
    iput-object p1, p0, Lcn/jingling/lib/camera/FillLightCap;->mListener:Lcn/jingling/lib/camera/FillLightCap$OnFillLightCapListener;

    .line 32
    return-void
.end method

.method public takePicture()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcn/jingling/lib/camera/FillLightCap;->mFillLightView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 58
    iget-object v0, p0, Lcn/jingling/lib/camera/FillLightCap;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/jingling/lib/camera/FillLightCap$2;

    invoke-direct {v1, p0}, Lcn/jingling/lib/camera/FillLightCap$2;-><init>(Lcn/jingling/lib/camera/FillLightCap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 68
    const-string v0, "FillLight"

    invoke-static {v0}, Lcn/jingling/lib/statistics/LogStoreUtils;->storeDataCommitOnce(Ljava/lang/String;)V

    .line 69
    return-void
.end method

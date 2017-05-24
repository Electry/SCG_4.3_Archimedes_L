.class Lcom/lenovo/scg/camera/ActivityBase$HideCameraAppView;
.super Ljava/lang/Object;
.source "ActivityBase.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/ActivityBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HideCameraAppView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/ActivityBase;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/camera/ActivityBase;)V
    .locals 0

    .prologue
    .line 541
    iput-object p1, p0, Lcom/lenovo/scg/camera/ActivityBase$HideCameraAppView;->this$0:Lcom/lenovo/scg/camera/ActivityBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/camera/ActivityBase;Lcom/lenovo/scg/camera/ActivityBase$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/camera/ActivityBase;
    .param p2, "x1"    # Lcom/lenovo/scg/camera/ActivityBase$1;

    .prologue
    .line 541
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/ActivityBase$HideCameraAppView;-><init>(Lcom/lenovo/scg/camera/ActivityBase;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 547
    iget-object v0, p0, Lcom/lenovo/scg/camera/ActivityBase$HideCameraAppView;->this$0:Lcom/lenovo/scg/camera/ActivityBase;

    iget-object v0, v0, Lcom/lenovo/scg/camera/ActivityBase;->mCameraAppView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 548
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 552
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 556
    return-void
.end method

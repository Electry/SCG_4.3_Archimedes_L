.class Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI$ProAnimationListener;
.super Ljava/lang/Object;
.source "ProSettingWheelUI.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProAnimationListener"
.end annotation


# instance fields
.field mView:Landroid/view/View;

.field final synthetic this$0:Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;Landroid/view/View;)V
    .locals 0
    .param p2, "mView"    # Landroid/view/View;

    .prologue
    .line 448
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI$ProAnimationListener;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 449
    iput-object p2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI$ProAnimationListener;->mView:Landroid/view/View;

    .line 450
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 455
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI$ProAnimationListener;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 456
    const-string v0, "ProAnimationListener"

    const-string v1, "ProAnimationListener - end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 463
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 469
    return-void
.end method

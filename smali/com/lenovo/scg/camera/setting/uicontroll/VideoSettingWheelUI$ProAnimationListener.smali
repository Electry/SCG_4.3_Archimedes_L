.class Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$ProAnimationListener;
.super Ljava/lang/Object;
.source "VideoSettingWheelUI.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProAnimationListener"
.end annotation


# instance fields
.field mView:Landroid/view/View;

.field final synthetic this$0:Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;Landroid/view/View;)V
    .locals 0
    .param p2, "mView"    # Landroid/view/View;

    .prologue
    .line 300
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$ProAnimationListener;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    iput-object p2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$ProAnimationListener;->mView:Landroid/view/View;

    .line 302
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 307
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$ProAnimationListener;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 308
    const-string v0, "VideoSettingWheelUI"

    const-string v1, "ProAnimationListener - end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 315
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 321
    return-void
.end method

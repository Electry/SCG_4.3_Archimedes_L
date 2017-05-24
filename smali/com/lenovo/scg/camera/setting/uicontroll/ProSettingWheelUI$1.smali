.class Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI$1;
.super Ljava/lang/Object;
.source "ProSettingWheelUI.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->showBigWheelWithAnim(Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI$OnBigWheelAnimEnd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;

.field final synthetic val$mOnBigWheelAnimEnd:Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI$OnBigWheelAnimEnd;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI$OnBigWheelAnimEnd;)V
    .locals 0

    .prologue
    .line 418
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI$1;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;

    iput-object p2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI$1;->val$mOnBigWheelAnimEnd:Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI$OnBigWheelAnimEnd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 435
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI$1;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;

    # getter for: Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->bigWheelRootLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->access$000(Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 436
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI$1;->val$mOnBigWheelAnimEnd:Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI$OnBigWheelAnimEnd;

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI$1;->val$mOnBigWheelAnimEnd:Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI$OnBigWheelAnimEnd;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI$OnBigWheelAnimEnd;->onBigWheelAnimEnd(Landroid/view/animation/Animation;)V

    .line 439
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 430
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 424
    return-void
.end method

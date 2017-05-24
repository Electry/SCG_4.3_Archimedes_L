.class public abstract Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI$OnBigWheelAnimEnd;
.super Ljava/lang/Object;
.source "ProSettingWheelUI.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OnBigWheelAnimEnd"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1155
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI$OnBigWheelAnimEnd;->onBigWheelAnimEnd(Landroid/view/animation/Animation;)V

    .line 1156
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1162
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1168
    return-void
.end method

.method public abstract onBigWheelAnimEnd(Landroid/view/animation/Animation;)V
.end method

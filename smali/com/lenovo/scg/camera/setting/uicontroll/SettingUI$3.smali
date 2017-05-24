.class Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$3;
.super Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI$OnBigWheelAnimEnd;
.source "SettingUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)V
    .locals 0

    .prologue
    .line 823
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$3;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI$OnBigWheelAnimEnd;-><init>()V

    return-void
.end method


# virtual methods
.method public onBigWheelAnimEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 828
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$3;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    const/4 v1, 0x1

    # setter for: Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mWheelIsShowed:Z
    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->access$802(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;Z)Z

    .line 829
    return-void
.end method

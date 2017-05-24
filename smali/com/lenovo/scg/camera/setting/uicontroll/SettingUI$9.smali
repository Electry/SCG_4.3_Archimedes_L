.class Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$9;
.super Ljava/lang/Object;
.source "SettingUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->setSettingButtonEnable()V
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
    .line 2131
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$9;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2135
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$9;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    iget-object v0, v0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraBackSettingbutton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 2136
    return-void
.end method

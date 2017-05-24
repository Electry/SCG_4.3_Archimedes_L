.class Lcom/lenovo/scg/camera/front/FrontView$8;
.super Ljava/lang/Object;
.source "FrontView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/front/FrontView;->initBeautyButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/front/FrontView;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/front/FrontView;)V
    .locals 0

    .prologue
    .line 677
    iput-object p1, p0, Lcom/lenovo/scg/camera/front/FrontView$8;->this$0:Lcom/lenovo/scg/camera/front/FrontView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 682
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView$8;->this$0:Lcom/lenovo/scg/camera/front/FrontView;

    # getter for: Lcom/lenovo/scg/camera/front/FrontView;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;
    invoke-static {v1}, Lcom/lenovo/scg/camera/front/FrontView;->access$500(Lcom/lenovo/scg/camera/front/FrontView;)Lcom/lenovo/scg/camera/setting/CameraSettingController;

    move-result-object v1

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    const-string v2, "camera_front_beauty"

    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView$8;->this$0:Lcom/lenovo/scg/camera/front/FrontView;

    # getter for: Lcom/lenovo/scg/camera/front/FrontView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/lenovo/scg/camera/front/FrontView;->access$400(Lcom/lenovo/scg/camera/front/FrontView;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0f0029

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 685
    .local v0, "value":Ljava/lang/String;
    const-string v1, "FrontView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView$8;->this$0:Lcom/lenovo/scg/camera/front/FrontView;

    # invokes: Lcom/lenovo/scg/camera/front/FrontView;->switchFaceBeautyFeature(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/lenovo/scg/camera/front/FrontView;->access$700(Lcom/lenovo/scg/camera/front/FrontView;Ljava/lang/String;)V

    .line 688
    return-void
.end method

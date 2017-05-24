.class Lcom/lenovo/scg/camera/PieController$1;
.super Ljava/lang/Object;
.source "PieController.java"

# interfaces
.implements Lcom/lenovo/scg/camera/ui/PieItem$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/PieController;->makeItem(Ljava/lang/String;)Lcom/lenovo/scg/camera/ui/PieItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/PieController;

.field final synthetic val$index:I

.field final synthetic val$pref:Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/PieController;Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;I)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/lenovo/scg/camera/PieController$1;->this$0:Lcom/lenovo/scg/camera/PieController;

    iput-object p2, p0, Lcom/lenovo/scg/camera/PieController$1;->val$pref:Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;

    iput p3, p0, Lcom/lenovo/scg/camera/PieController$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/lenovo/scg/camera/ui/PieItem;)V
    .locals 2
    .param p1, "item"    # Lcom/lenovo/scg/camera/ui/PieItem;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/lenovo/scg/camera/PieController$1;->val$pref:Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;

    iget v1, p0, Lcom/lenovo/scg/camera/PieController$1;->val$index:I

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->setValueIndex(I)V

    .line 139
    iget-object v0, p0, Lcom/lenovo/scg/camera/PieController$1;->this$0:Lcom/lenovo/scg/camera/PieController;

    iget-object v1, p0, Lcom/lenovo/scg/camera/PieController$1;->val$pref:Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;

    # invokes: Lcom/lenovo/scg/camera/PieController;->reloadPreference(Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;)V
    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/PieController;->access$000(Lcom/lenovo/scg/camera/PieController;Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;)V

    .line 140
    iget-object v0, p0, Lcom/lenovo/scg/camera/PieController$1;->this$0:Lcom/lenovo/scg/camera/PieController;

    iget-object v1, p0, Lcom/lenovo/scg/camera/PieController$1;->val$pref:Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/PieController;->onSettingChanged(Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;)V

    .line 141
    return-void
.end method

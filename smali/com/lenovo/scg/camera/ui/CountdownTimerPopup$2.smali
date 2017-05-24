.class Lcom/lenovo/scg/camera/ui/CountdownTimerPopup$2;
.super Ljava/lang/Object;
.source "CountdownTimerPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/ui/CountdownTimerPopup;->initialize(Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/ui/CountdownTimerPopup;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/ui/CountdownTimerPopup;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/lenovo/scg/camera/ui/CountdownTimerPopup$2;->this$0:Lcom/lenovo/scg/camera/ui/CountdownTimerPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/CountdownTimerPopup$2;->this$0:Lcom/lenovo/scg/camera/ui/CountdownTimerPopup;

    # invokes: Lcom/lenovo/scg/camera/ui/CountdownTimerPopup;->updateInputState()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/ui/CountdownTimerPopup;->access$000(Lcom/lenovo/scg/camera/ui/CountdownTimerPopup;)V

    .line 108
    return-void
.end method

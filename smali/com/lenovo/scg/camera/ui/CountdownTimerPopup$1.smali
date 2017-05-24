.class Lcom/lenovo/scg/camera/ui/CountdownTimerPopup$1;
.super Ljava/lang/Object;
.source "CountdownTimerPopup.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


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
    .line 91
    iput-object p1, p0, Lcom/lenovo/scg/camera/ui/CountdownTimerPopup$1;->this$0:Lcom/lenovo/scg/camera/ui/CountdownTimerPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 2
    .param p1, "picker"    # Landroid/widget/NumberPicker;
    .param p2, "oldValue"    # I
    .param p3, "newValue"    # I

    .prologue
    .line 95
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/CountdownTimerPopup$1;->this$0:Lcom/lenovo/scg/camera/ui/CountdownTimerPopup;

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/lenovo/scg/camera/ui/CountdownTimerPopup;->setTimeSelectionEnabled(Z)V

    .line 96
    return-void

    .line 95
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

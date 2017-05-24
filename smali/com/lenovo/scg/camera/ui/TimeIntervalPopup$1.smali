.class Lcom/lenovo/scg/camera/ui/TimeIntervalPopup$1;
.super Ljava/lang/Object;
.source "TimeIntervalPopup.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/ui/TimeIntervalPopup;->initialize(Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/ui/TimeIntervalPopup;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/ui/TimeIntervalPopup;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/lenovo/scg/camera/ui/TimeIntervalPopup$1;->this$0:Lcom/lenovo/scg/camera/ui/TimeIntervalPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 111
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/TimeIntervalPopup$1;->this$0:Lcom/lenovo/scg/camera/ui/TimeIntervalPopup;

    invoke-virtual {v0, p2}, Lcom/lenovo/scg/camera/ui/TimeIntervalPopup;->setTimeSelectionEnabled(Z)V

    .line 112
    return-void
.end method

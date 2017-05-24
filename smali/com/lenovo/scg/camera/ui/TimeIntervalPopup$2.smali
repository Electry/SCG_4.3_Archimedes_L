.class Lcom/lenovo/scg/camera/ui/TimeIntervalPopup$2;
.super Ljava/lang/Object;
.source "TimeIntervalPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 114
    iput-object p1, p0, Lcom/lenovo/scg/camera/ui/TimeIntervalPopup$2;->this$0:Lcom/lenovo/scg/camera/ui/TimeIntervalPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/TimeIntervalPopup$2;->this$0:Lcom/lenovo/scg/camera/ui/TimeIntervalPopup;

    # invokes: Lcom/lenovo/scg/camera/ui/TimeIntervalPopup;->updateInputState()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/ui/TimeIntervalPopup;->access$000(Lcom/lenovo/scg/camera/ui/TimeIntervalPopup;)V

    .line 118
    return-void
.end method

.class Lcom/lenovo/scg/camera/smartengine/SmartPluginPreview$MyTimerTask;
.super Ljava/util/TimerTask;
.source "SmartPluginPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/smartengine/SmartPluginPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/smartengine/SmartPluginPreview;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/camera/smartengine/SmartPluginPreview;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginPreview$MyTimerTask;->this$0:Lcom/lenovo/scg/camera/smartengine/SmartPluginPreview;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 91
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 94
    .local v0, "t":J
    return-void
.end method

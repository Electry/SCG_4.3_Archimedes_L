.class Lcom/lenovo/scg/common/utils/android/StatusLog$MsgParam;
.super Ljava/lang/Object;
.source "StatusLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/common/utils/android/StatusLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MsgParam"
.end annotation


# instance fields
.field public str:Ljava/lang/String;

.field final synthetic this$0:Lcom/lenovo/scg/common/utils/android/StatusLog;

.field public time:J


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/common/utils/android/StatusLog;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lcom/lenovo/scg/common/utils/android/StatusLog$MsgParam;->this$0:Lcom/lenovo/scg/common/utils/android/StatusLog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/common/utils/android/StatusLog;Lcom/lenovo/scg/common/utils/android/StatusLog$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/common/utils/android/StatusLog;
    .param p2, "x1"    # Lcom/lenovo/scg/common/utils/android/StatusLog$1;

    .prologue
    .line 311
    invoke-direct {p0, p1}, Lcom/lenovo/scg/common/utils/android/StatusLog$MsgParam;-><init>(Lcom/lenovo/scg/common/utils/android/StatusLog;)V

    return-void
.end method

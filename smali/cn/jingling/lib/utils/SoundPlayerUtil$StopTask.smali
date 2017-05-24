.class Lcn/jingling/lib/utils/SoundPlayerUtil$StopTask;
.super Ljava/util/TimerTask;
.source "SoundPlayerUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/jingling/lib/utils/SoundPlayerUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StopTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/jingling/lib/utils/SoundPlayerUtil;


# direct methods
.method private constructor <init>(Lcn/jingling/lib/utils/SoundPlayerUtil;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcn/jingling/lib/utils/SoundPlayerUtil$StopTask;->this$0:Lcn/jingling/lib/utils/SoundPlayerUtil;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/jingling/lib/utils/SoundPlayerUtil;Lcn/jingling/lib/utils/SoundPlayerUtil$StopTask;)V
    .locals 0

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lcn/jingling/lib/utils/SoundPlayerUtil$StopTask;-><init>(Lcn/jingling/lib/utils/SoundPlayerUtil;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcn/jingling/lib/utils/SoundPlayerUtil$StopTask;->this$0:Lcn/jingling/lib/utils/SoundPlayerUtil;

    invoke-virtual {v0}, Lcn/jingling/lib/utils/SoundPlayerUtil;->stop()V

    .line 189
    return-void
.end method

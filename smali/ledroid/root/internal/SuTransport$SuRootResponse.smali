.class Lledroid/root/internal/SuTransport$SuRootResponse;
.super Ljava/lang/Object;
.source "SuTransport.java"

# interfaces
.implements Lledroid/root/ShellCommand$ShellCommandResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lledroid/root/internal/SuTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuRootResponse"
.end annotation


# instance fields
.field private mSuOk:Z

.field final synthetic this$0:Lledroid/root/internal/SuTransport;


# direct methods
.method private constructor <init>(Lledroid/root/internal/SuTransport;)V
    .locals 1

    .prologue
    .line 78
    iput-object p1, p0, Lledroid/root/internal/SuTransport$SuRootResponse;->this$0:Lledroid/root/internal/SuTransport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lledroid/root/internal/SuTransport$SuRootResponse;->mSuOk:Z

    return-void
.end method

.method synthetic constructor <init>(Lledroid/root/internal/SuTransport;Lledroid/root/internal/SuTransport$1;)V
    .locals 0
    .param p1, "x0"    # Lledroid/root/internal/SuTransport;
    .param p2, "x1"    # Lledroid/root/internal/SuTransport$1;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lledroid/root/internal/SuTransport$SuRootResponse;-><init>(Lledroid/root/internal/SuTransport;)V

    return-void
.end method

.method static synthetic access$100(Lledroid/root/internal/SuTransport$SuRootResponse;)Z
    .locals 1
    .param p0, "x0"    # Lledroid/root/internal/SuTransport$SuRootResponse;

    .prologue
    .line 78
    iget-boolean v0, p0, Lledroid/root/internal/SuTransport$SuRootResponse;->mSuOk:Z

    return v0
.end method


# virtual methods
.method public onShellCommandResponse(ILjava/lang/String;)V
    .locals 3
    .param p1, "exeId"    # I
    .param p2, "reply"    # Ljava/lang/String;

    .prologue
    .line 87
    packed-switch p1, :pswitch_data_0

    .line 99
    const-string v0, "SuShellTransport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CommandResponse: unkown exeId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 90
    :pswitch_0
    const-string/jumbo v0, "not allowed to su"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "permission denied"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lledroid/root/internal/SuTransport$SuRootResponse;->mSuOk:Z

    goto :goto_0

    .line 93
    :cond_2
    const-string/jumbo v0, "uid=0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lledroid/root/internal/SuTransport$SuRootResponse;->mSuOk:Z

    goto :goto_0

    .line 87
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

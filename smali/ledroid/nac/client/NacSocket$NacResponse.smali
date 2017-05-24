.class final Lledroid/nac/client/NacSocket$NacResponse;
.super Ljava/lang/Object;
.source "NacSocket.java"

# interfaces
.implements Lledroid/nac/client/RootSocketResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lledroid/nac/client/NacSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NacResponse"
.end annotation


# instance fields
.field private mSuccessful:Z


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    const/4 v0, 0x0

    iput-boolean v0, p0, Lledroid/nac/client/NacSocket$NacResponse;->mSuccessful:Z

    .line 232
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "success"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    const/4 v0, 0x1

    iput-boolean v0, p0, Lledroid/nac/client/NacSocket$NacResponse;->mSuccessful:Z

    .line 235
    :cond_0
    return-void
.end method


# virtual methods
.method public isSuccessful()Z
    .locals 1

    .prologue
    .line 239
    iget-boolean v0, p0, Lledroid/nac/client/NacSocket$NacResponse;->mSuccessful:Z

    return v0
.end method

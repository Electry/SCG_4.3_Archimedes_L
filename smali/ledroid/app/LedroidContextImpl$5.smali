.class final Lledroid/app/LedroidContextImpl$5;
.super Lledroid/app/LedroidContextImpl$LedroidServiceFetcher;
.source "LedroidContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lledroid/app/LedroidContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lledroid/app/LedroidContextImpl$LedroidServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createLedroidService(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    new-instance v0, Lledroid/root/ShellTerminalController;

    invoke-direct {v0, p1}, Lledroid/root/ShellTerminalController;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

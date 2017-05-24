.class public Lcom/lenovo/scg/gallery3d/util/Profile;
.super Ljava/lang/Object;
.source "Profile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/util/Profile$1;,
        Lcom/lenovo/scg/gallery3d/util/Profile$Watchdog;,
        Lcom/lenovo/scg/gallery3d/util/Profile$WatchEntry;
    }
.end annotation


# static fields
.field private static final NS_PER_MS:I = 0xf4240

.field private static final TAG:Ljava/lang/String; = "Profile"

.field private static sWatchdog:Lcom/lenovo/scg/gallery3d/util/Profile$Watchdog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lcom/lenovo/scg/gallery3d/util/Profile$Watchdog;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/util/Profile$Watchdog;-><init>()V

    sput-object v0, Lcom/lenovo/scg/gallery3d/util/Profile;->sWatchdog:Lcom/lenovo/scg/gallery3d/util/Profile$Watchdog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method public static commit()V
    .locals 2

    .prologue
    .line 231
    sget-object v0, Lcom/lenovo/scg/gallery3d/util/Profile;->sWatchdog:Lcom/lenovo/scg/gallery3d/util/Profile$Watchdog;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/util/Profile$Watchdog;->commit(Ljava/lang/Thread;)V

    .line 232
    return-void
.end method

.method public static disable()V
    .locals 2

    .prologue
    .line 205
    sget-object v0, Lcom/lenovo/scg/gallery3d/util/Profile;->sWatchdog:Lcom/lenovo/scg/gallery3d/util/Profile$Watchdog;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/util/Profile$Watchdog;->removeWatchEntry(Ljava/lang/Thread;)V

    .line 206
    return-void
.end method

.method public static disableAll()V
    .locals 1

    .prologue
    .line 210
    sget-object v0, Lcom/lenovo/scg/gallery3d/util/Profile;->sWatchdog:Lcom/lenovo/scg/gallery3d/util/Profile$Watchdog;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/util/Profile$Watchdog;->removeAllWatchEntries()V

    .line 211
    return-void
.end method

.method public static drop()V
    .locals 2

    .prologue
    .line 235
    sget-object v0, Lcom/lenovo/scg/gallery3d/util/Profile;->sWatchdog:Lcom/lenovo/scg/gallery3d/util/Profile$Watchdog;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/util/Profile$Watchdog;->drop(Ljava/lang/Thread;)V

    .line 236
    return-void
.end method

.method public static dumpToFile(Ljava/lang/String;)V
    .locals 1
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 215
    sget-object v0, Lcom/lenovo/scg/gallery3d/util/Profile;->sWatchdog:Lcom/lenovo/scg/gallery3d/util/Profile$Watchdog;

    invoke-virtual {v0, p0}, Lcom/lenovo/scg/gallery3d/util/Profile$Watchdog;->dumpToFile(Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method public static enable(I)V
    .locals 2
    .param p0, "cycleTimeInMs"    # I

    .prologue
    .line 199
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 200
    .local v0, "t":Ljava/lang/Thread;
    sget-object v1, Lcom/lenovo/scg/gallery3d/util/Profile;->sWatchdog:Lcom/lenovo/scg/gallery3d/util/Profile$Watchdog;

    invoke-virtual {v1, v0, p0}, Lcom/lenovo/scg/gallery3d/util/Profile$Watchdog;->addWatchEntry(Ljava/lang/Thread;I)V

    .line 201
    return-void
.end method

.method public static hold()V
    .locals 2

    .prologue
    .line 227
    sget-object v0, Lcom/lenovo/scg/gallery3d/util/Profile;->sWatchdog:Lcom/lenovo/scg/gallery3d/util/Profile$Watchdog;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/util/Profile$Watchdog;->hold(Ljava/lang/Thread;)V

    .line 228
    return-void
.end method

.method public static reset()V
    .locals 1

    .prologue
    .line 220
    sget-object v0, Lcom/lenovo/scg/gallery3d/util/Profile;->sWatchdog:Lcom/lenovo/scg/gallery3d/util/Profile$Watchdog;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/util/Profile$Watchdog;->reset()V

    .line 221
    return-void
.end method

.class Lcom/lenovo/scg/gallery3d/util/Profile$Watchdog;
.super Ljava/lang/Object;
.source "Profile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/util/Profile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Watchdog"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/util/Profile$WatchEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mProcessRunnable:Ljava/lang/Runnable;

.field private mProfileData:Lcom/lenovo/scg/gallery3d/util/ProfileData;

.field private mRandom:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/util/Profile$Watchdog;->mList:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Lcom/lenovo/scg/gallery3d/util/Profile$Watchdog$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/util/Profile$Watchdog$1;-><init>(Lcom/lenovo/scg/gallery3d/util/Profile$Watchdog;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/util/Profile$Watchdog;->mProcessRunnable:Ljava/lang/Runnable;

    .line 78
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/util/Profile$Watchdog;->mRandom:Ljava/util/Random;

    .line 80
    new-instance v0, Lcom/lenovo/scg/gallery3d/util/ProfileData;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/util/ProfileData;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/util/Profile$Watchdog;->mProfileData:Lcom/lenovo/scg/gallery3d/util/ProfileData;

    .line 83
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Watchdog Handler"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/util/Profile$Watchdog;->mHandlerThread:Landroid/os/HandlerThread;

    .line 84
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/util/Profile$Watchdog;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 85
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/util/Profile$Watchdog;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/util/Profile$Watchdog;->mHandler:Landroid/os/Handler;

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/util/Profile$Watchdog;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/util/Profile$Watchdog;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/util/Profile$Watchdog;->processList()V

    return-void
.end method

.method private findEntry(Ljava/lang/Thread;)Lcom/lenovo/scg/gallery3d/util/Profile$WatchEntry;
    .locals 3
    .param p1, "thread"    # Ljava/lang/Thread;

    .prologue
    .line 151
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/util/Profile$Watchdog;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 152
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/util/Profile$Watchdog;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/util/Profile$WatchEntry;

    .line 153
    .local v0, "entry":Lcom/lenovo/scg/gallery3d/util/Profile$WatchEntry;
    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/util/Profile$WatchEntry;->thread:Ljava/lang/Thread;

    if-ne v2, p1, :cond_0

    .line 155
    .end local v0    # "entry":Lcom/lenovo/scg/gallery3d/util/Profile$WatchEntry;
    :goto_1
    return-object v0

    .line 151
    .restart local v0    # "entry":Lcom/lenovo/scg/gallery3d/util/Profile$WatchEntry;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 155
    .end local v0    # "entry":Lcom/lenovo/scg/gallery3d/util/Profile$WatchEntry;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private processList()V
    .locals 12

    .prologue
    .line 114
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/util/Profile$Watchdog;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/util/Profile$Watchdog;->mProcessRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 115
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/util/Profile$Watchdog;->mList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_0

    .line 134
    :goto_0
    return-void

    .line 117
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    const-wide/32 v10, 0xf4240

    div-long/2addr v8, v10

    long-to-int v0, v8

    .line 118
    .local v0, "currentTime":I
    const/4 v5, 0x0

    .line 120
    .local v5, "nextWakeTime":I
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/util/Profile$Watchdog;->mList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/util/Profile$WatchEntry;

    .line 121
    .local v1, "entry":Lcom/lenovo/scg/gallery3d/util/Profile$WatchEntry;
    iget v7, v1, Lcom/lenovo/scg/gallery3d/util/Profile$WatchEntry;->wakeTime:I

    if-le v0, v7, :cond_2

    .line 122
    iget v7, v1, Lcom/lenovo/scg/gallery3d/util/Profile$WatchEntry;->wakeTime:I

    iget v8, v1, Lcom/lenovo/scg/gallery3d/util/Profile$WatchEntry;->cycleTime:I

    add-int/2addr v7, v8

    iput v7, v1, Lcom/lenovo/scg/gallery3d/util/Profile$WatchEntry;->wakeTime:I

    .line 123
    iget-object v6, v1, Lcom/lenovo/scg/gallery3d/util/Profile$WatchEntry;->thread:Ljava/lang/Thread;

    .line 124
    .local v6, "thread":Ljava/lang/Thread;
    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/util/Profile$Watchdog;->sampleStack(Lcom/lenovo/scg/gallery3d/util/Profile$WatchEntry;)V

    .line 127
    .end local v6    # "thread":Ljava/lang/Thread;
    :cond_2
    iget v7, v1, Lcom/lenovo/scg/gallery3d/util/Profile$WatchEntry;->wakeTime:I

    if-le v7, v5, :cond_1

    .line 128
    iget v5, v1, Lcom/lenovo/scg/gallery3d/util/Profile$WatchEntry;->wakeTime:I

    goto :goto_1

    .line 132
    .end local v1    # "entry":Lcom/lenovo/scg/gallery3d/util/Profile$WatchEntry;
    :cond_3
    sub-int v7, v5, v0

    int-to-long v2, v7

    .line 133
    .local v2, "delay":J
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/util/Profile$Watchdog;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/util/Profile$Watchdog;->mProcessRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private sampleStack(Lcom/lenovo/scg/gallery3d/util/Profile$WatchEntry;)V
    .locals 5
    .param p1, "entry"    # Lcom/lenovo/scg/gallery3d/util/Profile$WatchEntry;

    .prologue
    .line 137
    iget-object v3, p1, Lcom/lenovo/scg/gallery3d/util/Profile$WatchEntry;->thread:Ljava/lang/Thread;

    .line 138
    .local v3, "thread":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 139
    .local v2, "stack":[Ljava/lang/StackTraceElement;
    array-length v4, v2

    new-array v1, v4, [Ljava/lang/String;

    .line 140
    .local v1, "lines":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_0

    .line 141
    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    :cond_0
    iget-boolean v4, p1, Lcom/lenovo/scg/gallery3d/util/Profile$WatchEntry;->isHolding:Z

    if-eqz v4, :cond_1

    .line 144
    iget-object v4, p1, Lcom/lenovo/scg/gallery3d/util/Profile$WatchEntry;->holdingStacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    :goto_1
    return-void

    .line 146
    :cond_1
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/util/Profile$Watchdog;->mProfileData:Lcom/lenovo/scg/gallery3d/util/ProfileData;

    invoke-virtual {v4, v1}, Lcom/lenovo/scg/gallery3d/util/ProfileData;->addSample([Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized addWatchEntry(Ljava/lang/Thread;I)V
    .locals 6
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "cycleTime"    # I

    .prologue
    .line 89
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/lenovo/scg/gallery3d/util/Profile$WatchEntry;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/lenovo/scg/gallery3d/util/Profile$WatchEntry;-><init>(Lcom/lenovo/scg/gallery3d/util/Profile$1;)V

    .line 90
    .local v0, "e":Lcom/lenovo/scg/gallery3d/util/Profile$WatchEntry;
    iput-object p1, v0, Lcom/lenovo/scg/gallery3d/util/Profile$WatchEntry;->thread:Ljava/lang/Thread;

    .line 91
    iput p2, v0, Lcom/lenovo/scg/gallery3d/util/Profile$WatchEntry;->cycleTime:I

    .line 92
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/util/Profile$Watchdog;->mRandom:Ljava/util/Random;

    invoke-virtual {v2, p2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .line 93
    .local v1, "firstDelay":I
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v2, v1

    iput v2, v0, Lcom/lenovo/scg/gallery3d/util/Profile$WatchEntry;->wakeTime:I

    .line 94
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/util/Profile$Watchdog;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/util/Profile$Watchdog;->processList()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    monitor-exit p0

    return-void

    .line 89
    .end local v0    # "e":Lcom/lenovo/scg/gallery3d/util/Profile$WatchEntry;
    .end local v1    # "firstDelay":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized commit(Ljava/lang/Thread;)V
    .locals 5
    .param p1, "t"    # Ljava/lang/Thread;

    .prologue
    .line 178
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/util/Profile$Watchdog;->findEntry(Ljava/lang/Thread;)Lcom/lenovo/scg/gallery3d/util/Profile$WatchEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 179
    .local v0, "entry":Lcom/lenovo/scg/gallery3d/util/Profile$WatchEntry;
    if-nez v0, :cond_0

    .line 186
    :goto_0
    monitor-exit p0

    return-void

    .line 180
    :cond_0
    :try_start_1
    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/util/Profile$WatchEntry;->holdingStacks:Ljava/util/ArrayList;

    .line 181
    .local v2, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 182
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/util/Profile$Watchdog;->mProfileData:Lcom/lenovo/scg/gallery3d/util/ProfileData;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/lenovo/scg/gallery3d/util/ProfileData;->addSample([Ljava/lang/String;)V

    .line 181
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 184
    :cond_1
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/lenovo/scg/gallery3d/util/Profile$WatchEntry;->isHolding:Z

    .line 185
    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/util/Profile$WatchEntry;->holdingStacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 178
    .end local v0    # "entry":Lcom/lenovo/scg/gallery3d/util/Profile$WatchEntry;
    .end local v1    # "i":I
    .end local v2    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized drop(Ljava/lang/Thread;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Thread;

    .prologue
    .line 189
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/util/Profile$Watchdog;->findEntry(Ljava/lang/Thread;)Lcom/lenovo/scg/gallery3d/util/Profile$WatchEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 190
    .local v0, "entry":Lcom/lenovo/scg/gallery3d/util/Profile$WatchEntry;
    if-nez v0, :cond_0

    .line 193
    :goto_0
    monitor-exit p0

    return-void

    .line 191
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, v0, Lcom/lenovo/scg/gallery3d/util/Profile$WatchEntry;->isHolding:Z

    .line 192
    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/util/Profile$WatchEntry;->holdingStacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 189
    .end local v0    # "entry":Lcom/lenovo/scg/gallery3d/util/Profile$WatchEntry;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized dumpToFile(Ljava/lang/String;)V
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 159
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/util/Profile$Watchdog;->mProfileData:Lcom/lenovo/scg/gallery3d/util/ProfileData;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/util/ProfileData;->dumpToFile(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    monitor-exit p0

    return-void

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hold(Ljava/lang/Thread;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Thread;

    .prologue
    .line 167
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/util/Profile$Watchdog;->findEntry(Ljava/lang/Thread;)Lcom/lenovo/scg/gallery3d/util/Profile$WatchEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 172
    .local v0, "entry":Lcom/lenovo/scg/gallery3d/util/Profile$WatchEntry;
    if-nez v0, :cond_0

    .line 175
    :goto_0
    monitor-exit p0

    return-void

    .line 174
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, v0, Lcom/lenovo/scg/gallery3d/util/Profile$WatchEntry;->isHolding:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 167
    .end local v0    # "entry":Lcom/lenovo/scg/gallery3d/util/Profile$WatchEntry;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized removeAllWatchEntries()V
    .locals 1

    .prologue
    .line 109
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/util/Profile$Watchdog;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 110
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/util/Profile$Watchdog;->processList()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    monitor-exit p0

    return-void

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeWatchEntry(Ljava/lang/Thread;)V
    .locals 2
    .param p1, "thread"    # Ljava/lang/Thread;

    .prologue
    .line 99
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/util/Profile$Watchdog;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/util/Profile$Watchdog;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/util/Profile$WatchEntry;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/util/Profile$WatchEntry;->thread:Ljava/lang/Thread;

    if-ne v1, p1, :cond_1

    .line 101
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/util/Profile$Watchdog;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 105
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/util/Profile$Watchdog;->processList()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    monitor-exit p0

    return-void

    .line 99
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized reset()V
    .locals 1

    .prologue
    .line 163
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/util/Profile$Watchdog;->mProfileData:Lcom/lenovo/scg/gallery3d/util/ProfileData;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/util/ProfileData;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    monitor-exit p0

    return-void

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

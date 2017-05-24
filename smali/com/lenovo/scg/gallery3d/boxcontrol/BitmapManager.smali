.class public Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager;
.super Ljava/lang/Object;
.source "BitmapManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager$1;,
        Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager$ThreadStatus;,
        Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BitmapManager"

.field private static sManager:Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager;


# instance fields
.field private final mThreadStatus:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Thread;",
            "Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager$ThreadStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager;->sManager:Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager;->mThreadStatus:Ljava/util/WeakHashMap;

    .line 86
    return-void
.end method

.method private declared-synchronized getOrCreateThreadStatus(Ljava/lang/Thread;)Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager$ThreadStatus;
    .locals 2
    .param p1, "t"    # Ljava/lang/Thread;

    .prologue
    .line 185
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager;->mThreadStatus:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager$ThreadStatus;

    .line 186
    .local v0, "status":Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager$ThreadStatus;
    if-nez v0, :cond_0

    .line 187
    new-instance v0, Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager$ThreadStatus;

    .end local v0    # "status":Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager$ThreadStatus;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager$ThreadStatus;-><init>(Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager$1;)V

    .line 188
    .restart local v0    # "status":Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager$ThreadStatus;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager;->mThreadStatus:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    :cond_0
    monitor-exit p0

    return-object v0

    .line 185
    .end local v0    # "status":Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager$ThreadStatus;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public static declared-synchronized instance()Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager;
    .locals 2

    .prologue
    .line 77
    const-class v1, Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager;->sManager:Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager;-><init>()V

    sput-object v0, Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager;->sManager:Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager;

    .line 80
    :cond_0
    sget-object v0, Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager;->sManager:Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized setDecodingOptions(Ljava/lang/Thread;Landroid/graphics/BitmapFactory$Options;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 198
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager;->getOrCreateThreadStatus(Ljava/lang/Thread;)Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager$ThreadStatus;

    move-result-object v0

    iput-object p2, v0, Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager$ThreadStatus;->mOptions:Landroid/graphics/BitmapFactory$Options;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    monitor-exit p0

    return-void

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized allowThreadDecoding(Ljava/lang/Thread;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Thread;

    .prologue
    .line 89
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager;->getOrCreateThreadStatus(Ljava/lang/Thread;)Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager$ThreadStatus;

    move-result-object v0

    sget-object v1, Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager$State;->ALLOW:Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager$State;

    iput-object v1, v0, Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager$ThreadStatus;->mState:Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    monitor-exit p0

    return-void

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized canThreadDecoding(Ljava/lang/Thread;)Z
    .locals 4
    .param p1, "t"    # Ljava/lang/Thread;

    .prologue
    const/4 v0, 0x1

    .line 124
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager;->mThreadStatus:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager$ThreadStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    .local v1, "status":Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager$ThreadStatus;
    if-nez v1, :cond_0

    .line 131
    :goto_0
    monitor-exit p0

    return v0

    .line 130
    :cond_0
    :try_start_1
    iget-object v2, v1, Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager$ThreadStatus;->mState:Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager$State;

    sget-object v3, Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager$State;->CANCEL:Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager$State;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v2, v3, :cond_1

    .line 131
    .local v0, "result":Z
    :goto_1
    goto :goto_0

    .line 130
    .end local v0    # "result":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 124
    .end local v1    # "status":Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager$ThreadStatus;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized cancelThreadDecoding(Ljava/lang/Thread;Landroid/content/ContentResolver;)V
    .locals 6
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 93
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager;->getOrCreateThreadStatus(Ljava/lang/Thread;)Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager$ThreadStatus;

    move-result-object v0

    .line 94
    .local v0, "status":Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager$ThreadStatus;
    sget-object v1, Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager$State;->CANCEL:Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager$State;

    iput-object v1, v0, Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager$ThreadStatus;->mState:Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager$State;

    .line 95
    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager$ThreadStatus;->mOptions:Landroid/graphics/BitmapFactory$Options;

    if-eqz v1, :cond_0

    .line 96
    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager$ThreadStatus;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v1}, Landroid/graphics/BitmapFactory$Options;->requestCancelDecode()V

    .line 100
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 107
    :try_start_1
    monitor-enter v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 108
    :goto_0
    :try_start_2
    iget-boolean v1, v0, Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager$ThreadStatus;->mThumbRequesting:Z

    if-eqz v1, :cond_1

    .line 109
    const-wide/16 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {p2, v2, v3, v4, v5}, Landroid/provider/MediaStore$Images$Thumbnails;->cancelThumbnailRequest(Landroid/content/ContentResolver;JJ)V

    .line 110
    const-wide/16 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {p2, v2, v3, v4, v5}, Landroid/provider/MediaStore$Video$Thumbnails;->cancelThumbnailRequest(Landroid/content/ContentResolver;JJ)V

    .line 111
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V

    goto :goto_0

    .line 113
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 114
    :catch_0
    move-exception v1

    .line 117
    :goto_1
    monitor-exit p0

    return-void

    .line 113
    :cond_1
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 93
    .end local v0    # "status":Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager$ThreadStatus;
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    const/4 v0, 0x0

    .line 138
    iget-boolean v2, p2, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-eqz v2, :cond_0

    .line 152
    :goto_0
    return-object v0

    .line 142
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 143
    .local v1, "thread":Ljava/lang/Thread;
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager;->canThreadDecoding(Ljava/lang/Thread;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 144
    const-string v2, "BitmapManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Thread "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not allowed to decode."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 148
    :cond_1
    invoke-direct {p0, v1, p2}, Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager;->setDecodingOptions(Ljava/lang/Thread;Landroid/graphics/BitmapFactory$Options;)V

    .line 149
    invoke-static {p1, v0, p2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 151
    .local v0, "b":Landroid/graphics/Bitmap;
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager;->removeDecodingOptions(Ljava/lang/Thread;)V

    goto :goto_0
.end method

.method public getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "origId"    # J
    .param p4, "kind"    # I
    .param p5, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p6, "isVideo"    # Z

    .prologue
    const/4 v1, 0x0

    .line 156
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    .line 157
    .local v8, "t":Ljava/lang/Thread;
    invoke-direct {p0, v8}, Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager;->getOrCreateThreadStatus(Ljava/lang/Thread;)Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager$ThreadStatus;

    move-result-object v0

    .line 159
    .local v0, "status":Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager$ThreadStatus;
    invoke-virtual {p0, v8}, Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager;->canThreadDecoding(Ljava/lang/Thread;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 160
    const-string v2, "BitmapManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Thread "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not allowed to decode."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :goto_0
    return-object v1

    .line 165
    :cond_0
    :try_start_0
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 166
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, v0, Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager$ThreadStatus;->mThumbRequesting:Z

    .line 167
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 168
    if-eqz p6, :cond_1

    .line 169
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    const/4 v7, 0x0

    move-object v1, p1

    move-wide v2, p2

    move v6, p4

    invoke-static/range {v1 .. v7}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JJILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v1

    .line 174
    monitor-enter v0

    .line 175
    const/4 v2, 0x0

    :try_start_3
    iput-boolean v2, v0, Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager$ThreadStatus;->mThumbRequesting:Z

    .line 176
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 177
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 167
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 174
    :catchall_2
    move-exception v1

    monitor-enter v0

    .line 175
    const/4 v2, 0x0

    :try_start_6
    iput-boolean v2, v0, Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager$ThreadStatus;->mThumbRequesting:Z

    .line 176
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 177
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw v1

    .line 171
    :cond_1
    :try_start_7
    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    const/4 v7, 0x0

    move-object v1, p1

    move-wide v2, p2

    move v6, p4

    invoke-static/range {v1 .. v7}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JJILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result-object v1

    .line 174
    monitor-enter v0

    .line 175
    const/4 v2, 0x0

    :try_start_8
    iput-boolean v2, v0, Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager$ThreadStatus;->mThumbRequesting:Z

    .line 176
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 177
    monitor-exit v0

    goto :goto_0

    :catchall_3
    move-exception v1

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v1

    :catchall_4
    move-exception v1

    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v1
.end method

.method declared-synchronized removeDecodingOptions(Ljava/lang/Thread;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Thread;

    .prologue
    .line 202
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager;->mThreadStatus:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager$ThreadStatus;

    .line 203
    .local v0, "status":Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager$ThreadStatus;
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager$ThreadStatus;->mOptions:Landroid/graphics/BitmapFactory$Options;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    monitor-exit p0

    return-void

    .line 202
    .end local v0    # "status":Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager$ThreadStatus;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

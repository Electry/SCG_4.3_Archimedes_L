.class Lcom/lenovo/scg/camera/mode/VideoMode$VideoNamer;
.super Ljava/lang/Thread;
.source "VideoMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/mode/VideoMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VideoNamer"
.end annotation


# instance fields
.field private mRequestPending:Z

.field private mResolver:Landroid/content/ContentResolver;

.field private mStop:Z

.field private mUri:Landroid/net/Uri;

.field private mValues:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 459
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 460
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/VideoMode$VideoNamer;->start()V

    .line 461
    return-void
.end method

.method private cleanOldUri()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 465
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode$VideoNamer;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 471
    :goto_0
    return-void

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode$VideoNamer;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/VideoMode$VideoNamer;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 470
    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/VideoMode$VideoNamer;->mUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method private generateUri()V
    .locals 3

    .prologue
    .line 481
    const-string v1, "content://media/external/video/media"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 482
    .local v0, "videoTable":Landroid/net/Uri;
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/VideoMode$VideoNamer;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/VideoMode$VideoNamer;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/mode/VideoMode$VideoNamer;->mUri:Landroid/net/Uri;

    .line 483
    return-void
.end method


# virtual methods
.method public declared-synchronized finish()V
    .locals 1

    .prologue
    .line 475
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode$VideoNamer;->mStop:Z

    .line 476
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 477
    monitor-exit p0

    return-void

    .line 475
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 488
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/lenovo/scg/camera/mode/VideoMode$VideoNamer;->mRequestPending:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 490
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 491
    :catch_0
    move-exception v1

    goto :goto_0

    .line 495
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode$VideoNamer;->mUri:Landroid/net/Uri;

    .line 496
    .local v0, "uri":Landroid/net/Uri;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lenovo/scg/camera/mode/VideoMode$VideoNamer;->mUri:Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 497
    monitor-exit p0

    return-object v0

    .line 488
    .end local v0    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized prepareUri(Landroid/content/ContentResolver;Landroid/content/ContentValues;)V
    .locals 1
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 503
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode$VideoNamer;->mRequestPending:Z

    .line 504
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/VideoMode$VideoNamer;->mResolver:Landroid/content/ContentResolver;

    .line 505
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode$VideoNamer;->mValues:Landroid/content/ContentValues;

    .line 506
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 507
    monitor-exit p0

    return-void

    .line 503
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized run()V
    .locals 1

    .prologue
    .line 514
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode$VideoNamer;->mStop:Z

    if-eqz v0, :cond_0

    .line 529
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/VideoMode$VideoNamer;->cleanOldUri()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 530
    monitor-exit p0

    return-void

    .line 516
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode$VideoNamer;->mRequestPending:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 518
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 519
    :catch_0
    move-exception v0

    goto :goto_0

    .line 524
    :cond_1
    :try_start_3
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/VideoMode$VideoNamer;->cleanOldUri()V

    .line 525
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/VideoMode$VideoNamer;->generateUri()V

    .line 526
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode$VideoNamer;->mRequestPending:Z

    .line 527
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 514
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

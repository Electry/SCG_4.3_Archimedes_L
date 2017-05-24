.class Lcom/lenovo/scg/photos/data/MediaCache$3;
.super Ljava/lang/Object;
.source "MediaCache.java"

# interfaces
.implements Lcom/lenovo/scg/photos/data/MediaCacheDatabase$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/photos/data/MediaCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/photos/data/MediaCache;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/photos/data/MediaCache;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lcom/lenovo/scg/photos/data/MediaCache$3;->this$0:Lcom/lenovo/scg/photos/data/MediaCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Landroid/net/Uri;JLcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;Ljava/lang/Object;)V
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "id"    # J
    .param p4, "size"    # Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;
    .param p5, "parameter"    # Ljava/lang/Object;

    .prologue
    .line 261
    iget-object v1, p0, Lcom/lenovo/scg/photos/data/MediaCache$3;->this$0:Lcom/lenovo/scg/photos/data/MediaCache;

    # invokes: Lcom/lenovo/scg/photos/data/MediaCache;->createCacheImagePath(J)Ljava/io/File;
    invoke-static {v1, p2, p3}, Lcom/lenovo/scg/photos/data/MediaCache;->access$200(Lcom/lenovo/scg/photos/data/MediaCache;J)Ljava/io/File;

    move-result-object v0

    .line 262
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 263
    iget-object v1, p0, Lcom/lenovo/scg/photos/data/MediaCache$3;->this$0:Lcom/lenovo/scg/photos/data/MediaCache;

    # getter for: Lcom/lenovo/scg/photos/data/MediaCache;->mCacheSizeLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/lenovo/scg/photos/data/MediaCache;->access$400(Lcom/lenovo/scg/photos/data/MediaCache;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 264
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/scg/photos/data/MediaCache$3;->this$0:Lcom/lenovo/scg/photos/data/MediaCache;

    # getter for: Lcom/lenovo/scg/photos/data/MediaCache;->mCacheSize:J
    invoke-static {v1}, Lcom/lenovo/scg/photos/data/MediaCache;->access$500(Lcom/lenovo/scg/photos/data/MediaCache;)J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v1, v6, v8

    if-eqz v1, :cond_0

    .line 265
    check-cast p5, Ljava/lang/Long;

    .end local p5    # "parameter":Ljava/lang/Object;
    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 266
    .local v2, "length":J
    iget-object v1, p0, Lcom/lenovo/scg/photos/data/MediaCache$3;->this$0:Lcom/lenovo/scg/photos/data/MediaCache;

    # -= operator for: Lcom/lenovo/scg/photos/data/MediaCache;->mCacheSize:J
    invoke-static {v1, v2, v3}, Lcom/lenovo/scg/photos/data/MediaCache;->access$522(Lcom/lenovo/scg/photos/data/MediaCache;J)J

    .line 267
    sget-object v1, Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;->Thumbnail:Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;

    if-ne p4, v1, :cond_0

    .line 268
    iget-object v1, p0, Lcom/lenovo/scg/photos/data/MediaCache$3;->this$0:Lcom/lenovo/scg/photos/data/MediaCache;

    # -= operator for: Lcom/lenovo/scg/photos/data/MediaCache;->mThumbCacheSize:J
    invoke-static {v1, v2, v3}, Lcom/lenovo/scg/photos/data/MediaCache;->access$622(Lcom/lenovo/scg/photos/data/MediaCache;J)J

    .line 271
    .end local v2    # "length":J
    :cond_0
    monitor-exit v4

    .line 272
    return-void

    .line 271
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

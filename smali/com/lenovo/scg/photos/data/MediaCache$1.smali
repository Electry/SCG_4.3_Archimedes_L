.class Lcom/lenovo/scg/photos/data/MediaCache$1;
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
    .line 237
    iput-object p1, p0, Lcom/lenovo/scg/photos/data/MediaCache$1;->this$0:Lcom/lenovo/scg/photos/data/MediaCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Landroid/net/Uri;JLcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;Ljava/lang/Object;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "id"    # J
    .param p4, "size"    # Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;
    .param p5, "parameter"    # Ljava/lang/Object;

    .prologue
    .line 241
    move-object v1, p5

    check-cast v1, Lcom/lenovo/scg/photos/data/MediaCache$ProcessingJob;

    .line 242
    .local v1, "job":Lcom/lenovo/scg/photos/data/MediaCache$ProcessingJob;
    iget-object v2, p0, Lcom/lenovo/scg/photos/data/MediaCache$1;->this$0:Lcom/lenovo/scg/photos/data/MediaCache;

    # invokes: Lcom/lenovo/scg/photos/data/MediaCache;->createCacheImagePath(J)Ljava/io/File;
    invoke-static {v2, p2, p3}, Lcom/lenovo/scg/photos/data/MediaCache;->access$200(Lcom/lenovo/scg/photos/data/MediaCache;J)Ljava/io/File;

    move-result-object v0

    .line 243
    .local v0, "file":Ljava/io/File;
    iget-object v2, p0, Lcom/lenovo/scg/photos/data/MediaCache$1;->this$0:Lcom/lenovo/scg/photos/data/MediaCache;

    iget-object v3, v1, Lcom/lenovo/scg/photos/data/MediaCache$ProcessingJob;->lowResolution:Lcom/lenovo/scg/photos/data/MediaCache$NotifyImageReady;

    # invokes: Lcom/lenovo/scg/photos/data/MediaCache;->addNotification(Lcom/lenovo/scg/photos/data/MediaCache$NotifyReady;Ljava/io/File;)V
    invoke-static {v2, v3, v0}, Lcom/lenovo/scg/photos/data/MediaCache;->access$300(Lcom/lenovo/scg/photos/data/MediaCache;Lcom/lenovo/scg/photos/data/MediaCache$NotifyReady;Ljava/io/File;)V

    .line 244
    return-void
.end method

.class Lcom/lenovo/scg/photos/data/MediaCache$2;
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
    .line 247
    iput-object p1, p0, Lcom/lenovo/scg/photos/data/MediaCache$2;->this$0:Lcom/lenovo/scg/photos/data/MediaCache;

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
    .line 251
    move-object v1, p5

    check-cast v1, Ljava/io/File;

    .line 252
    .local v1, "tempFile":Ljava/io/File;
    iget-object v2, p0, Lcom/lenovo/scg/photos/data/MediaCache$2;->this$0:Lcom/lenovo/scg/photos/data/MediaCache;

    # invokes: Lcom/lenovo/scg/photos/data/MediaCache;->createCacheImagePath(J)Ljava/io/File;
    invoke-static {v2, p2, p3}, Lcom/lenovo/scg/photos/data/MediaCache;->access$200(Lcom/lenovo/scg/photos/data/MediaCache;J)Ljava/io/File;

    move-result-object v0

    .line 253
    .local v0, "cacheFile":Ljava/io/File;
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 254
    return-void
.end method
